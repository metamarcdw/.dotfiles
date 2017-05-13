# -*- coding: utf-8 -*-

# Copyright (c) 2013 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing the Django project support.
"""

from __future__ import unicode_literals
try:
    str = unicode    # __IGNORE_WARNING__
except NameError:
    pass

import sys
import os
import re
import shutil

from PyQt5.QtCore import QObject, QTimer, QUrl, QFileInfo
from PyQt5.QtGui import QDesktopServices
from PyQt5.QtWidgets import QMenu, QInputDialog, QLineEdit, QDialog
from PyQt5.QtCore import QProcess as QProcessPyQt

from E5Gui.E5Application import e5App
from E5Gui import E5MessageBox, E5FileDialog
from E5Gui.E5Action import E5Action

from Globals import isWindowsPlatform

from .DjangoDialog import DjangoDialog

import Preferences
import Utilities
import UI.PixmapCache


class DjangoNoSiteSelectedException(Exception):
    """
    Exception thrown to signal, that there is no current site.
    """
    pass


class QProcess(QProcessPyQt):
    """
    Class transforming the call arguments in case of gnome-terminal.
    """
    def start(self, cmd, args=None, mode=QProcessPyQt.ReadWrite):
        """
        Public method to start the given program (cmd) in a new process, if
        none is already running, passing the command line arguments in args.
        
        @param cmd start the given program cmd (string)
        @keyparam args list of parameters (list of strings)
        @keyparam mode access mode (QIODevice.OpenMode)
        """
        if args is None:
            args = []
        
        if cmd.endswith(('gnome-terminal', 'konsole', 'xfce4-terminal',
                         'mate-terminal')):
            if '-e' in args:
                index = args.index('-e') + 1
                cargs = ' '.join(args[index:])
                args[index:] = [cargs]
        
        super(QProcess, self).start(cmd, args, mode)
    
    @staticmethod
    def startDetached(cmd, args=None, path=''):
        """
        Public static method to start the given program (cmd) in a new process,
        if none is already running, passing the command line arguments in args.
        
        @param cmd start the given program cmd (string)
        @keyparam args list of parameters (list of strings)
        @keyparam path new working directory (string)
        @return tuple of successful start and process id (boolean, integer)
        """
        if args is None:
            args = []
        
        if cmd.endswith(('gnome-terminal', 'konsole', 'xfce4-terminal',
                         'mate-terminal')):
            if '-e' in args:
                index = args.index('-e') + 1
                cargs = ' '.join(args[index:])
                args[index:] = [cargs]
        
        return QProcessPyQt.startDetached(cmd, args, path)


class Project(QObject):
    """
    Class implementing the Django project support.
    """
    RecentApplicationsKey = "Django/RecentApplications"
    
    def __init__(self, plugin, parent=None):
        """
        Constructor
        
        @param plugin reference to the plugin object
        @param parent parent (QObject)
        """
        super(Project, self).__init__(parent)
        
        self.__plugin = plugin
        self.__ui = parent
        self.__e5project = e5App().getObject("Project")
        self.__hooksInstalled = False
        
        self.__menus = {}   # dictionary with references to menus
        
        self.__serverProc = None
        self.__testServerProc = None
        
        self.__recentApplications = []
        self.__loadRecentApplications()
    
    def initActions(self):
        """
        Public method to define the Django actions.
        """
        self.actions = []
    
        self.selectSiteAct = E5Action(
            self.tr('Current Project'),
            "",
            0, 0,
            self, 'django_current_project')
        self.selectSiteAct.setStatusTip(self.tr(
            'Selects the current project'))
        self.selectSiteAct.setWhatsThis(self.tr(
            """<b>Current Project</b>"""
            """<p>Selects the current project. Used for multi-project """
            """Django projects to switch between the projects.</p>"""
        ))
        self.selectSiteAct.triggered.connect(self.__selectSite)
        self.actions.append(self.selectSiteAct)
        self.__setCurrentSite(None)
        
        ##############################
        ## start actions below      ##
        ##############################
        
        self.startProjectAct = E5Action(
            self.tr('Start Project'),
            self.tr('Start &Project'),
            0, 0,
            self, 'django_start_project')
        self.startProjectAct.setStatusTip(self.tr(
            'Starts a new Django project'))
        self.startProjectAct.setWhatsThis(self.tr(
            """<b>Start Project</b>"""
            """<p>Starts a new Django project using "django-admin.py"""
            """ startproject".</p>"""
        ))
        self.startProjectAct.triggered.connect(self.__startProject)
        self.actions.append(self.startProjectAct)
        
        self.startGlobalApplicationAct = E5Action(
            self.tr('Start Application (global)'),
            self.tr('Start Application (&global)'),
            0, 0,
            self, 'django_start_global_application')
        self.startGlobalApplicationAct.setStatusTip(self.tr(
            'Starts a new global Django application'))
        self.startGlobalApplicationAct.setWhatsThis(self.tr(
            """<b>Start Application (global)</b>"""
            """<p>Starts a new global Django application using"""
            """ "django-admin.py startapp".</p>"""
        ))
        self.startGlobalApplicationAct.triggered.connect(
            self.__startGlobalApplication)
        self.actions.append(self.startGlobalApplicationAct)
        
        self.startLocalApplicationAct = E5Action(
            self.tr('Start Application (local)'),
            self.tr('Start Application (&local)'),
            0, 0,
            self, 'django_start_local_application')
        self.startLocalApplicationAct.setStatusTip(self.tr(
            'Starts a new local Django application'))
        self.startLocalApplicationAct.setWhatsThis(self.tr(
            """<b>Start Application (local)</b>"""
            """<p>Starts a new local Django application using"""
            """ "manage.py startapp".</p>"""
        ))
        self.startLocalApplicationAct.triggered.connect(
            self.__startLocalApplication)
        self.actions.append(self.startLocalApplicationAct)
        
        ##############################
        ## run actions below        ##
        ##############################
        
        self.runServerAct = E5Action(
            self.tr('Run Server'),
            self.tr('Run &Server'),
            0, 0,
            self, 'django_run_server')
        self.runServerAct.setStatusTip(self.tr(
            'Starts the Django Web server'))
        self.runServerAct.setWhatsThis(self.tr(
            """<b>Run Server</b>"""
            """<p>Starts the Django Web server using "manage.py"""
            """ runserver".</p>"""
        ))
        self.runServerAct.triggered.connect(self.__runServer)
        self.actions.append(self.runServerAct)
        
        self.runBrowserAct = E5Action(
            self.tr('Run Web-Browser'),
            self.tr('Run &Web-Browser'),
            0, 0,
            self, 'django_run_browser')
        self.runBrowserAct.setStatusTip(self.tr(
            'Starts the default Web-Browser with the URL of the Django Web'
            ' server'))
        self.runBrowserAct.setWhatsThis(self.tr(
            """<b>Run Web-Browser</b>"""
            """<p>Starts the default Web-Browser with the URL of the """
            """Django Web server.</p>"""
        ))
        self.runBrowserAct.triggered.connect(self.__runBrowser)
        self.actions.append(self.runBrowserAct)
        
        ##############################
        ## caching actions below    ##
        ##############################
        
        self.createCacheTableAct = E5Action(
            self.tr('Create Cache Tables'),
            self.tr('C&reate Cache Tables'),
            0, 0,
            self, 'django_create_cache_tables')
        self.createCacheTableAct.setStatusTip(self.tr(
            'Creates the tables needed to use the SQL cache backend'))
        self.createCacheTableAct.setWhatsThis(self.tr(
            """<b>Create Cache Tables</b>"""
            """<p>Creates the tables needed to use the SQL cache"""
            """ backend.</p>"""
        ))
        self.createCacheTableAct.triggered.connect(
            self.__createCacheTables)
        self.actions.append(self.createCacheTableAct)
        
        ##############################
        ## help action below        ##
        ##############################
        
        self.helpAct = E5Action(
            self.tr('Help'),
            self.tr('&Help'),
            0, 0,
            self, 'django_help')
        self.helpAct.setStatusTip(self.tr(
            'Shows the Django help index'))
        self.helpAct.setWhatsThis(self.tr(
            """<b>Help</b>"""
            """<p>Shows the Django help index page.</p>"""
        ))
        self.helpAct.triggered.connect(self.__showHelpIndex)
        self.actions.append(self.helpAct)
        
        ##############################
        ## about action below       ##
        ##############################
        
        self.aboutDjangoAct = E5Action(
            self.tr('About Django'),
            self.tr('About D&jango'),
            0, 0,
            self, 'django_about')
        self.aboutDjangoAct.setStatusTip(self.tr(
            'Shows some information about Django'))
        self.aboutDjangoAct.setWhatsThis(self.tr(
            """<b>About Django</b>"""
            """<p>Shows some information about Django.</p>"""
        ))
        self.aboutDjangoAct.triggered.connect(self.__djangoInfo)
        self.actions.append(self.aboutDjangoAct)
        
        ##############################
        ## check action below       ##
        ##############################
        
        self.checkAct = E5Action(
            self.tr('Check Project'),
            self.tr('Check Project'),
            0, 0,
            self, 'django_check_project')
        self.checkAct.setStatusTip(self.tr(
            'Inspects the Django project for common problems'))
        self.checkAct.setWhatsThis(self.tr(
            """<b>Check Project</b>"""
            """<p>This inspects the Django project for common problems.</p>"""
        ))
        self.checkAct.triggered.connect(self.__performCheck)
        self.actions.append(self.checkAct)
        
        self.__initDatabaseActions()
        self.__initDatabaseSqlActions()
        self.__initMigrationActions()
        self.__initToolsActions()
        self.__initTestingActions()
        self.__initAuthorizationActions()
        self.__initSessionActions()

    def __initDatabaseActions(self):
        """
        Private method to define the database related actions.
        """
        self.inspectDatabaseAct = E5Action(
            self.tr('Introspect'),
            self.tr('&Introspect'),
            0, 0,
            self, 'django_database_inspect')
        self.inspectDatabaseAct.setStatusTip(self.tr(
            'Introspects the database tables and outputs a Django model'
            ' module'))
        self.inspectDatabaseAct.setWhatsThis(self.tr(
            """<b>Introspect</b>"""
            """<p>Introspects the database tables and outputs a """
            """Django model module.</p>"""
        ))
        self.inspectDatabaseAct.triggered.connect(self.__databaseInspect)
        self.actions.append(self.inspectDatabaseAct)
        
        self.flushDatabaseAct = E5Action(
            self.tr('Flush'),
            self.tr('&Flush'),
            0, 0,
            self, 'django_database_flush')
        self.flushDatabaseAct.setStatusTip(self.tr(
            'Returns all database tables to the state just after their'
            ' installation'))
        self.flushDatabaseAct.setWhatsThis(self.tr(
            """<b>Flush</b>"""
            """<p>Returns all database tables to the state """
            """just after their installation.</p>"""
        ))
        self.flushDatabaseAct.triggered.connect(self.__databaseFlush)
        self.actions.append(self.flushDatabaseAct)
        
        self.databaseClientAct = E5Action(
            self.tr('Start Client Console'),
            self.tr('Start &Client Console'),
            0, 0,
            self, 'django_database_client')
        self.databaseClientAct.setStatusTip(self.tr(
            'Starts a console window for the database client'))
        self.databaseClientAct.setWhatsThis(self.tr(
            """<b>Start Client Console</b>"""
            """<p>Starts a console window for the database client.</p>"""
        ))
        self.databaseClientAct.triggered.connect(self.__runDatabaseClient)
        self.actions.append(self.databaseClientAct)
    
    def __initDatabaseSqlActions(self):
        """
        Private method to define the database SQL related actions.
        """
        self.databaseSqlCreateTablesAct = E5Action(
            self.tr('Create Tables'),
            self.tr('Create &Tables'),
            0, 0,
            self, 'django_database_sql_create_tables')
        self.databaseSqlCreateTablesAct.setStatusTip(self.tr(
            'Prints the CREATE TABLE SQL statements for one or more'
            ' applications'))
        self.databaseSqlCreateTablesAct.setWhatsThis(self.tr(
            """<b>Create Tables</b>"""
            """<p>Prints the CREATE TABLE SQL statements for one or """
            """more applications.</p>"""
        ))
        self.databaseSqlCreateTablesAct.triggered.connect(
            self.__databaseSqlCreateTables)
        self.actions.append(self.databaseSqlCreateTablesAct)
        
        self.databaseSqlCreateIndexesAct = E5Action(
            self.tr('Create Indexes'),
            self.tr('Create &Indexes'),
            0, 0,
            self, 'django_database_sql_create_indexes')
        self.databaseSqlCreateIndexesAct.setStatusTip(self.tr(
            'Prints the CREATE INDEX SQL statements for one or more'
            ' applications'))
        self.databaseSqlCreateIndexesAct.setWhatsThis(self.tr(
            """<b>Create Indexes</b>"""
            """<p>Prints the CREATE INDEX SQL statements for one or """
            """more applications.</p>"""
        ))
        self.databaseSqlCreateIndexesAct.triggered.connect(
            self.__databaseSqlCreateIndexes)
        self.actions.append(self.databaseSqlCreateIndexesAct)
        
        self.databaseSqlCreateEverythingAct = E5Action(
            self.tr('Create Everything'),
            self.tr('Create &Everything'),
            0, 0,
            self, 'django_database_sql_create_everything')
        self.databaseSqlCreateEverythingAct.setStatusTip(self.tr(
            'Prints the CREATE ... SQL statements for one or more'
            ' applications'))
        self.databaseSqlCreateEverythingAct.setWhatsThis(self.tr(
            """<b>Create Everything</b>"""
            """<p>Prints the CREATE TABLE, custom SQL and CREATE INDEX SQL """
            """statements for one or more applications.</p>"""
        ))
        self.databaseSqlCreateEverythingAct.triggered.connect(
            self.__databaseSqlCreateEverything)
        self.actions.append(self.databaseSqlCreateEverythingAct)
        
        self.databaseSqlCustomAct = E5Action(
            self.tr('Custom Statements'),
            self.tr('&Custom Statements'),
            0, 0,
            self, 'django_database_sql_custom')
        self.databaseSqlCustomAct.setStatusTip(self.tr(
            'Prints the custom table modifying SQL statements for '
            'one or more applications'))
        self.databaseSqlCustomAct.setWhatsThis(self.tr(
            """<b>Custom Statements</b>"""
            """<p>Prints the custom table modifying SQL statements """
            """for one or more applications.</p>"""
        ))
        self.databaseSqlCustomAct.triggered.connect(
            self.__databaseSqlCustom)
        self.actions.append(self.databaseSqlCustomAct)
        
        self.databaseSqlDropTablesAct = E5Action(
            self.tr('Drop Tables'),
            self.tr('&Drop Tables'),
            0, 0,
            self, 'django_database_sql_drop_tables')
        self.databaseSqlDropTablesAct.setStatusTip(self.tr(
            'Prints the DROP TABLE SQL statements for '
            'one or more applications'))
        self.databaseSqlDropTablesAct.setWhatsThis(self.tr(
            """<b>Drop Tables</b>"""
            """<p>Prints the DROP TABLE SQL statements """
            """for one or more applications.</p>"""
        ))
        self.databaseSqlDropTablesAct.triggered.connect(
            self.__databaseSqlDropTables)
        self.actions.append(self.databaseSqlDropTablesAct)
        
        self.databaseSqlDropIndexesAct = E5Action(
            self.tr('Drop Indexes'),
            self.tr('&Drop Indexes'),
            0, 0,
            self, 'django_database_sql_drop_indexes')
        self.databaseSqlDropIndexesAct.setStatusTip(self.tr(
            'Prints the DROP INDEX SQL statements for '
            'one or more applications'))
        self.databaseSqlDropIndexesAct.setWhatsThis(self.tr(
            """<b>Drop Indexes</b>"""
            """<p>Prints the DROP INDEX SQL statements """
            """for one or more applications.</p>"""
        ))
        self.databaseSqlDropIndexesAct.triggered.connect(
            self.__databaseSqlDropIndexes)
        self.actions.append(self.databaseSqlDropIndexesAct)
        
        self.databaseSqlFlushAct = E5Action(
            self.tr('Flush Database'),
            self.tr('&Flush Database'),
            0, 0,
            self, 'django_database_sql_flush_database')
        self.databaseSqlFlushAct.setStatusTip(self.tr(
            'Prints a list of statements to return all database tables to the'
            ' state just after their installation'))
        self.databaseSqlFlushAct.setWhatsThis(self.tr(
            """<b>Flush Database</b>"""
            """<p>Prints a list of statements to return all database tables"""
            """ to the state just after their installation.</p>"""
        ))
        self.databaseSqlFlushAct.triggered.connect(
            self.__databaseSqlFlushDatabase)
        self.actions.append(self.databaseSqlFlushAct)
        
        self.databaseSqlResetSeqAct = E5Action(
            self.tr('Reset Sequences'),
            self.tr('Reset &Sequences'),
            0, 0,
            self, 'django_database_sql_reset_sequences')
        self.databaseSqlResetSeqAct.setStatusTip(self.tr(
            'Prints the SQL statements for resetting sequences for '
            'one or more applications'))
        self.databaseSqlResetSeqAct.setWhatsThis(self.tr(
            """<b>Reset Sequences</b>"""
            """<p>Prints the SQL statements for resetting sequences for """
            """one or more applications.</p>"""
        ))
        self.databaseSqlResetSeqAct.triggered.connect(
            self.__databaseSqlResetSequences)
        self.actions.append(self.databaseSqlResetSeqAct)
        
        self.databaseSqlMigrateAct = E5Action(
            self.tr('Apply Migration'),
            self.tr('&Apply Migration'),
            0, 0,
            self, 'django_database_sql_apply_migration')
        self.databaseSqlMigrateAct.setStatusTip(self.tr(
            'Prints the SQL statements to apply a migration of an'
            ' application'))
        self.databaseSqlMigrateAct.setWhatsThis(self.tr(
            """<b>Apply Migration</b>"""
            """<p>Prints the SQL statements to apply a migration of an"""
            """ application.</p>"""
        ))
        self.databaseSqlMigrateAct.triggered.connect(
            self.__databaseSqlMigrate)
        self.actions.append(self.databaseSqlMigrateAct)
        
        self.databaseSqlMigrateBackwardsAct = E5Action(
            self.tr('Unapply Migration'),
            self.tr('&Unapply Migration'),
            0, 0,
            self, 'django_database_sql_unapply_migration')
        self.databaseSqlMigrateBackwardsAct.setStatusTip(self.tr(
            'Prints the SQL statements to unapply a migration of an'
            ' application'))
        self.databaseSqlMigrateBackwardsAct.setWhatsThis(self.tr(
            """<b>Unapply Migration</b>"""
            """<p>Prints the SQL statements to unapply a migration of an"""
            """ application.</p>"""
        ))
        self.databaseSqlMigrateBackwardsAct.triggered.connect(
            lambda: self.__databaseSqlMigrate(backwards=True))
        self.actions.append(self.databaseSqlMigrateBackwardsAct)
    
    def __initToolsActions(self):
        """
        Private method to define the tool actions.
        """
        self.diffSettingsAct = E5Action(
            self.tr('Diff Settings'),
            self.tr('&Diff Settings'),
            0, 0,
            self, 'django_tools_diffsettings')
        self.diffSettingsAct.setStatusTip(self.tr(
            'Shows the modification made to the settings'))
        self.diffSettingsAct.setWhatsThis(self.tr(
            """<b>Diff Settings</b>"""
            """<p>Shows the modification made to the settings.</p>"""
        ))
        self.diffSettingsAct.triggered.connect(self.__diffSettings)
        self.actions.append(self.diffSettingsAct)
    
        self.runPythonShellAct = E5Action(
            self.tr('Start Python Console'),
            self.tr('Start &Python Console'),
            0, 0,
            self, 'django_tools_pythonconsole')
        self.runPythonShellAct.setStatusTip(self.tr(
            'Starts a Python interactive interpreter'))
        self.runPythonShellAct.setWhatsThis(self.tr(
            """<b>Start Python Console</b>"""
            """<p>Starts a Python interactive interpreter.</p>"""
        ))
        self.runPythonShellAct.triggered.connect(self.__runPythonShell)
        self.actions.append(self.runPythonShellAct)
    
    def __initTestingActions(self):
        """
        Private method to define the testing actions.
        """
        self.dumpDataAct = E5Action(
            self.tr('Dump Data'),
            self.tr('&Dump Data'),
            0, 0,
            self, 'django_tools_dumpdata')
        self.dumpDataAct.setStatusTip(self.tr(
            'Dump the database data to a fixture'))
        self.dumpDataAct.setWhatsThis(self.tr(
            """<b>Dump Data</b>"""
            """<p>Dump the database data to a fixture.</p>"""
        ))
        self.dumpDataAct.triggered.connect(self.__dumpData)
        self.actions.append(self.dumpDataAct)
        
        self.loadDataAct = E5Action(
            self.tr('Load Data'),
            self.tr('&Load Data'),
            0, 0,
            self, 'django_tools_loaddata')
        self.loadDataAct.setStatusTip(self.tr(
            'Load data from fixture files'))
        self.loadDataAct.setWhatsThis(self.tr(
            """<b>Load Data</b>"""
            """<p>Load data from fixture files.</p>"""
        ))
        self.loadDataAct.triggered.connect(self.__loadData)
        self.actions.append(self.loadDataAct)
        
        self.runTestAct = E5Action(
            self.tr('Run Testsuite'),
            self.tr('Run &Testsuite'),
            0, 0,
            self, 'django_tools_run_test')
        self.runTestAct.setStatusTip(self.tr(
            'Run the test suite for applications or the whole site'))
        self.runTestAct.setWhatsThis(self.tr(
            """<b>Run Testsuite</b>"""
            """<p>Run the test suite for applications or the whole site.</p>"""
        ))
        self.runTestAct.triggered.connect(self.__runTestSuite)
        self.actions.append(self.runTestAct)
        
        self.runDeprecationTestAct = E5Action(
            self.tr('Run Testsuite (-Wall)'),
            self.tr('Run Testsuite (-Wall)'),
            0, 0,
            self, 'django_tools_run_deprecation_test')
        self.runDeprecationTestAct.setStatusTip(self.tr(
            'Run the test suite for applications or the whole site with'
            ' activated deprecation warnings'))
        self.runDeprecationTestAct.setWhatsThis(self.tr(
            """<b>Run Testsuite (-Wall)</b>"""
            """<p>Run the test suite for applications or the whole site"""
            """ with activated deprecation warnings.</p>"""
        ))
        self.runDeprecationTestAct.triggered.connect(
            lambda: self.__runTestSuite(deprecation=True))
        self.actions.append(self.runDeprecationTestAct)
        
        self.runTestServerAct = E5Action(
            self.tr('Run Testserver'),
            self.tr('Run Test&server'),
            0, 0,
            self, 'django_tools_run_test_server')
        self.runTestServerAct.setStatusTip(self.tr(
            'Run a development server with data from a set of fixtures'))
        self.runTestServerAct.setWhatsThis(self.tr(
            """<b>Run Testserver</b>"""
            """<p>Run a development server with data from a set of"""
            """ fixtures.</p>"""
        ))
        self.runTestServerAct.triggered.connect(self.__runTestServer)
        self.actions.append(self.runTestServerAct)
    
    def __initAuthorizationActions(self):
        """
        Private method to define the authorization actions.
        """
        self.changePasswordAct = E5Action(
            self.tr('Change Password'),
            self.tr('Change &Password'),
            0, 0,
            self, 'django_auth_changepassword')
        self.changePasswordAct.setStatusTip(self.tr(
            'Change the password of a user'))
        self.changePasswordAct.setWhatsThis(self.tr(
            """<b>Change Password</b>"""
            """<p>Change the password of a user of the Django project.</p>"""
        ))
        self.changePasswordAct.triggered.connect(self.__changePassword)
        self.actions.append(self.changePasswordAct)
        
        self.createSuperUserAct = E5Action(
            self.tr('Create Superuser'),
            self.tr('Create &Superuser'),
            0, 0,
            self, 'django_auth_createsuperuser')
        self.createSuperUserAct.setStatusTip(self.tr(
            'Create a superuser account'))
        self.createSuperUserAct.setWhatsThis(self.tr(
            """<b>Create Superuser</b>"""
            """<p>Create a superuser account for the Django project.</p>"""
        ))
        self.createSuperUserAct.triggered.connect(self.__createSuperUser)
        self.actions.append(self.createSuperUserAct)
    
    def __initSessionActions(self):
        """
        Private method to define the session actions.
        """
        self.clearSessionsAct = E5Action(
            self.tr('Clear Sessions'),
            self.tr('Clear &Sessions'),
            0, 0,
            self, 'django_session_clearsessions')
        self.clearSessionsAct.setStatusTip(self.tr(
            'Clear expired sessions'))
        self.clearSessionsAct.setWhatsThis(self.tr(
            """<b>Clear Sessions</b>"""
            """<p>Clear expired sessions of the Django project.</p>"""
        ))
        self.clearSessionsAct.triggered.connect(self.__clearSessions)
        self.actions.append(self.clearSessionsAct)
    
    def __initMigrationActions(self):
        """
        Private method to define the migration actions.
        """
        self.showMigrationsAct = E5Action(
            self.tr('Show Migrations'),
            self.tr('&Show Migrations'),
            0, 0,
            self, 'django_migration_show')
        self.showMigrationsAct.setStatusTip(self.tr(
            'Show a list of available migrations'))
        self.showMigrationsAct.setWhatsThis(self.tr(
            """<b>Show Migrations</b>"""
            """<p>This shows a list of available migrations of the Django"""
            """ project and their status.</p>"""
        ))
        self.showMigrationsAct.triggered.connect(self.__showMigrationsList)
        self.actions.append(self.showMigrationsAct)
        
        self.showMigrationsPlanAct = E5Action(
            self.tr('Show Migrations Plan'),
            self.tr('Show Migrations &Plan'),
            0, 0,
            self, 'django_migration_show_plan')
        self.showMigrationsPlanAct.setStatusTip(self.tr(
            'Show a list with the migrations plan'))
        self.showMigrationsPlanAct.setWhatsThis(self.tr(
            """<b>Show Migrations Plan</b>"""
            """<p>This shows a list with the migrations plan of the Django"""
            """ project.</p>"""
        ))
        self.showMigrationsPlanAct.triggered.connect(self.__showMigrationsPlan)
        self.actions.append(self.showMigrationsPlanAct)
        
        self.migrateAllAct = E5Action(
            self.tr('Apply All Migrations'),
            self.tr('&Apply All Migrations'),
            0, 0,
            self, 'django_migration_apply_all')
        self.migrateAllAct.setStatusTip(self.tr(
            'Apply all available migrations'))
        self.migrateAllAct.setWhatsThis(self.tr(
            """<b>Apply All Migrations</b>"""
            """<p>This applies all migrations of the Django project.</p>"""
        ))
        self.migrateAllAct.triggered.connect(self.__applyAllMigrations)
        self.actions.append(self.migrateAllAct)
        
        self.migrateSelectedAct = E5Action(
            self.tr('Apply Selected Migrations'),
            self.tr('Apply Selected Migrations'),
            0, 0,
            self, 'django_migration_apply_selected')
        self.migrateSelectedAct.setStatusTip(self.tr(
            'Apply selected migrations'))
        self.migrateSelectedAct.setWhatsThis(self.tr(
            """<b>Apply Selected Migrations</b>"""
            """<p>This applies selected migrations of the Django"""
            """ project.</p>"""
        ))
        self.migrateSelectedAct.triggered.connect(
            self.__applySelectedMigrations)
        self.actions.append(self.migrateSelectedAct)
        
        self.unmigrateAct = E5Action(
            self.tr('Unapply Migrations'),
            self.tr('&Unapply Migrations'),
            0, 0,
            self, 'django_migration_unapply')
        self.unmigrateAct.setStatusTip(self.tr(
            'Unapply all migrations for an app'))
        self.unmigrateAct.setWhatsThis(self.tr(
            """<b>Unapply Migrations</b>"""
            """<p>This unapplies all migrations for an app of the Django"""
            """ project.</p>"""
        ))
        self.unmigrateAct.triggered.connect(self.__unapplyMigrations)
        self.actions.append(self.unmigrateAct)
        
        self.makeMigrationsAct = E5Action(
            self.tr('Make Migrations'),
            self.tr('&Make Migrations'),
            0, 0,
            self, 'django_migration_make')
        self.makeMigrationsAct.setStatusTip(self.tr(
            'Generate migrations for the project'))
        self.makeMigrationsAct.setWhatsThis(self.tr(
            """<b>Make Migrations</b>"""
            """<p>This generates migrations for the Django project.</p>"""
        ))
        self.makeMigrationsAct.triggered.connect(self.__makeMigrations)
        self.actions.append(self.makeMigrationsAct)
        
        self.squashMigrationsAct = E5Action(
            self.tr('Squash Migrations'),
            self.tr('S&quash Migrations'),
            0, 0,
            self, 'django_migration_squash')
        self.squashMigrationsAct.setStatusTip(self.tr(
            'Squash migrations of an application of the project'))
        self.squashMigrationsAct.setWhatsThis(self.tr(
            """<b>Squash Migrations</b>"""
            """<p>This squashes migrations of an application of the"""
            """ Django project.</p>"""
        ))
        self.squashMigrationsAct.triggered.connect(self.__squashMigrations)
        self.actions.append(self.squashMigrationsAct)
    
    def initMenu(self):
        """
        Public method to initialize the Django menu.
        
        @return the menu generated
        @rtype QMenu
        """
        self.__menus = {}   # clear menus references
        
        menu = QMenu(self.tr('D&jango'), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.selectSiteAct)
        menu.addSeparator()
        menu.addAction(self.runServerAct)
        menu.addAction(self.runBrowserAct)
        menu.addSeparator()
        menu.addAction(self.startProjectAct)
        menu.addAction(self.startGlobalApplicationAct)
        menu.addAction(self.startLocalApplicationAct)
        menu.addSeparator()
        menu.addAction(self.checkAct)
        menu.addSeparator()
        menu.addMenu(self.__initDatabaseMenu())
        menu.addMenu(self.__initMigrationsMenu())
        menu.addSeparator()
        menu.addMenu(self.__initToolsMenu())
        menu.addSeparator()
        menu.addAction(self.createCacheTableAct)
        menu.addSeparator()
        menu.addMenu(self.__initTestingMenu())
        menu.addSeparator()
        menu.addMenu(self.__initAuthorizationMenu())
        menu.addSeparator()
        menu.addMenu(self.__initSessionMenu())
        menu.addSeparator()
        menu.addAction(self.aboutDjangoAct)
        menu.addSeparator()
        menu.addAction(self.helpAct)
        
        self.__menus["main"] = menu
        
        return menu

    def __initDatabaseMenu(self):
        """
        Private method to initialize the database menu.
        
        @return the menu generated
        @rtype QMenu
        """
        menu = QMenu(self.tr("&Database"), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.inspectDatabaseAct)
        menu.addSeparator()
        menu.addAction(self.flushDatabaseAct)
        menu.addSeparator()
        menu.addAction(self.databaseClientAct)
        menu.addSeparator()
        menu.addMenu(self.__initDatabaseSqlMenu())
        
        self.__menus["database"] = menu
        
        return menu
    
    def __initDatabaseSqlMenu(self):
        """
        Private method to initialize the database SQL submenu.
        
        @return the menu generated
        @rtype QMenu
        """
        menu = QMenu(self.tr("Show &SQL"), self.__ui)
        menu.setTearOffEnabled(True)
        
        if self.getDjangoVersion() < (1, 9, 0):
            menu.addAction(self.databaseSqlCreateTablesAct)
            menu.addAction(self.databaseSqlCreateIndexesAct)
            menu.addAction(self.databaseSqlCreateEverythingAct)
            menu.addSeparator()
            menu.addAction(self.databaseSqlCustomAct)
            menu.addSeparator()
            menu.addAction(self.databaseSqlDropTablesAct)
            menu.addAction(self.databaseSqlDropIndexesAct)
            menu.addSeparator()
        menu.addAction(self.databaseSqlFlushAct)
        menu.addAction(self.databaseSqlResetSeqAct)
        menu.addSeparator()
        menu.addAction(self.databaseSqlMigrateAct)
        menu.addAction(self.databaseSqlMigrateBackwardsAct)
        
        self.__menus["sql"] = menu
        
        return menu
    
    def __initMigrationsMenu(self):
        """
        Private method to initialize the Migrations submenu.
        
        @return the menu generated
        @rtype QMenu
        """
        menu = QMenu(self.tr("&Migrations"), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.showMigrationsAct)
        menu.addAction(self.showMigrationsPlanAct)
        menu.addSeparator()
        menu.addAction(self.migrateAllAct)
        menu.addAction(self.migrateSelectedAct)
        menu.addAction(self.unmigrateAct)
        menu.addSeparator()
        menu.addAction(self.makeMigrationsAct)
        menu.addSeparator()
        menu.addAction(self.squashMigrationsAct)
        
        self.__menus["migrations"] = menu
        
        return menu
    
    def __initToolsMenu(self):
        """
        Private method to initialize the tools menu.
        
        @return the menu generated
        @rtype QMenu
        """
        menu = QMenu(self.tr("&Tools"), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.diffSettingsAct)
        menu.addSeparator()
        menu.addAction(self.runPythonShellAct)
        
        self.__menus["tools"] = menu
        
        return menu
    
    def __initTestingMenu(self):
        """
        Private method to initialize the testing menu.
        
        @return the menu generated
        @rtype QMenu
        """
        menu = QMenu(self.tr("T&esting"), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.dumpDataAct)
        menu.addAction(self.loadDataAct)
        menu.addSeparator()
        menu.addAction(self.runTestAct)
        menu.addAction(self.runDeprecationTestAct)
        menu.addAction(self.runTestServerAct)
        
        self.__menus["testing"] = menu
        
        return menu
    
    def __initAuthorizationMenu(self):
        """
        Private method to initialize the authorization menu.
        
        @return the menu generated
        @rtype QMenu
        """
        menu = QMenu(self.tr("&Authorization"), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.changePasswordAct)
        menu.addAction(self.createSuperUserAct)
        
        self.__menus["authorization"] = menu
        
        return menu
    
    def __initSessionMenu(self):
        """
        Private method to initialize the authorization menu.
        
        @return the menu generated
        @rtype QMenu
        """
        menu = QMenu(self.tr("&Session"), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.clearSessionsAct)
        
        self.__menus["session"] = menu
        
        return menu
    
    def getMenu(self, name):
        """
        Public method to get a reference to the requested menu.
        
        @param name name of the menu (string)
        @return reference to the menu (QMenu) or None, if no
            menu with the given name exists
        """
        if name in self.__menus:
            return self.__menus[name]
        else:
            return None
    
    def getMenuNames(self):
        """
        Public method to get the names of all menus.
        
        @return menu names (list of string)
        """
        return list(self.__menus.keys())

    ##################################################################
    ## methods below implement the various hook related functions
    ##################################################################
    
    def registerOpenHook(self):
        """
        Public method to register the open hook to open a translations file
        in a translations editor.
        """
        if self.__hooksInstalled:
            editor = self.__plugin.getPreferences("TranslationsEditor")
            if editor:
                self.__translationsBrowser.addHookMethodAndMenuEntry(
                    "open",
                    self.openPOEditor,
                    self.tr("Open with {0}").format(
                        os.path.basename(editor)))
            else:
                self.__translationsBrowser.removeHookMethod("open")
    
    def projectOpenedHooks(self):
        """
        Public method to add our hook methods.
        """
        if self.__e5project.getProjectType() == "Django":
            self.__formsBrowser = \
                e5App().getObject("ProjectBrowser").getProjectBrowser("forms")
            self.__formsBrowser.addHookMethodAndMenuEntry(
                "newForm",
                self.newForm, self.tr("New template..."))
            
            self.__e5project.projectLanguageAddedByCode.connect(
                self.__projectLanguageAdded)
            self.__translationsBrowser = \
                e5App().getObject("ProjectBrowser")\
                .getProjectBrowser("translations")
            self.__translationsBrowser.addHookMethodAndMenuEntry(
                "generateAll",
                self.updateCatalogs, self.tr("Update all catalogs"))
            self.__translationsBrowser.addHookMethodAndMenuEntry(
                "generateSelected",
                self.updateSelectedCatalogs,
                self.tr("Update selected catalogs"))
            self.__translationsBrowser.addHookMethodAndMenuEntry(
                "generateAllWithObsolete", self.updateCatalogsWithObsolete,
                self.tr("Update all catalogs (with obsolete)"))
            self.__translationsBrowser.addHookMethodAndMenuEntry(
                "generateSelectedWithObsolete",
                self.updateSelectedCatalogsWithObsolete,
                self.tr("Update selected catalogs (with obsolete)"))
            self.__translationsBrowser.addHookMethodAndMenuEntry(
                "releaseAll",
                self.compileCatalogs, self.tr("Compile all catalogs"))
            self.__translationsBrowser.addHookMethodAndMenuEntry(
                "releaseSelected",
                self.compileSelectedCatalogs,
                self.tr("Compile selected catalogs"))
            
            self.__hooksInstalled = True
            
            self.registerOpenHook()
    
    def projectClosedHooks(self):
        """
        Public method to remove our hook methods.
        """
        if self.__hooksInstalled:
            self.__formsBrowser.removeHookMethod("newForm")
            self.__formsBrowser = None
            
            self.__e5project.projectLanguageAddedByCode.disconnect(
                self.__projectLanguageAdded)
            self.__translationsBrowser.removeHookMethod(
                "generateAll")
            self.__translationsBrowser.removeHookMethod(
                "generateSelected")
            self.__translationsBrowser.removeHookMethod(
                "generateAllWithObsolete")
            self.__translationsBrowser.removeHookMethod(
                "generateSelectedWithObsolete")
            self.__translationsBrowser.removeHookMethod(
                "releaseAll")
            self.__translationsBrowser.removeHookMethod(
                "releaseSelected")
            self.__translationsBrowser.removeHookMethod("open")
            self.__translationsBrowser = None
            
        self.__hooksInstalled = False
    
    def newForm(self, path):
        """
        Public method to create a new form.
        
        @param path full directory path for the new form file (string)
        """
        fname, selectedFilter = E5FileDialog.getSaveFileNameAndFilter(
            self.__ui,
            self.tr("New Form"),
            path,
            filter,
            None,
            E5FileDialog.Options(E5FileDialog.DontConfirmOverwrite))
        
        if not fname:
            # user aborted or didn't enter a filename
            return
        
        ext = QFileInfo(fname).suffix()
        if not ext:
            ex = selectedFilter.split("(*")[1].split(")")[0]
            if ex:
                fname += ex
        
        if os.path.exists(fname):
            res = E5MessageBox.yesNo(
                self.__ui,
                self.tr("New Form"),
                self.tr("The file already exists! Overwrite it?"),
                icon=E5MessageBox.Warning)
            
            if not res:
                # user selected to not overwrite
                return
        
        try:
            f = open(fname, "w")
            f.write('<!DOCTYPE html>')
            f.write('<html>\n')
            f.write('  <head>\n')
            f.write('    <meta content="" />\n')
            f.write('    <title></title>\n')
            f.write('    <link rel="stylesheet" type="text/css"'
                    ' href="style.css"/>')
            f.write('    <!--[if lte IE 7]>')
            f.write('      <link rel="stylesheet" type="text/css"'
                    ' href="ie.css"/>')
            f.write('    <![endif]-->')
            f.write('  </head>\n')
            f.write('\n')
            f.write('  <body  class="bodyclass">\n')
            f.write('    <div id="container">')
            f.write('    </div>')
            f.write('  </body>\n')
            f.close()
            f.write('</html>\n')
            f.close()
        except (IOError, OSError) as e:
            E5MessageBox.critical(
                self.__ui,
                self.tr("New Form"),
                self.tr("<p>The new form file <b>{0}</b> could not be"
                        " created.<br> Problem: {1}</p>")
                .format(fname, str(e)))
            return
        
        self.__e5project.appendFile(fname)
        self.__formsBrowser.sourceFile.emit(fname)

    ##################################################################
    ## slots below implement general functionality
    ##################################################################
    
    def projectClosed(self):
        """
        Public method to handle the closing of a project.
        """
        if self.__serverProc is not None:
            self.__serverProcFinished()
        self.__setCurrentSite(None)
    
    def __getExecutablePaths(self, file):
        """
        Private method to build all full path of an executable file from
        the environment.
        
        @param file filename of the executable (string)
        @return list of full executable names, if the executable file is
            accessible via the searchpath defined by the PATH environment
            variable, or an empty list otherwise.
        """
        paths = []
        
        if os.path.isabs(file):
            if os.access(file, os.X_OK):
                return [file]
            else:
                return []
            
        cur_path = os.path.join(os.curdir, file)
        if os.path.exists(cur_path):
            if os.access(cur_path, os.X_OK):
                paths.append(cur_path)

        path = os.getenv('PATH')
        
        # environment variable not defined
        if path is not None:
            dirs = path.split(os.pathsep)
            for directory in dirs:
                exe = os.path.join(directory, file)
                if os.access(exe, os.X_OK) and exe not in paths:
                    paths.append(exe)
        
        return paths
    
    def supportedPythonVariants(self):
        """
        Public method to get the supported Python variants.
        
        @return list of supported Python variants (list of strings)
        """
        variants = []
        for variant in 'Python2', 'Python3':
            virtEnv = self.__getVirtualEnvironment(variant)
            if virtEnv:
                if self.__getDjangoAdminCommand(variant):
                    variants.append(variant)
            else:
                cmd = self.__getDjangoAdminCommand(variant)
                if isWindowsPlatform():
                    if cmd:
                        variants.append(variant)
                else:
                    try:
                        fullCmds = Utilities.getExecutablePaths(cmd)
                    except AttributeError:
                        fullCmds = self.__getExecutablePaths(cmd)
                    for fullCmd in fullCmds:
                        try:
                            f = open(fullCmd, 'r', encoding='utf-8')
                            l0 = f.readline()
                            f.close()
                        except (IOError, OSError):
                            l0 = ""
                        if variant.lower() in l0.lower() or \
                           "{0}.".format(variant[-1]) in l0 or \
                           (variant == "Python2" and
                            "python3" not in l0.lower() and
                                "python" in l0.lower()):
                            variants.append(variant)
                            break
        
        return variants
    
    def __getVirtualEnvironment(self, language=""):
        """
        Private method to get the path of the virtual environment.
        
        @param language Python variant to get the virtual environment
            for (string, one of '', 'Python2' or 'Python3')
        @return path of the virtual environment (string)
        """
        if not language:
            language = self.__e5project.getProjectLanguage()
        if language == "Python3":
            virtEnv = self.__plugin.getPreferences("VirtualEnvironmentPy3")
        elif language == "Python2":
            virtEnv = self.__plugin.getPreferences("VirtualEnvironmentPy2")
        else:
            virtEnv = ""
        if virtEnv and not os.path.exists(virtEnv):
            virtEnv = ""
        return virtEnv

    def __getDebugEnvironment(self, language=""):
        """
        Private method to get the path of the debugger environment.
        
        @param language Python variant to get the debugger environment
            for (string, one of '', 'Python2' or 'Python3')
        @return path of the debugger environment (string)
        """
        if not language:
            language = self.__e5project.getProjectLanguage()
        if language == "Python3":
            debugEnv = Preferences.getDebugger("Python3Interpreter")
            if not debugEnv and sys.version_info[0] == 3:
                debugEnv = sys.executable
        elif language == "Python2":
            debugEnv = Preferences.getDebugger("PythonInterpreter")
            if not debugEnv and sys.version_info[0] == 2:
                debugEnv = sys.executable
        else:
            debugEnv = sys.executable
        debugEnv = os.path.dirname(debugEnv)
        if debugEnv and not os.path.exists(debugEnv):
            if (language == "Python3" and sys.version_info[0] == 3) or \
               (language == "Python2" and sys.version_info[0] == 2):
                debugEnv = sys.exec_prefix
            else:
                debugEnv = ""
        return debugEnv

    def __getDjangoAdminCommand(self, language=""):
        """
        Private method to build a django-admin.py command.
        
        @param language Python variant to get the django-admin.py
            command for (string, one of '', 'Python2' or 'Python3')
        @return full django-admin.py command (string)
        """
        if not language:
            language = self.__e5project.getProjectLanguage()
        
        virtualEnv = self.__getVirtualEnvironment(language)
        if virtualEnv:
            if isWindowsPlatform():
                cmd = os.path.join(virtualEnv, "Scripts", "django-admin.py")
            else:
                cmds = [
                    os.path.join(virtualEnv, "bin", "django-admin.py"),
                    os.path.join(virtualEnv, "bin", "django-admin"),
                    os.path.join(virtualEnv, "local", "bin",
                                 "django-admin.py"),
                    os.path.join(virtualEnv, "local", "bin", "django-admin"),
                ]
                for cmd in cmds:
                    if os.path.exists(cmd):
                        break
                else:
                    cmd = ""
        else:
            if isWindowsPlatform():
                debugEnv = self.__getDebugEnvironment(language)
                for cmd in [
                    # standard Python
                    os.path.join(debugEnv, "Scripts", "django-admin.py"),
                    # PyPy
                    os.path.join(debugEnv, "bin", "django-admin.py"),
                ]:
                    if os.path.exists(cmd):
                        break
                else:
                    cmd = ""
            else:
                if language == "Python2":
                    cmds = ["django-admin2.py", "django-admin2",
                            "django-admin.py-2.7", "django-admin.py-2.6"]
                elif language == "Python3":
                    cmds = ["django-admin3.py", "django-admin3",
                            "django-admin.py-3.6", "django-admin.py-3.5",
                            "django-admin.py-3.4", "django-admin.py-3.3",
                            "django-admin.py-3.2"]
                else:
                    cmds = []
                cmds.extend(["django-admin.py", "django-admin"])
                for cmd in cmds:
                    if Utilities.isinpath(cmd):
                        break
                else:
                    cmd = ""
        
        return cmd
    
    def __getPythonExecutable(self):
        """
        Private method to build the Python command.
        
        @return python command (string)
        """
        language = self.__e5project.getProjectLanguage()
        virtualEnv = self.__getVirtualEnvironment()
        if isWindowsPlatform():
            pythonExeList = ["python.exe", "pypy.exe"]
            if not virtualEnv:
                virtualEnv = self.__getDebugEnvironment(language)
            for pythonExe in pythonExeList:
                for python in [
                    os.path.join(virtualEnv, "Scripts", pythonExe),
                    os.path.join(virtualEnv, "bin", pythonExe),
                    os.path.join(virtualEnv, pythonExe)
                ]:
                    if os.path.exists(python):
                        break
                else:
                    python = ""
                
                if python:
                    break
            else:
                python = ""
        else:
            if language == "Python3":
                pythonExeList = ["python3", "pypy3"]
            elif language == "Python2":
                pythonExeList = ["python2", "pypy2"]
            if not virtualEnv:
                virtualEnv = self.__getDebugEnvironment(language)
            
            for pythonExe in pythonExeList:
                for python in [
                    os.path.join(virtualEnv, "bin", pythonExe),
                    # omit the version character
                    os.path.join(virtualEnv, "bin", pythonExe)[:-1],
                    os.path.join(virtualEnv, pythonExe),
                    # omit the version character
                    os.path.join(virtualEnv, pythonExe)[:-1],
                ]:
                    if os.path.exists(python):
                        break
                else:
                    python = ""
            
                if python:
                    break
            else:
                python = ""
        
        return python
    
    def __djangoInfo(self):
        """
        Private slot to show some info about Django.
        """
        version = self.getDjangoVersionString()
        url = "https://www.djangoproject.com"
        
        msgBox = E5MessageBox.E5MessageBox(
            E5MessageBox.Question,
            self.tr("About Django"),
            self.tr(
                "<p>Django is a high-level Python Web framework that"
                " encourages rapid development and clean, pragmatic"
                " design.</p>"
                "<p><table>"
                "<tr><td>Version:</td><td>{0}</td></tr>"
                "<tr><td>URL:</td><td><a href=\"{1}\">"
                "{1}</a></td></tr>"
                "</table></p>"
            ).format(version, url),
            modal=True,
            buttons=E5MessageBox.Ok)
        msgBox.setIconPixmap(UI.PixmapCache.getPixmap(
            os.path.join("ProjectDjango", "icons", "django64.png")))
        msgBox.exec_()
    
    def getDjangoVersionString(self):
        """
        Public method to get the Django version as a string.
        
        @return Django version (string)
        """
        djangoVersion = ""
        
        args = ['--version']
        ioEncoding = Preferences.getSystem("IOEncoding")
        cmd = self.__getDjangoAdminCommand()
        if isWindowsPlatform():
            args.insert(0, cmd)
            cmd = self.__getPythonExecutable()
        
        process = QProcess()
        process.start(cmd, args)
        procStarted = process.waitForStarted()
        if procStarted:
            finished = process.waitForFinished(30000)
            if finished and process.exitCode() == 0:
                output = str(process.readAllStandardOutput(), ioEncoding,
                             'replace')
                djangoVersion = output.splitlines()[0].strip()
        
        return djangoVersion
    
    def getDjangoVersion(self):
        """
        Public method to get the Django version as a tuple.
        
        @return Django version
        @rtype tuple of int
        """
        djangoVersionStr = self.getDjangoVersionString()
        djangoVersionList = []
        if djangoVersionStr:
            for part in djangoVersionStr.split("."):
                try:
                    djangoVersionList.append(int(part))
                except ValueError:
                    djangoVersionList.append(part)
        
        return tuple(djangoVersionList)
    
    def __getApplications(self):
        """
        Private method to ask the user for a list of application names.
        
        @return list of application names (list of strings)
        """
        applStr, ok = QInputDialog.getItem(
            self.__ui,
            self.tr("Select Applications"),
            self.tr("Enter the list of applications separated by spaces."),
            self.getRecentApplications(),
            0, True)
        if ok and applStr != "":
            self.setMostRecentApplication(applStr)
            return applStr.split()
        else:
            return []

    def __loadRecentApplications(self):
        """
        Private method to load the recently used applications list.
        """
        self.__recentApplications = []
        Preferences.Prefs.rsettings.sync()
        ra = Preferences.Prefs.rsettings.value(self.RecentApplicationsKey)
        if ra is not None:
            maxRecentApps = self.__plugin.getPreferences("RecentNumberApps")
            self.__recentApplications = ra[:maxRecentApps]
    
    def __saveRecentApplications(self):
        """
        Private method to save the list of recently used applications list.
        """
        Preferences.Prefs.rsettings.setValue(self.RecentApplicationsKey,
                                             self.__recentApplications)
        Preferences.Prefs.rsettings.sync()
    
    def getRecentApplications(self):
        """
        Public method to get the list of recent applications.
        
        @return list of recent applications entries (list of strings)
        """
        self.__loadRecentApplications()
        return self.__recentApplications
    
    def setMostRecentApplication(self, applStr):
        """
        Public method to set the most recently used applications entry.
        
        @param applStr applications entry (string)
        """
        if applStr in self.__recentApplications:
            self.__recentApplications.remove(applStr)
        self.__recentApplications.insert(0, applStr)
        
        maxRecentApps = self.__plugin.getPreferences("RecentNumberApps")
        if len(self.__recentApplications) > maxRecentApps:
            self.__recentApplications = self.recent[:maxRecentApps]
        self.__saveRecentApplications()
    
    def getProjectPath(self):
        """
        Public method to get the path of the eric6 project.
        
        @return path of the eric6 project (string)
        """
        return self.__e5project.getProjectPath()
    
    def __showHelpIndex(self):
        """
        Private slot to show the help index page.
        """
        page = os.path.join(os.path.dirname(__file__),
                            "Documentation", "help", "index.html")
        self.__ui.launchHelpViewer(page)
    
    def __isSpawningConsole(self, consoleCmd):
        """
        Private method to check, if the given console is a spawning console.
        
        @param consoleCmd console command (string)
        @return tuple of two entries giving an indication, if the console
            is spawning (boolean) and the (possibly) cleaned console command
            (string)
        """
        if consoleCmd and consoleCmd[0] == '@':
            return (True, consoleCmd[1:])
        else:
            return (False, consoleCmd)
    
    def __adjustWorkingDirectory(self, args, wd):
        """
        Private method to adjust the working directory in the arguments list.
        
        @param args list of arguments to be modified
        @type list of str
        @param wd working directory
        @type str
        """
        if args[0].endswith("konsole") and "--workdir" in args:
            index = args.index("--workdir")
            args[index + 1] = wd
        elif args[0].endswith(("gnome-terminal", "mate-terminal")):
            for index in range(len(args)):
                if args[index].startswith("--working-directory="):
                    args[index] = "--working-directory={0}".format(wd)
                    break
    
    ##################################################################
    ## slots below implement creation functions
    ##################################################################
    
    def newProjectCreated(self):
        """
        Public slot to finish up the newly generated project.
        """
        if self.__e5project.getProjectType() == "Django":
            ppath = self.__e5project.getProjectPath()
            
            # get rid of an __init__.py file because it would be in our way
            initModule = os.path.join(ppath, "__init__.py")
            if os.path.exists(initModule):
                self.__e5project.deleteFile("__init__.py")
                self.__e5project.saveProject()
    
    def startProjectOrApplication(self):
        """
        Public slot to start a new Django project or application.
        """
        if self.__e5project.getProjectType() == "Django":
            projectStr = self.tr("Project")
            applStr = self.tr("Application")
            selections = ["", projectStr, applStr]
            selection, ok = QInputDialog.getItem(
                self.__ui,
                self.tr("Start Django"),
                self.tr("Select if this project should be a "
                        "Django Project or Application.<br />"
                        "Select the empty entry for none."),
                selections,
                0, False)
            if ok and bool(selection):
                if selection == projectStr:
                    path, projectName = os.path.split(
                        self.__e5project.getProjectPath())
                    self.__createProject(projectName, path)
                elif selection == applStr:
                    path, applName = os.path.split(
                        self.__e5project.getProjectPath())
                    self.__createApplication(applName, path)
    
    def __createProject(self, projectName, path):
        """
        Private slot to create a new Django project.
        
        @param projectName name of the new project (string)
        @param path the directory where the project should be created
            (string)
        @return flag indicating a successful creation (boolean)
        """
        title = self.tr("Start Django Project")
        
        # remove the project directory if it exists already
        ppath = os.path.join(path, projectName)
        if os.path.exists(ppath):
            shutil.rmtree(ppath, ignore_errors=True)
        
        args = []
        if Utilities.isWindowsPlatform():
            args.append(self.__getPythonExecutable())
            args.append(self.__getDjangoAdminCommand())
        else:
            cmd = self.__getDjangoAdminCommand()
            if cmd:
                args.append(cmd)
            else:
                E5MessageBox.critical(
                    self.__ui,
                    title,
                    self.tr("""<p>The <b>django-admin.py</b> script is"""
                            """ not in the path. Aborting...</p>"""))
                return
        
        args.append("startproject")
        args.append(projectName)
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr("Django project created successfully."))
        res = dia.startProcess(args, path)
        if res:
            dia.exec_()
            
            # create the base directory for translations
            i18nPath = os.path.join(path, projectName, "locale")
            if not os.path.exists(i18nPath):
                os.makedirs(i18nPath)
            
            if os.path.join(path, projectName) == \
                    self.__e5project.getProjectPath():
                self.__setCurrentSite("")
            else:
                self.__setCurrentSite(projectName)
            
        return res
    
    def __startProject(self):
        """
        Private slot to start a new Django project.
        """
        projectName, ok = QInputDialog.getText(
            self.__ui,
            self.tr("Start Django Project"),
            self.tr("Enter the name of the new Django project."),
            QLineEdit.Normal)
        if ok and projectName != "":
            res = self.__createProject(projectName,
                                       self.__e5project.getProjectPath())
            if res:
                # search for new files and add them to the project
                sitePath = os.path.join(self.__e5project.getProjectPath(),
                                        projectName)
                for entry in os.walk(sitePath):
                    for fileName in entry[2]:
                        fullName = os.path.join(entry[0], fileName)
                        self.__e5project.appendFile(fullName)
    
    def __createApplication(self, applName, path, isGlobal=True):
        """
        Private slot to create a new Django application.
        
        @param applName name of the new application (string)
        @param path the directory where the application should be created
            (string)
        @param isGlobal flag indicating a standalone Django application
            (boolean)
        @return flag indicating a successful creation (boolean)
        """
        title = self.tr("Start Django Application")
        
        # remove the application directory if it exists already
        apath = os.path.join(path, applName)
        if os.path.exists(apath):
            shutil.rmtree(apath, ignore_errors=True)
        
        args = []
        if isGlobal:
            if Utilities.isWindowsPlatform():
                args.append(self.__getPythonExecutable())
                args.append(self.__getDjangoAdminCommand())
            else:
                cmd = self.__getDjangoAdminCommand()
                if cmd:
                    args.append(cmd)
                else:
                    E5MessageBox.critical(
                        self.__ui,
                        title,
                        self.tr("""<p>The <b>django-admin.py</b> script"""
                                """ is not in the path."""
                                """ Aborting...</p>"""))
                    return
        else:
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            try:
                path = self.__sitePath()
            except DjangoNoSiteSelectedException:
                return False
        args.append("startapp")
        args.append(applName)
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr("Django application created successfully."))
        res = dia.startProcess(args, path)
        if res:
            dia.exec_()
        return res
    
    def __startGlobalApplication(self):
        """
        Private slot to start a new global Django application.
        """
        applName, ok = QInputDialog.getText(
            self.__ui,
            self.tr("Start Global Django Application"),
            self.tr("Enter the name of the new global Django"
                    " application."),
            QLineEdit.Normal)
        if ok and applName != "":
            res = self.__createApplication(applName,
                                           self.__e5project.getProjectPath())
            if res:
                # search for new files and add them to the project
                appPath = os.path.join(self.__e5project.getProjectPath(),
                                       applName)
                for entry in os.walk(appPath):
                    for fileName in entry[2]:
                        fullName = os.path.join(entry[0], fileName)
                        self.__e5project.appendFile(fullName)
    
    def __startLocalApplication(self):
        """
        Private slot to start a new local Django application.
        """
        applName, ok = QInputDialog.getText(
            self.__ui,
            self.tr("Start Local Django Application"),
            self.tr("Enter the name of the new local Django application."),
            QLineEdit.Normal)
        if ok and applName != "":
            res = self.__createApplication(applName, "", False)
            if res:
                try:
                    # search for new files and add them to the project
                    appPath = os.path.join(self.__sitePath(), applName)
                    for entry in os.walk(appPath):
                        for fileName in entry[2]:
                            fullName = os.path.join(entry[0], fileName)
                            self.__e5project.appendFile(fullName)
                except DjangoNoSiteSelectedException:
                    return
    
    ##################################################################
    ## methods below implement site related functions
    ##################################################################
    
    def __findSites(self):
        """
        Private method to determine the relative path to all manage.py scripts.
        
        @return list of sites (list of strings)
        """
        sites = []
        for file in sorted(self.__e5project.getSources()):
            if os.path.basename(file) == "manage.py":
                sites.append(os.path.dirname(file))
        return sites
    
    def __selectSite(self):
        """
        Private method to select a site to work with.
        """
        sites = self.__findSites()
        if len(sites) == 1:
            site = sites[0]
        else:
            if self.__currentSite is not None:
                if self.__currentSite in sites:
                    cur = sites.index(self.__currentSite)
                else:
                    cur = 0
            else:
                cur = 0
            site, ok = QInputDialog.getItem(
                self.__ui,
                self.tr("Select Project"),
                self.tr("Select the Django project to work with."),
                sites,
                cur, False)
            if not ok:
                site = None
        self.__setCurrentSite(site)
    
    def __sitePath(self):
        """
        Private method to calculate the full path of the Django site.
        
        @exception DjangoNoSiteSelectedException raised, if no site is selected
        @return path of the site (string)
        """
        if self.__currentSite is None:
            self.__selectSite()
        
        if self.__currentSite is None:
            raise DjangoNoSiteSelectedException
        else:
            return os.path.join(self.__e5project.getProjectPath(),
                                self.__currentSite)
    
    def __setCurrentSite(self, site):
        """
        Private slot to set the current site.
        
        @param site name of the site (string)
        """
        self.__currentSite = site
        if self.__currentSite is None:
            curSite = self.tr("None")
        elif self.__currentSite == "":
            curSite = self.tr("Project")
        else:
            curSite = self.__currentSite
        self.selectSiteAct.setText(
            self.tr('&Current Django project ({0})').format(curSite))
        
        if self.__currentSite is None:
            try:
                self.__e5project.setTranslationPattern("")
            except AttributeError:
                # backward compatibility
                self.__e5project.pdata["TRANSLATIONPATTERN"] = []
        else:
            try:
                self.__e5project.setTranslationPattern(
                    os.path.join(site, "locale", "%language%", "LC_MESSAGES",
                                 "django.po")
                )
            except AttributeError:
                # backward compatibility
                self.__e5project.pdata["TRANSLATIONPATTERN"] = [
                    os.path.join(site, "locale", "%language%", "LC_MESSAGES",
                                 "django.po")
                ]
    
    def __site(self):
        """
        Private method to get the name of the current site.
        
        @exception DjangoNoSiteSelectedException raised, if no site is selected
        @return name of the site (string)
        """
        if self.__currentSite is None:
            self.__selectSite()
        
        if self.__currentSite is None:
            raise DjangoNoSiteSelectedException
        else:
            return self.__currentSite

    ##################################################################
    ## slots below implement run functions
    ##################################################################
    
    def __runServer(self):
        """
        Private slot to start the Django Web server.
        """
        consoleCmd = self.__isSpawningConsole(
            self.__plugin.getPreferences("ConsoleCommand"))[1]
        if consoleCmd:
            args = Utilities.parseOptionString(consoleCmd)
            args[0] = Utilities.getExecutablePath(args[0])
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("runserver")
            if self.__plugin.getPreferences("UseIPv6"):
                args.append("--ipv6")
            addr = self.__plugin.getPreferences("ServerAddress")
            if addr:
                args.append(addr)
            
            try:
                if Utilities.isWindowsPlatform():
                    serverProcStarted, pid = QProcess.startDetached(
                        args[0], args[1:], self.__sitePath())
                else:
                    if self.__serverProc is not None:
                        self.__serverProcFinished()
                    
                    self.__serverProc = QProcess()
                    self.__serverProc.finished.connect(
                        self.__serverProcFinished)
                    self.__serverProc.setWorkingDirectory(self.__sitePath())
                    self.__serverProc.start(args[0], args[1:])
                    serverProcStarted = self.__serverProc.waitForStarted()
                if not serverProcStarted:
                    E5MessageBox.critical(
                        None,
                        self.tr('Process Generation Error'),
                        self.tr('The Django server could not be started.'))
            except DjangoNoSiteSelectedException:
                pass
    
    def __serverProcFinished(self):
        """
        Private slot connected to the finished signal.
        """
        if self.__serverProc is not None and \
           self.__serverProc.state() != QProcess.NotRunning:
            self.__serverProc.terminate()
            QTimer.singleShot(2000, self.__serverProc.kill)
            self.__serverProc.waitForFinished(3000)
        self.__serverProc = None
    
    def __runBrowser(self):
        """
        Private slot to start the default web browser with the server URL.
        """
        addr = self.__plugin.getPreferences("ServerAddress")
        ipv6 = self.__plugin.getPreferences("UseIPv6")
        if addr:
            # test for an IPv6 and port address
            if ']:' in addr:
                addr, port = addr.rsplit(':', 1)
            elif ':' in addr:
                addr, port = addr.split(':', 1)
            else:
                port = addr
                if ipv6:
                    addr = "[::1]"
                else:
                    addr = "127.0.0.1"
        else:
            port = "8000"
            if ipv6:
                addr = "[::1]"
            else:
                addr = "127.0.0.1"
        url = "http://{0}:{1}".format(addr, port)
        if self.__plugin.getPreferences("UseExternalBrowser"):
            res = QDesktopServices.openUrl(QUrl(url))
            if not res:
                E5MessageBox.critical(
                    None,
                    self.tr('Run Web-Browser'),
                    self.tr('Could not start the web-browser for the'
                            ' url "{0}".').format(url.toString()))
        else:
            self.__ui.launchHelpViewer(url)

    ##################################################################
    ## slots below implement database related functions
    ##################################################################
    
    def __databaseInspect(self):
        """
        Private slot to introspect the database and output a Django model
        module.
        """
        title = self.tr("Introspect Database")
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("inspectdb")
        
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        dia = DjangoDialog(title, fixed=True, linewrap=False)
        res = dia.startProcess(args, path, False)
        if res:
            dia.exec_()
    
    def __databaseFlush(self):
        """
        Private slot to return all database tables to the state just after
        their installation.
        """
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        title = self.tr("Flush Database")
        
        res = E5MessageBox.yesNo(
            self.__ui,
            title,
            self.tr("""Flushing the database will destroy all data."""
                    """ Are you sure?"""))
        if res:
            args = []
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("flush")
            args.append("--noinput")
            
            dia = DjangoDialog(
                title,
                msgSuccess=self.tr("Database tables flushed"
                                   " successfully."))
            res = dia.startProcess(args, path)
            if res:
                dia.exec_()
    
    def __runDatabaseClient(self):
        """
        Private slot to start a database client for a Django project.
        """
        consoleCmd = self.__isSpawningConsole(
            self.__plugin.getPreferences("ConsoleCommand"))[1]
        if consoleCmd:
            args = Utilities.parseOptionString(consoleCmd)
            args[0] = Utilities.getExecutablePath(args[0])
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("dbshell")
            try:
                wd = self.__sitePath()
                self.__adjustWorkingDirectory(args, wd)
                started, pid = QProcess.startDetached(args[0], args[1:], wd)
                if not started:
                    E5MessageBox.critical(
                        None,
                        self.tr('Process Generation Error'),
                        self.tr('The Django process could not be started.'))
            except DjangoNoSiteSelectedException:
                pass
    
    #######################################################################
    ## slots below implement database functions outputting SQL statements
    #######################################################################
    
    def __sqlCommand(self, title, command, requestApps=True):
        """
        Private method to perform an SQL creation function.
        
        @param title dialog title (string)
        @param command Django sql... command (string)
        @param requestApps flag indicating to request a list of applications
            to work on (boolean)
        """
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        if requestApps:
            apps = self.__getApplications()
            if not apps:
                return
        else:
            apps = []
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append(command)
        args += apps
        
        fileFilter = self.tr("SQL Files (*.sql)")
        
        dia = DjangoDialog(title, fixed=True, linewrap=False,
                           saveFilters=fileFilter)
        res = dia.startProcess(args, path, False)
        if res:
            dia.exec_()
    
    def __databaseSqlCreateTables(self):
        """
        Private slot to print the CREATE TABLE SQL statements for one
        or more applications.
        
        Note: available before Django v1.9.0
        """
        self.__sqlCommand(self.tr("Create Tables"), "sql")
    
    def __databaseSqlCreateIndexes(self):
        """
        Private slot to print the CREATE INDEX SQL statements for one
        or more applications.
        
        Note: available before Django v1.9.0
        """
        self.__sqlCommand(self.tr("Create Indexes"), "sqlindexes")
    
    def __databaseSqlCreateEverything(self):
        """
        Private slot to print the CREATE TABLE, custom SQL and
        CREATE INDEX SQL statements for one or more applications.
        
        Note: available before Django v1.9.0
        """
        self.__sqlCommand(self.tr("Create Everything"), "sqlall")
    
    def __databaseSqlCustom(self):
        """
        Private slot to print the custom table modifying SQL statements
        for one or more applications.
        
        Note: available before Django v1.9.0
        """
        self.__sqlCommand(self.tr("Custom Statements"), "sqlcustom")
    
    def __databaseSqlDropTables(self):
        """
        Private slot to print the DROP TABLE SQL statements for one or
        more applications.
        
        Note: available before Django v1.9.0
        """
        self.__sqlCommand(self.tr("Drop Tables"), "sqlclear")
    
    def __databaseSqlDropIndexes(self):
        """
        Private slot to print the DROP INDEX SQL statements for one or
        more applications.
        
        Note: available before Django v1.9.0
        """
        self.__sqlCommand(self.tr("Drop Indexes"), "sqldropindexes")
    
    def __databaseSqlFlushDatabase(self):
        """
        Private slot to print a list of statements to return all database
        tables to their initial state.
        """
        self.__sqlCommand(self.tr("Flush Database"), "sqlflush", False)
    
    def __databaseSqlResetSequences(self):
        """
        Private slot to print the SQL statements for resetting sequences for
        one or more applications.
        """
        self.__sqlCommand(self.tr("Reset Sequences"), "sqlsequencereset")
    
    def __databaseSqlMigrate(self, backwards=False):
        """
        Private slot to print the SQL statements for a migration of an
        application.
        
        @param backwards flag indicating to generate the SQL code to unapply
            a migration
        @type bool
        """
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        migrations = self.__getMigrations()
        if not migrations:
            E5MessageBox.information(
                None,
                self.tr("SQL Migrate"),
                self.tr("""No migrations available."""))
            return
        
        title = self.tr("SQL Migrate")
        
        from .DjangoMigrationSelectionDialog import \
            DjangoMigrationSelectionDialog
        dlg = DjangoMigrationSelectionDialog(migrations,
                                             migrationRequired=True)
        if dlg.exec_() == QDialog.Accepted:
            app, migration = dlg.getData()
            
            args = []
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("sqlmigrate")
            if backwards:
                args.append("--backwards")
            args.append(app)
            args.append(migration)
            
            fileFilter = self.tr("SQL Files (*.sql)")
            
            dia = DjangoDialog(title, fixed=True, linewrap=False,
                               saveFilters=fileFilter)
            res = dia.startProcess(args, path, False)
            if res:
                dia.exec_()
    
    ##################################################################
    ## slots below implement migration related functions
    ##################################################################
    
    def __showMigrationsList(self):
        """
        Private slot to show the available migrations and their status.
        """
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        from .DjangoMigrationsListDialog import DjangoMigrationsListDialog
        self.__migrationsListDialog = DjangoMigrationsListDialog(
            DjangoMigrationsListDialog.MigrationsListMode, self, self.__ui)
        self.__migrationsListDialog.show()
        self.__migrationsListDialog.start(self.__getPythonExecutable(), path)
    
    def __showMigrationsPlan(self):
        """
        Private slot to show the migrations plan.
        """
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        from .DjangoMigrationsListDialog import DjangoMigrationsListDialog
        self.__migrationsPlanDialog = DjangoMigrationsListDialog(
            DjangoMigrationsListDialog.MigrationsPlanMode, self, self.__ui)
        self.__migrationsPlanDialog.show()
        self.__migrationsPlanDialog.start(self.__getPythonExecutable(), path)
    
    def __applyAllMigrations(self):
        """
        Private slot to apply all migrations.
        """
        self.applyMigrations()
    
    def __applySelectedMigrations(self):
        """
        Private slot to apply selected migrations of a selected app.
        """
        migrations = self.__getMigrations()
        if not migrations:
            E5MessageBox.information(
                None,
                self.tr("Apply Selected Migrations"),
                self.tr("""No migrations available."""))
            return
        
        from .DjangoMigrationSelectionDialog import \
            DjangoMigrationSelectionDialog
        dlg = DjangoMigrationSelectionDialog(migrations)
        if dlg.exec_() == QDialog.Accepted:
            app, migration = dlg.getData()
            self.applyMigrations(app=app, migration=migration)
    
    def applyMigrations(self, app=None, migration=None):
        """
        Public slot to apply migrations.
        
        @param app name of an application to apply migrations for
        @type str
        @param migration name of a migration to update to
        @type str
        """
        if migration == "zero":
            title = self.tr("Unapply Migrations")
        else:
            title = self.tr("Apply Migrations")
        
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("migrate")
        args.append("--noinput")
        if app:
            args.append(app)
            if migration:
                args.append(migration)
        
        dia = DjangoDialog(title)
        res = dia.startProcess(args, path)
        if res:
            dia.exec_()
    
    def __unapplyMigrations(self):
        """
        Private slot to un-apply all migrations of an application.
        """
        apps = list(sorted(self.__getMigrations().keys()))
        if not apps:
            E5MessageBox.information(
                None,
                self.tr("Unapply Migrations"),
                self.tr("""No migrations available."""))
            return
        
        app, ok = QInputDialog.getItem(
            None,
            self.tr("Unapply Migrations"),
            self.tr("Select an application:"),
            [""] + apps,
            0, False)
        if ok and app:
            self.applyMigrations(app=app, migration="zero")
    
    def __getMigrations(self):
        """
        Private method to get the available migrations.
        
        @return dictionary containing the available migrations
        @rtype dict with app name as key (str) and list of tuples of
            applied indication (bool) and migration name (str) as value
        """
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return {}
        
        args = []
        args.append("manage.py")
        args.append("showmigrations")
        args.append("--list")
        
        migrations = {}
        proc = QProcess()
        if path:
            proc.setWorkingDirectory(path)
        proc.start(self.__getPythonExecutable(), args)
        if proc.waitForStarted():
            if proc.waitForFinished():
                output = str(proc.readAllStandardOutput(),
                             Preferences.getSystem("IOEncoding"), 'replace')
                if output:
                    recentApp = ""
                    for line in output.splitlines():
                        if not line.startswith(" "):
                            # application name
                            recentApp = line.strip()
                            migrations[recentApp] = []
                        else:
                            # migration name
                            line = line.strip()
                            applied = line[1] != " "
                            name = line[3:].strip()
                            if recentApp:
                                migrations[recentApp].append((applied, name))
        return migrations
    
    def __makeMigrations(self):
        """
        Private slot to generate migrations for the Django project.
        """
        from .DjangoMakeMigrationsDialog import DjangoMakeMigrationsDialog
        dlg = DjangoMakeMigrationsDialog(self.getRecentApplications())
        if dlg.exec_() == QDialog.Accepted:
            apps, migration, dryRun = dlg.getData()
            if apps:
                self.setMostRecentApplication(apps)
            apps = apps.split()
            self.makeMigrations(apps, migration, dryRun)
    
    def makeMigrations(self, apps, migration=None, dryRun=False):
        """
        Public method to generate migrations.
        
        @param apps list of application names to generate migrations for
        @type list of str
        @param migration name of the migration to generate
        @type str
        @param dryRun flag indicating a dry run
        @type bool
        """
        title = self.tr("Make Migrations")
        
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("makemigrations")
        args.append("--noinput")
        if migration:
            args.append("--name")
            args.append(migration.replace(" ", "_"))
        if dryRun:
            args.append("--dry-run")
        if apps:
            args += apps
        
        dia = DjangoDialog(title)
        res = dia.startProcess(args, path)
        if res:
            dia.exec_()
    
    def __squashMigrations(self):
        """
        Private slot to squash migrations.
        """
        migrations = self.__getMigrations()
        if not migrations:
            E5MessageBox.information(
                None,
                self.tr("Squash Migrations"),
                self.tr("""No migrations available."""))
            return
        
        from .DjangoSquashMigrationSelectionDialog import \
            DjangoSquashMigrationSelectionDialog
        dlg = DjangoSquashMigrationSelectionDialog(
            migrations, self.getDjangoVersion() >= (1, 9, 0))
        if dlg.exec_() == QDialog.Accepted:
            app, start, end, noOptimize = dlg.getData()
        
        title = self.tr("Squash Migrations")
        
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("squashmigrations")
        args.append("--noinput")
        if noOptimize:
            args.append("--no-optimize")
        args.append(app)
        if start:
            args.append(start)
        args.append(end)
        
        dia = DjangoDialog(title)
        res = dia.startProcess(args, path)
        if res:
            dia.exec_()
    
    ##################################################################
    ## slots below implement some tool functions
    ##################################################################
    
    def __diffSettings(self):
        """
        Private slot to show the changes made to the settings.py file.
        """
        title = self.tr("Diff Settings")
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("diffsettings")
        
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        dia = DjangoDialog(title, fixed=True, linewrap=False)
        res = dia.startProcess(args, path, False)
        if res:
            dia.exec_()
    
    def __runPythonShell(self):
        """
        Private slot to start a Python console for a Django project.
        """
        consoleCmd = self.__isSpawningConsole(
            self.__plugin.getPreferences("ConsoleCommand"))[1]
        if consoleCmd:
            args = Utilities.parseOptionString(consoleCmd)
            args[0] = Utilities.getExecutablePath(args[0])
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("shell")
            language = self.__e5project.getProjectLanguage()
            if language == "Python2":
                if self.__plugin.getPreferences("UsePlainPythonPy2"):
                    args.append("--plain")
            else:
                if self.__plugin.getPreferences("UsePlainPythonPy3"):
                    args.append("--plain")
            try:
                wd = self.__sitePath()
                self.__adjustWorkingDirectory(args, wd)
                started, pid = QProcess.startDetached(args[0], args[1:], wd)
                if not started:
                    E5MessageBox.critical(
                        None,
                        self.tr('Process Generation Error'),
                        self.tr('The Django process could not be started.'))
            except DjangoNoSiteSelectedException:
                pass
    
    ##################################################################
    ## slots below implement caching functions
    ##################################################################
    
    def __createCacheTables(self):
        """
        Private slot to create the tables for the SQL caching backend.
        """
        title = self.tr("Create Cache Tables")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        tblStr, ok = QInputDialog.getText(
            self.__ui,
            title,
            self.tr("Enter the names of the cache tables separated by"
                    " spaces."),
            QLineEdit.Normal)
        if ok and tblStr != "":
            tableNames = tblStr.split()
            
            args = []
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("createcachetable")
            args += tableNames
            
            dia = DjangoDialog(
                title,
                msgSuccess=self.tr("Cache tables created successfully."))
            res = dia.startProcess(args, wd)
            if res:
                dia.exec_()
    
    ##################################################################
    ## slots below implement testing functions
    ##################################################################
    
    def __dumpData(self):
        """
        Private slot to dump the database data to a fixture.
        """
        title = self.tr("Dump Data")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        from .DjangoDumpdataDataDialog import DjangoDumpdataDataDialog
        dlg = DjangoDumpdataDataDialog(self, self.__ui)
        if dlg.exec_() == QDialog.Accepted:
            appls, excls, dumpFormat, indent = dlg.getData()
            
            args = []
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("dumpdata")
            args.append("--format={0}".format(dumpFormat))
            args.append("--indent={0}".format(indent))
            for excl in excls:
                args.append("--exclude={0}".format(excl))
            args += appls
            
            if dumpFormat == "json":
                fileFilters = self.tr("JSON Files (*.json)")
            elif dumpFormat == "xml":
                fileFilters = self.tr("XML Files (*.xml)")
            elif dumpFormat == "yaml":
                fileFilters = self.tr("YAML Files (*.yaml)")
            
            dia = DjangoDialog(
                title, fixed=True, linewrap=False, saveFilters=fileFilters)
            res = dia.startProcess(args, wd, showCommand=False)
            if res:
                dia.exec_()
    
    def __loadData(self):
        """
        Private slot to load data from fixture files.
        """
        title = self.tr("Load Data")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        from .DjangoLoaddataDataDialog import DjangoLoaddataDataDialog
        dlg = DjangoLoaddataDataDialog(self, self.__ui)
        if dlg.exec_() == QDialog.Accepted:
            fixtures = dlg.getData()
            
            args = []
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("loaddata")
            args += fixtures
            
            dia = DjangoDialog(title)
            res = dia.startProcess(args, wd)
            if res:
                dia.exec_()
    
    def __runTestSuite(self, deprecation=False):
        """
        Private slot to run the test suite for applications or the whole site.
        
        @param deprecation flag indicating to test for deprecation warnings
        @type bool
        """
        consoleCmd = self.__isSpawningConsole(
            self.__plugin.getPreferences("ConsoleCommandNoClose"))[1]
        if consoleCmd:
            try:
                wd = self.__sitePath()
            except DjangoNoSiteSelectedException:
                return
            
            args = Utilities.parseOptionString(consoleCmd)
            args[0] = Utilities.getExecutablePath(args[0])
            args.append(self.__getPythonExecutable())
            if deprecation:
                args.append("-Wall")
            args.append("manage.py")
            args.append("test")
            args += self.__getApplications()
            
            self.__adjustWorkingDirectory(args, wd)
            started, pid = QProcess.startDetached(args[0], args[1:], wd)
            if not started:
                E5MessageBox.critical(
                    None,
                    self.tr('Process Generation Error'),
                    self.tr('The Django process could not be started.'))
    
    def __runTestServer(self):
        """
        Private slot to run a development server with data from a set of
        fixtures.
        """
        consoleCmd = self.__isSpawningConsole(
            self.__plugin.getPreferences("ConsoleCommand"))[1]
        if consoleCmd:
            from .DjangoLoaddataDataDialog import DjangoLoaddataDataDialog
            dlg = DjangoLoaddataDataDialog(self, self.__ui)
            if dlg.exec_() == QDialog.Accepted:
                fixtures = dlg.getData()
                
                args = Utilities.parseOptionString(consoleCmd)
                args[0] = Utilities.getExecutablePath(args[0])
                args.append(self.__getPythonExecutable())
                args.append("manage.py")
                args.append("testserver")
                if self.__plugin.getPreferences("UseIPv6"):
                    args.append("--ipv6")
                addr = self.__plugin.getPreferences("ServerAddress")
                if addr:
                    args.append("--addrport={0}".format(addr))
                args += fixtures
                
                try:
                    if Utilities.isWindowsPlatform():
                        serverProcStarted, pid = QProcess.startDetached(
                            args[0], args[1:], self.__sitePath())
                    else:
                        if self.__testServerProc is not None:
                            self.__testServerProcFinished()
                        
                        self.__testServerProc = QProcess()
                        self.__testServerProc.finished.connect(
                            self.__serverProcFinished)
                        self.__testServerProc.setWorkingDirectory(
                            self.__sitePath())
                        self.__testServerProc.start(args[0], args[1:])
                        serverProcStarted = \
                            self.__testServerProc.waitForStarted()
                    if not serverProcStarted:
                        E5MessageBox.critical(
                            None,
                            self.tr('Process Generation Error'),
                            self.tr('The Django test server could not be'
                                    ' started.'))
                except DjangoNoSiteSelectedException:
                    pass
    
    def __testServerProcFinished(self):
        """
        Private slot connected to the finished signal of the test server.
        """
        if self.__testServerProc is not None and \
           self.__testServerProc.state() != QProcess.NotRunning:
            self.__testServerProc.terminate()
            QTimer.singleShot(2000, self.__testServerProc.kill)
            self.__testServerProc.waitForFinished(3000)
        self.__testServerProc = None
    
    ##################################################################
    ## slots below implement authorization functions
    ##################################################################
    
    def __changePassword(self):
        """
        Private slot to change the password of a user.
        """
        consoleCmd = self.__isSpawningConsole(
            self.__plugin.getPreferences("ConsoleCommandNoClose"))[1]
        if consoleCmd:
            userName, ok = QInputDialog.getText(
                self.__ui,
                self.tr("Change Password"),
                self.tr("Enter the name of the user:"),
                QLineEdit.Normal)
            if ok and userName != "":
                args = Utilities.parseOptionString(consoleCmd)
                args[0] = Utilities.getExecutablePath(args[0])
                args.append(self.__getPythonExecutable())
                args.append("manage.py")
                args.append("changepassword")
                args.append(userName)
                try:
                    wd = self.__sitePath()
                    self.__adjustWorkingDirectory(args, wd)
                    started, pid = QProcess.startDetached(
                        args[0], args[1:], wd)
                    if not started:
                        E5MessageBox.critical(
                            None,
                            self.tr('Process Generation Error'),
                            self.tr('The Django process could not be'
                                    ' started.'))
                except DjangoNoSiteSelectedException:
                    pass
    
    def __createSuperUser(self):
        """
        Private slot to create a super user account.
        """
        consoleCmd = self.__isSpawningConsole(
            self.__plugin.getPreferences("ConsoleCommandNoClose"))[1]
        if consoleCmd:
            args = Utilities.parseOptionString(consoleCmd)
            args[0] = Utilities.getExecutablePath(args[0])
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("createsuperuser")
            try:
                wd = self.__sitePath()
                self.__adjustWorkingDirectory(args, wd)
                started, pid = QProcess.startDetached(args[0], args[1:], wd)
                if not started:
                    E5MessageBox.critical(
                        None,
                        self.tr('Process Generation Error'),
                        self.tr('The Django process could not be started.'))
            except DjangoNoSiteSelectedException:
                pass
    
    ##################################################################
    ## slots below implement session functions
    ##################################################################
    
    def __clearSessions(self):
        """
        Private slot to clear expired sessions.
        """
        title = self.tr("Clear Sessions")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("clearsessions")
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr("Expired sessions cleared successfully."))
        res = dia.startProcess(args, wd)
        if res:
            dia.exec_()
    
    ##################################################################
    ## slots below implement translation functions
    ##################################################################
    
    def __getLocale(self, filename):
        """
        Private method to extract the locale out of a file name.
        
        @param filename name of the file used for extraction (string)
        @return extracted locale (string) or None
        """
        if self.__e5project.getTranslationPattern():
            pattern = self.__e5project.getTranslationPattern()\
                .replace("%language%", "(.*?)")
            match = re.search(pattern, filename)
            if match is not None:
                loc = match.group(1)
                return loc
            else:
                loc = None
        else:
            loc = None
        
        return loc
    
    def __normalizeList(self, filenames):
        """
        Private method to normalize a list of file names.
        
        @param filenames list of file names to normalize (list of strings)
        @return normalized file names (list of strings)
        """
        nfilenames = []
        for filename in filenames:
            if filename.endswith(".mo"):
                filename = filename.replace(".mo", ".po")
            if filename not in nfilenames:
                nfilenames.append(filename)
        
        return nfilenames
    
    def __siteFilteredList(self, filenames):
        """
        Private method to filter a list of file names by site.
        
        @param filenames list of file names to be filtered (list of strings)
        @return file names belonging to the current site (list of strings)
        """
        site = self.__site()
        nfilenames = []
        for filename in filenames:
            if site == "" or filename.startswith(site + os.sep):
                nfilenames.append(filename)
        
        return nfilenames
    
    def __projectLanguageAdded(self, code):
        """
        Private slot handling the addition of a new language.
        
        @param code language code of the new language (string)
        """
        title = self.tr("Initializing message catalog for '{0}'")\
            .format(code)
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("makemessages")
        args.append("-l")
        args.append(code)
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No current site selected or no site created yet.'
                        ' Aborting...'))
            return
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr(
                "\nMessage catalog initialized successfully."))
        res = dia.startProcess(args, wd)
        if res:
            dia.exec_()
            
            langFile = self.__e5project.getTranslationPattern()\
                .replace("%language%", code)
            self.__e5project.appendFile(langFile)
    
    def updateSelectedCatalogs(self, filenames):
        """
        Public method to update the message catalogs.
        
        @param filenames list of file names (list of strings)
        """
        title = self.tr("Updating message catalogs")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No current site selected or no site created yet.'
                        ' Aborting...'))
            return
        
        argsLists = []
        
        for filename in self.__normalizeList(
                self.__siteFilteredList(filenames)):
            locale = self.__getLocale(filename)
            if locale:
                args = []
                args.append(self.__getPythonExecutable())
                args.append("manage.py")
                args.append("makemessages")
                args.append("--no-obsolete")
                args.append("-l")
                args.append(locale)
                argsLists.append(args)
        
        if len(argsLists) == 0:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No locales detected. Aborting...'))
            return
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr("\nMessage catalogs updated successfully."))
        res = dia.startBatchProcesses(argsLists, wd)
        if res:
            dia.exec_()
    
    def updateSelectedCatalogsWithObsolete(self, filenames):
        """
        Public method to update the message catalogs keeping obsolete messages.
        
        @param filenames list of filenames
        """
        title = self.tr("Updating message catalogs (keeping obsolete"
                        " messages)")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No current site selected or no site created yet.'
                        ' Aborting...'))
            return
        
        argsLists = []
        
        for filename in self.__normalizeList(
                self.__siteFilteredList(filenames)):
            locale = self.__getLocale(filename)
            if locale:
                args = []
                args.append(self.__getPythonExecutable())
                args.append("manage.py")
                args.append("makemessages")
                args.append("-l")
                args.append(locale)
                argsLists.append(args)
        
        if len(argsLists) == 0:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No locales detected. Aborting...'))
            return
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr("\nMessage catalogs updated successfully."))
        res = dia.startBatchProcesses(argsLists, wd)
        if res:
            dia.exec_()
    
    def updateCatalogs(self, filenames):
        """
        Public method to update the message catalogs.
        
        @param filenames list of filenames (not used)
        """
        title = self.tr("Updating message catalogs")
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("makemessages")
        args.append("-a")
        args.append("--no-obsolete")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No current site selected or no site created yet.'
                        ' Aborting...'))
            return
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr("\nMessage catalogs updated successfully."))
        res = dia.startProcess(args, wd)
        if res:
            dia.exec_()
    
    def updateCatalogsWithObsolete(self, filenames):
        """
        Public method to update the message catalogs keeping obsolete messages.
        
        @param filenames list of filenames (not used)
        """
        title = self.tr("Updating message catalogs (keeping obsolete"
                        " messages)")
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("makemessages")
        args.append("-a")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No current site selected or no site created yet.'
                        ' Aborting...'))
            return
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr("\nMessage catalogs updated successfully."))
        res = dia.startProcess(args, wd)
        if res:
            dia.exec_()
    
    def compileSelectedCatalogs(self, filenames):
        """
        Public method to update the message catalogs.
        
        @param filenames list of filenames
        """
        title = self.tr("Compiling message catalogs")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No current site selected or no site created yet.'
                        ' Aborting...'))
            return
        
        argsLists = []
        
        for filename in self.__normalizeList(
                self.__siteFilteredList(filenames)):
            locale = self.__getLocale(filename)
            if locale:
                args = []
                args.append(self.__getPythonExecutable())
                args.append("manage.py")
                args.append("compilemessages")
                args.append("-l")
                args.append(locale)
                argsLists.append(args)
        
        if len(argsLists) == 0:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No locales detected. Aborting...'))
            return
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr(
                "\nMessage catalogs compiled successfully."))
        res = dia.startBatchProcesses(argsLists, wd, mergedOutput=True)
        if res:
            dia.exec_()
            
            for entry in os.walk(self.__sitePath()):
                for fileName in entry[2]:
                    fullName = os.path.join(entry[0], fileName)
                    if fullName.endswith('.mo'):
                        self.__e5project.appendFile(fullName)
    
    def compileCatalogs(self, filenames):
        """
        Public method to compile the message catalogs.
        
        @param filenames list of filenames (not used)
        """
        title = self.tr("Compiling message catalogs")
        
        args = []
        args.append(self.__getPythonExecutable())
        args.append("manage.py")
        args.append("compilemessages")
        
        try:
            wd = self.__sitePath()
        except DjangoNoSiteSelectedException:
            E5MessageBox.warning(
                None,
                title,
                self.tr('No current site selected or no site created yet.'
                        ' Aborting...'))
            return
        
        dia = DjangoDialog(
            title,
            msgSuccess=self.tr(
                "\nMessage catalogs compiled successfully."))
        res = dia.startProcess(args, wd, mergedOutput=True)
        if res:
            dia.exec_()
            
            for entry in os.walk(self.__sitePath()):
                for fileName in entry[2]:
                    fullName = os.path.join(entry[0], fileName)
                    if fullName.endswith('.mo'):
                        self.__e5project.appendFile(fullName)
    
    def openPOEditor(self, poFile):
        """
        Public method to edit the given file in an external .po editor.
        
        @param poFile name of the .po file (string)
        """
        editor = self.__plugin.getPreferences("TranslationsEditor")
        if poFile.endswith(".po") and editor:
            try:
                wd = self.__sitePath()
            except DjangoNoSiteSelectedException:
                wd = ""
            started, pid = QProcess.startDetached(editor, [poFile], wd)
            if not started:
                E5MessageBox.critical(
                    None,
                    self.tr('Process Generation Error'),
                    self.tr('The translations editor process ({0}) could'
                            ' not be started.')
                    .format(os.path.basename(editor)))
    
    ##################################################################
    ## slots below implement check functions
    ##################################################################
    
    def __performCheck(self):
        """
        Private slot to inspect the project for common problems.
        """
        try:
            path = self.__sitePath()
        except DjangoNoSiteSelectedException:
            return
        
        from .DjangoCheckOptionsDialog import DjangoCheckOptionsDialog
        dlg = DjangoCheckOptionsDialog(
            self.__getPythonExecutable(), path, self.getRecentApplications(),
            self.__plugin.getPreferences("CheckDeployMode"),
        )
        if dlg.exec_() == QDialog.Accepted:
            deploy, tags, appsStr, settingsFile = dlg.getData()
            self.__plugin.setPreferences("CheckDeployMode", deploy)
            if appsStr != "":
                self.setMostRecentApplication(appsStr)
            apps = appsStr.split()
            
            args = []
            args.append(self.__getPythonExecutable())
            args.append("manage.py")
            args.append("check")
            for tag in tags:
                args.append("--tag")
                args.append(tag)
            if deploy:
                args.append("--deploy")
                if settingsFile:
                    args.append("--settings={0}".format(settingsFile))
            args += apps
            
            dia = DjangoDialog(self.tr("Check Project"))
            res = dia.startProcess(args, path, mergedOutput=True)
            if res:
                dia.exec_()

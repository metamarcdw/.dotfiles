# -*- coding: utf-8 -*-

# Copyright (c) 2013 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing the Django project plugin.
"""

from __future__ import unicode_literals

import os
import glob
import fnmatch

from PyQt5.QtCore import QCoreApplication, QObject, QTranslator

from E5Gui.E5Application import e5App

import Preferences

from Globals import isWindowsPlatform, isMacPlatform

from ProjectDjango.Project import Project

# Start-of-Header
name = "Django Project Plugin"
author = "Detlev Offenbach <detlev@die-offenbachs.de>"
autoactivate = True
deactivateable = True
version = "5.0.5"
className = "ProjectDjangoPlugin"
packageName = "ProjectDjango"
shortDescription = "Project support for Django projects."
longDescription = \
    """This plugin implements project support for Django projects."""
needsRestart = False
pyqtApi = 2
python2Compatible = True
# End-of-Header

error = ""

djangoPluginObject = None


def apiFiles(language):
    """
    Module function to return the API files made available by this plugin.
    
    @param language language to get APIs for (string)
    @return list of API filenames (list of string)
    """
    if language in ["Python3", "Python2"]:
        apisDir = \
            os.path.join(os.path.dirname(__file__), "ProjectDjango", "APIs")
        apis = glob.glob(os.path.join(apisDir, '*.api'))
    else:
        apis = []
    return apis


def createDjangoPage(configDlg):
    """
    Module function to create the Django configuration page.
    
    @param configDlg reference to the configuration dialog
    @return reference to the configuration page
    """
    global djangoPluginObject
    from ProjectDjango.ConfigurationPage.DjangoPage import DjangoPage
    page = DjangoPage(djangoPluginObject)
    return page
    

def getConfigData():
    """
    Module function returning data as required by the configuration dialog.
    
    @return dictionary containing the relevant data
    """
    return {
        "djangoPage": [
            QCoreApplication.translate("ProjectDjangoPlugin", "Django"),
            os.path.join("ProjectDjango", "icons", "django.png"),
            createDjangoPage, None, None],
    }


def prepareUninstall():
    """
    Module function to prepare for an uninstallation.
    """
    Preferences.removeProjectBrowserFlags(ProjectDjangoPlugin.PreferencesKey)
    Preferences.Prefs.settings.remove(ProjectDjangoPlugin.PreferencesKey)
    Preferences.Prefs.rsettings.remove(ProjectDjangoPlugin.PreferencesKey)


class ProjectDjangoPlugin(QObject):
    """
    Class implementing the Django project plugin.
    """
    PreferencesKey = "Django"
    
    lexerAssociations = {
        "*.html": "Pygments|HTML+Django/Jinja",
        "*.htm": "Pygments|HTML+Django/Jinja",
    }
    
    def __init__(self, ui):
        """
        Constructor
        
        @param ui reference to the user interface object (UI.UserInterface)
        """
        QObject.__init__(self, ui)
        self.__ui = ui
        self.__initialize()
        
        self.__defaults = {
            "VirtualEnvironmentPy2": "",
            "VirtualEnvironmentPy3": "",
            
            "UsePlainPythonPy2": False,
            "UsePlainPythonPy3": False,
            
            "ServerAddress": "",
            
            "RecentNumberApps": 10,
            "UseIPv6": False,
            
            "TranslationsEditor": "",
            
            "UseExternalBrowser": False,
            
            "CheckDeployMode": False,
        }
        if isWindowsPlatform():
            self.__defaults["ConsoleCommandNoClose"] = "cmd.exe /k"
            self.__defaults["ConsoleCommand"] = "cmd.exe /c"
        elif isMacPlatform():
            self.__defaults["ConsoleCommandNoClose"] = "xterm -hold -e"
            self.__defaults["ConsoleCommand"] = "xterm -e"
        else:
            self.__defaults["ConsoleCommandNoClose"] = "konsole --noclose -e"
            self.__defaults["ConsoleCommand"] = "konsole -e"
        
        self.__translator = None
        self.__loadTranslator()
    
    def __initialize(self):
        """
        Private slot to (re)initialize the plugin.
        """
        self.__object = None
        
        self.__mainAct = None
        self.__mainMenu = None
        
        self.__e5project = e5App().getObject("Project")
        
        self.__supportedVariants = []
    
    def activate(self):
        """
        Public method to activate this plugin.
        
        @return tuple of None and activation status (boolean)
        """
        global djangoPluginObject
        djangoPluginObject = self
        
        self.__object = Project(self, self.__ui)
        self.__object.initActions()
        e5App().registerPluginObject("ProjectDjango", self.__object)
        
        self.__mainMenu = self.__object.initMenu()
        
        self.__supportedVariants = self.__object.supportedPythonVariants()
        
        if self.__supportedVariants:
            self.__e5project.registerProjectType(
                "Django", self.tr("Django"),
                self.fileTypesCallback,
                lexerAssociationCallback=self.lexerAssociationCallback,
                binaryTranslationsCallback=self.binaryTranslationsCallback,
                progLanguages=self.__supportedVariants[:])
        
        from Project.ProjectBrowser import SourcesBrowserFlag, \
            FormsBrowserFlag, TranslationsBrowserFlag, OthersBrowserFlag
        Preferences.setProjectBrowserFlagsDefault(
            "Django",
            SourcesBrowserFlag | FormsBrowserFlag |
            TranslationsBrowserFlag | OthersBrowserFlag,
        )
        
        if self.__e5project.isOpen():
            self.__projectOpened()
            self.__object.projectOpenedHooks()
        
        e5App().getObject("Project").projectOpened.connect(
            self.__projectOpened)
        e5App().getObject("Project").projectClosed.connect(
            self.__projectClosed)
        e5App().getObject("Project").newProject.connect(
            self.__projectOpened)
        
        e5App().getObject("Project").projectOpenedHooks.connect(
            self.__object.projectOpenedHooks)
        e5App().getObject("Project").projectClosedHooks.connect(
            self.__object.projectClosedHooks)
        e5App().getObject("Project").newProjectHooks.connect(
            self.__object.projectOpenedHooks)
        
        e5App().getObject("Project").projectAboutToBeCreated.connect(
            self.__object.startProjectOrApplication)
        e5App().getObject("Project").newProject.connect(
            self.__object.newProjectCreated)
        
        return None, True
    
    def deactivate(self):
        """
        Public method to deactivate this plugin.
        """
        e5App().unregisterPluginObject("ProjectDjango")
        
        e5App().getObject("Project").projectOpened.disconnect(
            self.__projectOpened)
        e5App().getObject("Project").projectClosed.disconnect(
            self.__projectClosed)
        e5App().getObject("Project").newProject.disconnect(
            self.__projectOpened)
        
        e5App().getObject("Project").projectOpenedHooks.disconnect(
            self.__object.projectOpenedHooks)
        e5App().getObject("Project").projectClosedHooks.disconnect(
            self.__object.projectClosedHooks)
        e5App().getObject("Project").newProjectHooks.disconnect(
            self.__object.projectOpenedHooks)
        
        e5App().getObject("Project").projectAboutToBeCreated.disconnect(
            self.__object.startProjectOrApplication)
        e5App().getObject("Project").newProject.disconnect(
            self.__object.newProjectCreated)
        
        self.__e5project.unregisterProjectType("Django")
        
        self.__object.projectClosedHooks()
        self.__projectClosed()
        
        self.__initialize()
    
    def __loadTranslator(self):
        """
        Private method to load the translation file.
        """
        if self.__ui is not None:
            loc = self.__ui.getLocale()
            if loc and loc != "C":
                locale_dir = os.path.join(
                    os.path.dirname(__file__), "ProjectDjango", "i18n")
                translation = "django_{0}".format(loc)
                translator = QTranslator(None)
                loaded = translator.load(translation, locale_dir)
                if loaded:
                    self.__translator = translator
                    e5App().installTranslator(self.__translator)
                else:
                    print("Warning: translation file '{0}' could not be"
                          " loaded.".format(translation))
                    print("Using default.")
    
    def __projectOpened(self):
        """
        Private slot to handle the projectOpened signal.
        """
        if self.__e5project.getProjectType() == "Django":
            projectAct = self.__ui.getMenuBarAction("project")
            actions = self.__ui.menuBar().actions()
            insertAct = actions[actions.index(projectAct) + 1]
            self.__mainAct = self.__ui.menuBar().insertMenu(
                insertAct, self.__mainMenu)
    
    def __projectClosed(self):
        """
        Private slot to handle the projectClosed signal.
        """
        if self.__mainAct is not None:
            self.__ui.menuBar().removeAction(self.__mainAct)
            self.__mainAct = None
            self.__object.projectClosed()
    
    def fileTypesCallback(self):
        """
        Public method get the filetype associations of the Django project type.
        
        @return dictionary with file type associations
        """
        if self.__e5project.getProjectType() == "Django":
            fileTypes = {
                "*.html": "FORMS",
                "*.htm": "FORMS",
                "*.js": "SOURCES",
                "*.pot": "TRANSLATIONS",
                "*.po": "TRANSLATIONS",
                "*.mo": "TRANSLATIONS",
                "*.py": "SOURCES",
            }
        else:
            fileTypes = {}
        return fileTypes
    
    def lexerAssociationCallback(self, filename):
        """
        Public method to get the lexer association of the Django project type
        for a file.
        
        @param filename name of the file (string)
        @return name of the lexer (string) (Pygments lexers are prefixed with
            'Pygments|')
        """
        for pattern, language in self.lexerAssociations.items():
            if fnmatch.fnmatch(filename, pattern):
                return language
        
        return ""
    
    def binaryTranslationsCallback(self, filename):
        """
        Public method to determine the filename of a compiled translation file
        given the translation source file.
        
        @param filename name of the translation source file (string)
        @return name of the binary translation file (string)
        """
        if filename.endswith(".po"):
            filename = filename.replace(".po", ".mo")
        return filename
    
    def getPreferences(self, key):
        """
        Public method to retrieve the various settings.
        
        @param key the key of the value to get
        @return the requested setting
        """
        if key in ["RecentNumberApps"]:
            return int(Preferences.Prefs.settings.value(
                self.PreferencesKey + "/" + key, self.__defaults[key]))
        elif key in ["UsePlainPythonPy2", "UsePlainPythonPy3", "UseIPv6",
                     "UseExternalBrowser", "CheckDeployMode"]:
            return Preferences.toBool(Preferences.Prefs.settings.value(
                self.PreferencesKey + "/" + key, self.__defaults[key]))
        else:
            return Preferences.Prefs.settings.value(
                self.PreferencesKey + "/" + key, self.__defaults[key])
    
    def setPreferences(self, key, value):
        """
        Public method to store the various settings.
        
        @param key the key of the setting to be set (string)
        @param value the value to be set
        """
        Preferences.Prefs.settings.setValue(
            self.PreferencesKey + "/" + key, value)
        
        if key in ["VirtualEnvironmentPy2", "VirtualEnvironmentPy3"]:
            self.__reregisterProjectType()
        elif key == "TranslationsEditor":
            if self.__object:
                self.__object.registerOpenHook()
    
    def __reregisterProjectType(self):
        """
        Private method to re-register the project type.
        """
        supportedVariants = self.__object.supportedPythonVariants()
        if supportedVariants != self.__supportedVariants:
            # step 1: unregister
            self.__e5project.unregisterProjectType("Django")
            
            # step 2: register again with new language settings
            self.__supportedVariants = supportedVariants
            if self.__supportedVariants:
                self.__e5project.registerProjectType(
                    "Django", self.tr("Django"),
                    self.fileTypesCallback,
                    lexerAssociationCallback=self.lexerAssociationCallback,
                    binaryTranslationsCallback=self.binaryTranslationsCallback,
                    progLanguages=self.__supportedVariants[:])
    
    def getMenu(self, name):
        """
        Public method to get a reference to the requested menu.
        
        @param name name of the menu (string)
        @return reference to the menu (QMenu) or None, if no
            menu with the given name exists
        """
        if self.__object is not None:
            return self.__object.getMenu(name)
        else:
            return None
    
    def getMenuNames(self):
        """
        Public method to get the names of all menus.
        
        @return menu names (list of string)
        """
        if self.__object is not None:
            return list(self.__menus.keys())
        else:
            return []

#
# eflag: noqa = M801

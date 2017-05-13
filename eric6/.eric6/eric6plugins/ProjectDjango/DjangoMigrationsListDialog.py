# -*- coding: utf-8 -*-

# Copyright (c) 2016 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog show a list of all available migrations.
"""

from __future__ import unicode_literals
try:
    str = unicode    # __IGNORE_WARNING__
except NameError:
    pass

from PyQt5.QtCore import pyqtSlot, Qt, QProcess, QTimer, QPoint
from PyQt5.QtWidgets import QDialog, QDialogButtonBox, QAbstractButton, \
    QHeaderView, QTreeWidgetItem, QMenu, QAbstractItemView, QInputDialog, \
    QLineEdit

from E5Gui import E5MessageBox

from .Ui_DjangoMigrationsListDialog import Ui_DjangoMigrationsListDialog

import Preferences


class DjangoMigrationsListDialog(QDialog, Ui_DjangoMigrationsListDialog):
    """
    Class implementing a dialog show a list of all available migrations.
    """
    MigrationsListMode = "L"
    MigrationsPlanMode = "P"
    
    def __init__(self, mode, django, parent=None):
        """
        Constructor
        
        @param mode mode of the dialog
        @type str
        @param django reference to the Django project object
        @type Project
        @param parent reference to the parent widget
        @type QWidget
        """
        super(DjangoMigrationsListDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Cancel).setDefault(True)
        
        self.ioEncoding = Preferences.getSystem("IOEncoding")
        
        self.proc = QProcess()
        self.proc.finished.connect(self.__procFinished)
        self.proc.readyReadStandardOutput.connect(self.__readStdout)
        self.proc.readyReadStandardError.connect(self.__readStderr)
        
        self.__pyExe = ""
        self.__sitePath = ""
        
        self.__django = django
        
        self.__mode = mode
        if self.__mode == DjangoMigrationsListDialog.MigrationsListMode:
            self.setWindowTitle(self.tr("Available Migrations"))
            self.migrationsList.setHeaderLabels([
                self.tr("Name"),
            ])
            self.migrationsList.setSelectionMode(
                QAbstractItemView.ExtendedSelection)
        else:
            self.setWindowTitle(self.tr("Migrations Plan"))
            self.migrationsList.setHeaderLabels([
                self.tr("Migration"),
                self.tr("Dependencies"),
            ])
            self.migrationsList.setSelectionMode(
                QAbstractItemView.SingleSelection)
        
        self.refreshButton = self.buttonBox.addButton(
            self.tr("&Refresh"), QDialogButtonBox.ActionRole)
        self.refreshButton.setToolTip(
            self.tr("Press to refresh the list"))
        self.refreshButton.setEnabled(False)
    
    @pyqtSlot(QAbstractButton)
    def on_buttonBox_clicked(self, button):
        """
        Private slot called by a button of the button box clicked.
        
        @param button button that was clicked
        @type QAbstractButton
        """
        if button == self.buttonBox.button(QDialogButtonBox.Close):
            self.close()
        elif button == self.buttonBox.button(QDialogButtonBox.Cancel):
            self.__finish()
        elif button == self.refreshButton:
            self.on_refreshButton_clicked()
    
    def __finish(self):
        """
        Private slot called when the process finished or the user pressed the
        button.
        """
        if self.proc is not None and \
           self.proc.state() != QProcess.NotRunning:
            self.proc.terminate()
            QTimer.singleShot(2000, self.proc.kill)
            self.proc.waitForFinished(3000)
        
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Close).setDefault(True)
        
        self.refreshButton.setEnabled(True)
        
        self.__resizeColumns()
    
    def __procFinished(self, exitCode, exitStatus):
        """
        Private slot connected to the finished signal.
        
        @param exitCode exit code of the process (integer)
        @param exitStatus exit status of the process (QProcess.ExitStatus)
        """
        self.__finish()
    
    def __resizeColumns(self):
        """
        Private method to resize the list columns.
        """
        self.migrationsList.header().resizeSections(
            QHeaderView.ResizeToContents)
        if self.__mode == DjangoMigrationsListDialog.MigrationsListMode:
            self.migrationsList.header().setStretchLastSection(True)
    
    def start(self, pythonExecutable, sitePath):
        """
        Public slot used to start the process.
        
        @param pythonExecutable Python executable to be used
        @type str
        @param sitePath path of the site
        @type str
        @return flag indicating a successful start of the process (boolean)
        """
        self.__pyExe = pythonExecutable
        self.__sitePath = sitePath
        
        self.errorGroup.hide()
        self.migrationsList.clear()
        
        self.__lastTopItem = None
        
        if sitePath:
            self.proc.setWorkingDirectory(sitePath)
        
        args = []
        args.append("manage.py")
        args.append("showmigrations")
        if self.__mode == DjangoMigrationsListDialog.MigrationsListMode:
            args.append("--list")
        else:
            args.append("--plan")
            args.append("--verbosity")
            args.append("2")
        
        self.proc.start(pythonExecutable, args)
        procStarted = self.proc.waitForStarted()
        if not procStarted:
            self.buttonBox.setFocus()
            E5MessageBox.critical(
                self,
                self.tr('Process Generation Error'),
                self.tr(
                    'The process {0} could not be started. '
                    'Ensure, that it is in the search path.'
                ).format(pythonExecutable))
        return procStarted
    
    def __readStdout(self):
        """
        Private slot to handle the readyReadStdout signal.
        
        It reads the output of the process, formats it and inserts it into
        the contents pane.
        """
        while self.proc.canReadLine():
            s = str(self.proc.readLine(), self.ioEncoding, 'replace').rstrip()
            if self.__mode == DjangoMigrationsListDialog.MigrationsListMode:
                self.__createListItem(s)
            else:
                self.__createPlanItem(s)
    
    def __createListItem(self, line):
        """
        Private method to create an item for list mode.
        
        @param line line of text
        @type str
        """
        if not line.startswith(" "):
            # application name
            self.__lastTopItem = QTreeWidgetItem(
                self.migrationsList, [line.strip()])
            self.__lastTopItem.setExpanded(True)
        else:
            # migration name
            line = line.strip()
            if line.startswith("["):
                applied = line[:3]
                name = line[3:].strip()
                if self.__lastTopItem:
                    itm = QTreeWidgetItem(self.__lastTopItem, [name])
                else:
                    itm = QTreeWidgetItem(self.migrationsList, [name])
                if applied[1] == " ":
                    itm.setCheckState(0, Qt.Unchecked)
                else:
                    itm.setCheckState(0, Qt.Checked)
    
    def __createPlanItem(self, line):
        """
        Private method to create an item for plan mode.
        
        @param line line of text
        @type str
        """
        line = line.strip()
        applied = line[:3]
        parts = line[3:].strip().split(None, 2)
        if len(parts) == 3:
            dependencies = "\n".join([
                d.strip() for d in parts[2].strip()[1:-1].split(",")
            ])
            itm = QTreeWidgetItem(self.migrationsList, [
                parts[0].strip(),
                dependencies,
            ])
        else:
            itm = QTreeWidgetItem(self.migrationsList, [
                parts[0].strip(),
                "",
            ])
        if applied[1] != " ":
            itm.setCheckState(0, Qt.Checked)
    
    def __readStderr(self):
        """
        Private slot to handle the readyReadStderr signal.
        
        It reads the error output of the process and inserts it into the
        error pane.
        """
        if self.proc is not None:
            self.errorGroup.show()
            s = str(self.proc.readAllStandardError(), self.ioEncoding,
                    'replace')
            self.errors.insertPlainText(s)
            self.errors.ensureCursorVisible()
    
    @pyqtSlot()
    def on_refreshButton_clicked(self):
        """
        Private slot to refresh the log.
        """
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setDefault(True)
        
        self.refreshButton.setEnabled(False)
        
        self.start(self.__pyExe, self.__sitePath)
    
    @pyqtSlot(QPoint)
    def on_migrationsList_customContextMenuRequested(self, pos):
        """
        Private slot to show the context menu.
        
        @param pos position the context menu was requested at
        @type QPoint
        """
        menu = QMenu(self.migrationsList)
        menu.addAction(self.tr("Apply All Migrations"),
                       self.__applyAllMigrations)
        
        if self.__mode == DjangoMigrationsListDialog.MigrationsListMode:
            selItems = self.migrationsList.selectedItems()
            if len(selItems) > 0:
                selApps = []
                for itm in selItems:
                    if itm.parent() is None:
                        selApps.append(itm)
                
                menu.addAction(
                    self.tr("Apply Selected Migrations"),
                    self.__applyMigration).setEnabled(len(selItems) == 1)
                menu.addAction(
                    self.tr("Unapply Migrations"),
                    self.__unapplyMigration).setEnabled(len(selApps) == 1)
                menu.addSeparator()
                menu.addAction(
                    self.tr("Make Migrations"),
                    self.__makeMigrations).setEnabled(len(selApps) > 0)
                menu.addAction(
                    self.tr("Make Migrations (dry-run)"),
                    lambda: self.__makeMigrations(dryRun=True))\
                    .setEnabled(len(selApps) > 0)
        else:
            menu.addAction(self.tr("Apply Selected Migrations"),
                           self.__applyMigration)
        
        menu.popup(self.migrationsList.mapToGlobal(pos))
    
    def __applyAllMigrations(self):
        """
        Private slot to apply all migrations.
        """
        self.__django.applyMigrations()
        self.on_refreshButton_clicked()
    
    def __applyMigration(self):
        """
        Private slot to apply the selected migrations.
        """
        itm = self.migrationsList.selectedItems()[0]
        if self.__mode == DjangoMigrationsListDialog.MigrationsListMode:
            if itm.parent() is None:
                # app item
                app = itm.text(0)
                migration = None
            else:
                migration = itm.text(0)
                app = itm.parent().text(0)
        else:
            app, migration = itm.text(0).split(".", 1)
        
        self.__django.applyMigrations(app=app, migration=migration)
        
        self.on_refreshButton_clicked()
    
    def __unapplyMigration(self):
        """
        Private slot to unapply the selected migrations.
        """
        if self.__mode == DjangoMigrationsListDialog.MigrationsListMode:
            itm = self.migrationsList.selectedItems()[0]
            if itm.parent() is None:
                # only valid for app entries
                app = itm.text(0)
                self.__django.applyMigrations(app=app, migration="zero")
                
                self.on_refreshButton_clicked()
    
    def __makeMigrations(self, dryRun=False):
        """
        Private slot to make migrations for the selected apps.
        
        @param dryRun dlag indicating a dry-run
        @type bool
        """
        apps = []
        for itm in self.migrationsList.selectedItems():
            if itm.parent() is None:
                apps.append(itm.text(0))
        
        if apps:
            migration, ok = QInputDialog.getText(
                self,
                self.tr("Make Migrations"),
                self.tr("Enter a name for the migrations (leave empty to"
                        " use system supplied name):"),
                QLineEdit.Normal)
            if ok:
                self.__django.makeMigrations(apps, migration, dryRun)
            
            self.on_refreshButton_clicked()

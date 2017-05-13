# -*- coding: utf-8 -*-

# Copyright (c) 2016 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter the options for a check operation.
"""

from __future__ import unicode_literals
try:
    str = unicode    # __IGNORE_WARNING__
except NameError:
    pass

import os

from PyQt5.QtCore import pyqtSlot, Qt, QProcess
from PyQt5.QtWidgets import QDialog

from E5Gui import E5FileDialog

from .Ui_DjangoCheckOptionsDialog import Ui_DjangoCheckOptionsDialog

import Preferences
import Utilities
import UI.PixmapCache


class DjangoCheckOptionsDialog(QDialog, Ui_DjangoCheckOptionsDialog):
    """
    Class implementing a dialog to enter the options for a check operation.
    """
    def __init__(self, python, path, apps, deployMode, parent=None):
        """
        Constructor
        
        @param python path of the Python executable
        @type str
        @param path site path to run the manage.py script with
        @type str
        @param apps list of recently used application strings
        @type list of str
        @param deployMode flag indicating to activate the deployment mode
        @type bool
        @param parent reference to the parent widget
        @type QWidget
        """
        super(DjangoCheckOptionsDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.settingsFileButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        
        self.__python = python
        self.__path = path
        
        self.appsComboBox.addItems([""] + apps)
        
        self.deployCheckBox.setChecked(deployMode)
        self.on_deployCheckBox_toggled(deployMode)
    
    @pyqtSlot(bool)
    def on_deployCheckBox_toggled(self, checked):
        """
        Private slot handling a change of the deploy check box.
        
        @param checked state of the check box
        @type bool
        """
        self.settingsFileGroup.setEnabled(checked)
        self.__populateTagsList(checked)
    
    @pyqtSlot()
    def on_settingsFileButton_clicked(self):
        """
        Private slot to select a settings file via a file selection dialog.
        """
        path = self.__moduleToPath(self.settingsFileEdit.text())
        if not path:
            path = self.__path
        settingsFile = E5FileDialog.getOpenFileName(
            self,
            self.tr("Select settings file"),
            path,
            self.tr("Python Files (*.py)"))
        
        if settingsFile:
            self.settingsFileEdit.setText(self.__pathToModule(settingsFile))
    
    def __pathToModule(self, path):
        """
        Private method to convert a file path including a .py extension to a
        module name.
        
        @param path file path to be converted
        @type str
        @return module name
        @rtype str
        """
        if self.__path.endswith(("/", "\\")):
            # cope with a bug in eric
            start = self.__path[:-1]
        else:
            start = self.__path
        relPath = Utilities.relativeUniversalPath(path, start)
        mod = os.path.splitext(relPath)[0].replace("/", ".")
        return mod
    
    def __moduleToPath(self, moduleName):
        """
        Private method to convert a module name to an file path.
        
        @param moduleName module name to be converted
        @type str
        @return file path
        @rtype str
        """
        if moduleName:
            mod = "{0}.py".format(moduleName.replace(".", "/"))
            if not os.path.isabs(mod):
                mod = os.path.join(self.__path, mod)
            
            path = Utilities.toNativeSeparators(mod)
        else:
            path = ""
        return path
    
    def __populateTagsList(self, deployMode):
        """
        Private slot to populate the tags list.
        
        @param deployMode flag indicating the deployment mode
        @type bool
        """
        # step 1: save the selected tags
        selectedTags = []
        for itm in self.tagsList.selectedItems():
            selectedTags.append(itm.text())
        
        # step 2: clear the list
        self.tagsList.clear()
        
        # step 3: get the available tags and populate the list
        args = []
        args.append("manage.py")
        args.append("check")
        args.append("--list-tags")
        if deployMode:
            args.append("--deploy")
        
        proc = QProcess()
        if self.__path:
            proc.setWorkingDirectory(self.__path)
        proc.start(self.__python, args)
        if proc.waitForStarted():
            if proc.waitForFinished():
                output = str(proc.readAllStandardOutput(),
                             Preferences.getSystem("IOEncoding"), 'replace')
                for line in output.splitlines():
                    self.tagsList.addItem(line.strip())
        
        # step 4: re-select tags
        for tag in selectedTags:
            items = self.tagsList.findItems(tag, Qt.MatchCaseSensitive)
            if items:
                items[0].setSelected(True)
    
    def getData(self):
        """
        Public method to get the options for the check operation.
        
        @return tuple containing the deployment flag, list of selected tags,
            applications string and the settings file
        @rtype tuple of bool, list of str, str and str
        """
        selectedTags = []
        for itm in self.tagsList.selectedItems():
            selectedTags.append(itm.text())
        
        return (
            self.deployCheckBox.isChecked(),
            selectedTags,
            self.appsComboBox.currentText(),
            self.settingsFileEdit.text(),
        )

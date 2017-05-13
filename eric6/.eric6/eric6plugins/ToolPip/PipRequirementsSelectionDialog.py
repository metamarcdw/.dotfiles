# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#


"""
Module implementing a dialog to enter a requirements file.
"""

from __future__ import unicode_literals

import os

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog, QDialogButtonBox

from E5Gui import E5FileDialog

from .Ui_PipRequirementsSelectionDialog import \
    Ui_PipRequirementsSelectionDialog

import Utilities
import UI.PixmapCache


class PipRequirementsSelectionDialog(QDialog,
                                     Ui_PipRequirementsSelectionDialog):
    """
    Class implementing a dialog to enter a requirements file.
    """
    def __init__(self, plugin, parent=None):
        """
        Constructor
        
        @param plugin reference to the plugin object (ToolPipPlugin)
        @param parent reference to the parent widget (QWidget)
        """
        super(PipRequirementsSelectionDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.fileButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(False)
        
        self.__default = self.tr("<Default>")
        pipExecutables = sorted(plugin.getPreferences("PipExecutables"))
        self.pipComboBox.addItem(self.__default)
        self.pipComboBox.addItems(pipExecutables)
        
        msh = self.minimumSizeHint()
        self.resize(max(self.width(), msh.width()), msh.height())
    
    @pyqtSlot()
    def on_fileButton_clicked(self):
        """
        Private slot to enter the requirements file via a file selection
        dialog.
        """
        fileName = E5FileDialog.getOpenFileName(
            self,
            self.tr("Select the requirements file"),
            self.requirementsEdit.text() or os.path.expanduser("~"),
            self.tr("Text Files (*.txt);;All Files (*)")
        )
        if fileName:
            self.requirementsEdit.setText(
                Utilities.toNativeSeparators(fileName))
    
    @pyqtSlot(str)
    def on_requirementsEdit_textChanged(self, txt):
        """
        Private slot handling entering the name of a requirements file.
        
        @param txt name of the requirements file (string)
        """
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(
            bool(txt) and
            os.path.exists(Utilities.toNativeSeparators(txt))
        )
    
    def getData(self):
        """
        Public method to get the entered data.
        
        @return tuple with the pip command (string) and the name of the
            requirements file (string)
        """
        command = self.pipComboBox.currentText()
        if command == self.__default:
            command = ""
        
        return command, self.requirementsEdit.text()

# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter package specifications.
"""

from __future__ import unicode_literals

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog, QDialogButtonBox

from .Ui_PipPackagesInputDialog import Ui_PipPackagesInputDialog


class PipPackagesInputDialog(QDialog, Ui_PipPackagesInputDialog):
    """
    Class documentation goes here.
    """
    def __init__(self, plugin, title, parent=None):
        """
        Constructor
        
        @param plugin reference to the plugin object (ToolPipPlugin)
        @param title dialog title (string)
        @param parent reference to the parent widget (QWidget)
        """
        super(PipPackagesInputDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.setWindowTitle(title)
        
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(False)
        
        self.__default = self.tr("<Default>")
        pipExecutables = sorted(plugin.getPreferences("PipExecutables"))
        self.pipComboBox.addItem(self.__default)
        self.pipComboBox.addItems(pipExecutables)
        
        msh = self.minimumSizeHint()
        self.resize(max(self.width(), msh.width()), msh.height())
    
    @pyqtSlot(str)
    def on_packagesEdit_textChanged(self, txt):
        """
        Private slot handling entering package names.
        
        @param txt name of the requirements file (string)
        """
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(bool(txt))
    
    def getData(self):
        """
        Public method to get the entered data.
        
        @return tuple with the pip command (string) and the list of
            package specifications (list of string)
        """
        command = self.pipComboBox.currentText()
        if command == self.__default:
            command = ""
        packages = [p.strip() for p in self.packagesEdit.text().split()]
        
        return command, packages

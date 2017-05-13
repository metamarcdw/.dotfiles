# -*- coding: utf-8 -*-

# Copyright (c) 2014 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter the data of a remote repository.
"""

from __future__ import unicode_literals

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog, QDialogButtonBox

from .Ui_GitAddRemoteDialog import Ui_GitAddRemoteDialog


class GitAddRemoteDialog(QDialog, Ui_GitAddRemoteDialog):
    """
    Class implementing a dialog to enter the data of a remote repository.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget (QWidget)
        """
        super(GitAddRemoteDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.__updateOK()
    
    def __updateOK(self):
        """
        Private method to update the status of the OK button.
        """
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(
            self.nameEdit.text() != "" and
            self.urlEdit.text() != "")
    
    @pyqtSlot(str)
    def on_nameEdit_textChanged(self, txt):
        """
        Private slot handling changes of the entered name.
        
        @param txt current text (string)
        """
        self.__updateOK()
    
    @pyqtSlot(str)
    def on_urlEdit_textChanged(self, txt):
        """
        Private slot handling changes of the entered URL.
        
        @param txt current text (string)
        """
        self.__updateOK()
    
    def getData(self):
        """
        Public method to get the entered data.
        
        @return tuple with the name (string) and URL (string) of
            the remote repository
        """
        return self.nameEdit.text(), self.urlEdit.text()

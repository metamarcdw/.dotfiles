# -*- coding: utf-8 -*-

# Copyright (c) 2013 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter the data for the 'loaddata' command.
"""

from __future__ import unicode_literals

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog, QDialogButtonBox

from E5Gui import E5FileDialog

from .Ui_DjangoLoaddataDataDialog import Ui_DjangoLoaddataDataDialog

import Utilities
import UI.PixmapCache


class DjangoLoaddataDataDialog(QDialog, Ui_DjangoLoaddataDataDialog):
    """
    Class implementing a dialog to enter the data for the 'loaddata' command.
    """
    def __init__(self, project, parent=None):
        """
        Constructor
        
        @param project reference to the Django project object
        @param parent reference to the parent widget (QWidget)
        """
        super(DjangoLoaddataDataDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.fixtureFileButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        
        self.__project = project
        
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(False)
        
        msh = self.minimumSizeHint()
        self.resize(max(self.width(), msh.width()), msh.height())
    
    @pyqtSlot(str)
    def on_fixturesEdit_textChanged(self, txt):
        """
        Private slot to handle a change of the fixtures text.
        
        @param txt text of the line edit (string)
        """
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(bool(txt))
    
    @pyqtSlot()
    def on_fixtureFileButton_clicked(self):
        """
        Private slot to select a fixture file via a file selection dialog.
        """
        fileFilters = self.tr("JSON Files (*.json);;XML Files (*.xml);;")
        try:
            import yaml     # __IGNORE_WARNING__
            fileFilters += self.tr("YAML Files (*.yaml);;")
        except ImportError:
            pass
        fileFilters += self.tr("All Files (*)")
        
        fixtureFiles = E5FileDialog.getOpenFileNames(
            self,
            self.tr("Select fixture file"),
            self.__project.getProjectPath(),
            fileFilters)
        
        if fixtureFiles:
            self.fixturesEdit.setText(" ".join(
                [Utilities.toNativeSeparators(f) for f in fixtureFiles]))
    
    def getData(self):
        """
        Public method to get the data entered into the dialog.
        
        @return list of fixtures (list of strings)
        """
        fixturesStr = self.fixturesEdit.text()
        fixtures = fixturesStr.split()
        
        return fixtures

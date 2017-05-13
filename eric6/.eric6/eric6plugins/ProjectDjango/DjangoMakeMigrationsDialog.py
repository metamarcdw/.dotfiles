# -*- coding: utf-8 -*-

# Copyright (c) 2016 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter the data needed to make migrations.
"""

from __future__ import unicode_literals

from PyQt5.QtWidgets import QDialog

from .Ui_DjangoMakeMigrationsDialog import Ui_DjangoMakeMigrationsDialog


class DjangoMakeMigrationsDialog(QDialog, Ui_DjangoMakeMigrationsDialog):
    """
    Class implementing a dialog to enter the data needed to make migrations.
    """
    def __init__(self, recentApps, parent=None):
        """
        Constructor
        
        @param recentApps list of recently entered applications
        @type list of str
        @param parent reference to the parent widget
        @type QWidget
        """
        super(DjangoMakeMigrationsDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.applicationsComboBox.addItems(recentApps)
    
    def getData(self):
        """
        Public method to get the data for the migration.
        
        @return tuple containing the application names, a migration name
            and the dry-run flag
        @rtype tuple of two str and a bool
        """
        return (
            self.applicationsComboBox.currentText(),
            self.nameEdit.text(),
            self.dryrunCheckBox.isChecked(),
        )

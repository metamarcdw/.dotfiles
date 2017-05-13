# -*- coding: utf-8 -*-

# Copyright (c) 2016 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to select an application and migration.
"""

from __future__ import unicode_literals

import os

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QDialog

from .Ui_DjangoMigrationSelectionDialog import \
    Ui_DjangoMigrationSelectionDialog


class DjangoMigrationSelectionDialog(QDialog,
                                     Ui_DjangoMigrationSelectionDialog):
    """
    Class implementing a dialog to select an application and migration.
    """
    def __init__(self, migrations, migrationRequired=False, parent=None):
        """
        Constructor
        
        @param migrations dictionary containing the available migrations
        @type dict
        @param migrationRequired flag indicating that a migration must be
            selected
        @type bool
        @param parent reference to the parent widget
        @type QWidget
        """
        super(DjangoMigrationSelectionDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.__appliedIcon = QIcon(os.path.join(
            os.path.dirname(__file__), "icons", "applied.png"))
        
        self.__migrationRequired = migrationRequired
        
        self.__migrations = migrations
        self.applicationComboBox.addItems(sorted(self.__migrations.keys()))
        self.on_applicationComboBox_activated(
            self.applicationComboBox.currentText())
        
        msh = self.minimumSizeHint()
        self.resize(max(self.width(), msh.width()), msh.height())
    
    @pyqtSlot(str)
    def on_applicationComboBox_activated(self, app):
        """
        Private slot to update the migrations combo box.
        
        @param app name of the selected application
        @type str
        """
        self.migrationsComboBox.clear()
        if not self.__migrationRequired:
            self.migrationsComboBox.addItem("")
        for applied, migration in self.__migrations[app]:
            if applied:
                self.migrationsComboBox.addItem(self.__appliedIcon, migration)
            else:
                self.migrationsComboBox.addItem(migration)
    
    def getData(self):
        """
        Public method to get the selected data.
        
        @return tuple containing the selected application name and migration
        @rtype tuple of two str
        """
        return (self.applicationComboBox.currentText(),
                self.migrationsComboBox.currentText())

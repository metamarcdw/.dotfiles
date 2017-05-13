# -*- coding: utf-8 -*-

# Copyright (c) 2016 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter data needed to squash migrations.
"""

from __future__ import unicode_literals

import os

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QDialog, QDialogButtonBox

from .Ui_DjangoSquashMigrationSelectionDialog import \
    Ui_DjangoSquashMigrationSelectionDialog


class DjangoSquashMigrationSelectionDialog(
        QDialog, Ui_DjangoSquashMigrationSelectionDialog):
    """
    Class implementing a dialog to enter data needed to squash migrations.
    """
    def __init__(self, migrations, showStart, parent=None):
        """
        Constructor
        
        @param migrations dictionary containing the available migrations
        @type dict
        @param showStart flag indicating to show the start migrations
        @type bool
        @param parent reference to the parent widget
        @type QWidget
        """
        super(DjangoSquashMigrationSelectionDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.__appliedIcon = QIcon(os.path.join(
            os.path.dirname(__file__), "icons", "applied.png"))
        
        self.startLabel.setEnabled(showStart)
        self.startMigrationComboBox.setEnabled(showStart)
        
        self.__migrations = migrations
        self.applicationComboBox.addItems(
            [""] + sorted(self.__migrations.keys()))
        self.on_applicationComboBox_activated("")
        
        msh = self.minimumSizeHint()
        self.resize(max(self.width(), msh.width()), msh.height())
    
    def __updateOkButton(self):
        """
        Private slot to set the enabled state of the OK button.
        """
        enabled = (
            bool(self.applicationComboBox.currentText()) and
            bool(self.endMigrationComboBox.currentText()))
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(enabled)
    
    @pyqtSlot(str)
    def on_applicationComboBox_activated(self, app):
        """
        Private slot to update the migrations combo boxes.
        
        @param app name of the selected application
        @type str
        """
        self.startMigrationComboBox.clear()
        self.endMigrationComboBox.clear()
        if app:
            for combo in [self.startMigrationComboBox,
                          self.endMigrationComboBox]:
                combo.addItem("")
                for applied, migration in self.__migrations[app]:
                    if applied:
                        combo.addItem(self.__appliedIcon, migration)
                    else:
                        combo.addItem(migration)
        self.__updateOkButton()
    
    @pyqtSlot(str)
    def on_endMigrationComboBox_activated(self, migration):
        """
        Private slot handling the selection of a migration.
        
        @param migration name of the selected migration
        @type str
        """
        self.__updateOkButton()
    
    def getData(self):
        """
        Public method to retrieve the data entered by the user.
        
        @return tuple containing the selected app, the start migration,
            the end migration and a flag indicating no optimization is wanted
        @rtype tuple of three str and a bool
        """
        if self.startMigrationComboBox.isEnabled():
            startMigration = self.startMigrationComboBox.currentText()
        else:
            startMigration = ""
        
        return (
            self.applicationComboBox.currentText(),
            startMigration,
            self.endMigrationComboBox.currentText(),
            self.noOptimizeCheckBox.isChecked(),
        )

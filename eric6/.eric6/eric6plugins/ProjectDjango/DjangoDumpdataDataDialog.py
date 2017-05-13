# -*- coding: utf-8 -*-

# Copyright (c) 2013 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter the data for the 'dumpdata' command.
"""

from __future__ import unicode_literals

from PyQt5.QtWidgets import QDialog

from .Ui_DjangoDumpdataDataDialog import Ui_DjangoDumpdataDataDialog


class DjangoDumpdataDataDialog(QDialog, Ui_DjangoDumpdataDataDialog):
    """
    Class implementing a dialog to enter the data for the 'dumpdata' command.
    """
    def __init__(self, project, parent=None):
        """
        Constructor
        
        @param project reference to the Django project object
        @param parent reference to the parent widget (QWidget)
        """
        super(DjangoDumpdataDataDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.__project = project
        
        apps = self.__project.getRecentApplications()
        self.applicationsCombo.addItems(apps)
        self.excludeCombo.addItems(apps)
        self.excludeCombo.setEditText("")
        
        self.formatCombo.addItem(self.tr("JSON"), "json")
        self.formatCombo.addItem(self.tr("XML"), "xml")
        try:
            import yaml     # __IGNORE_WARNING__
            self.formatCombo.addItem(self.tr("YAML"), "yaml")
        except ImportError:
            pass
        
        msh = self.minimumSizeHint()
        self.resize(max(self.width(), msh.width()), msh.height())
    
    def getData(self):
        """
        Public method to get the data entered into the dialog.
        
        @return tuple of two lists of strings, a string and an integer giving
            the list of applications to work on, the list of applications to
            exclude, the dump format and the indentation level
        """
        applStr = self.applicationsCombo.currentText()
        if applStr:
            self.__project.setMostRecentApplication(applStr)
            appls = applStr.split()
        else:
            appls = []
        
        exclStr = self.excludeCombo.currentText()
        if exclStr:
            excl = exclStr.split()
        else:
            excl = []
        
        dumpFormat = self.formatCombo.itemData(self.formatCombo.currentIndex())
        
        return appls, excl, dumpFormat, self.indentationSpinBox.value()

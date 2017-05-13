# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Package implementing the configuration page.
"""

from __future__ import unicode_literals

import os

from PyQt5.QtCore import pyqtSlot, Qt, QSortFilterProxyModel, QStringListModel

from E5Gui import E5FileDialog

from Preferences.ConfigurationPages.ConfigurationPageBase import \
    ConfigurationPageBase
from .Ui_PipPage import Ui_PipPage

from .. import DefaultIndexUrl

import Utilities


class PipPage(ConfigurationPageBase, Ui_PipPage):
    """
    Class implementing the configuration page.
    """
    def __init__(self, plugin):
        """
        Constructor
        
        @param plugin reference to the plugin object
        """
        super(PipPage, self).__init__()
        self.setupUi(self)
        self.setObjectName("PipPage")
        
        self.__plugin = plugin
        
        self.__model = QStringListModel(self)
        self.__proxyModel = QSortFilterProxyModel(self)
        self.__proxyModel.setFilterCaseSensitivity(Qt.CaseInsensitive)
        self.__proxyModel.setSourceModel(self.__model)
        self.stringList.setModel(self.__proxyModel)
        
        self.removeButton.clicked.connect(self.stringList.removeSelected)
        self.removeAllButton.clicked.connect(self.stringList.removeAll)
        
        self.indexLabel.setText(self.tr(
            '<b>Note:</b> Leave empty to use the default index URL ('
            '<a href="{0}">{0}</a>).')
            .format(DefaultIndexUrl))
        
        # set initial values
        self.__model.setStringList(
            self.__plugin.getPreferences("PipExecutables"))
        self.__model.sort(0)
        self.indexEdit.setText(self.__plugin.getPreferences("PipSearchIndex"))
    
    @pyqtSlot()
    def on_addButton_clicked(self):
        """
        Private slot used to add an executable to the list.
        """
        executable = E5FileDialog.getOpenFileName(
            self,
            self.tr("Add pip executable"),
            os.path.expanduser("~"),
            "")
        executable = Utilities.toNativeSeparators(executable)
        if executable != "" and executable not in self.__model.stringList():
            self.__model.insertRow(self.__model.rowCount())
            self.__model.setData(
                self.__model.index(self.__model.rowCount() - 1), executable)
            self.__model.sort(0)
    
    @pyqtSlot()
    def on_defaultListButton_clicked(self):
        """
        Private slot to load the default list of pip executables.
        """
        self.stringList.removeAll()
        defaults = self.__plugin.getDefaultPipExecutables()
        for executable in defaults:
            self.__model.insertRow(self.__model.rowCount())
            self.__model.setData(
                self.__model.index(self.__model.rowCount() - 1), executable)
        self.__model.sort(0)
    
    def save(self):
        """
        Public slot to save the pip configuration.
        """
        executables = self.__model.stringList()[:]
        self.__plugin.setPreferences(
            "PipExecutables", executables)
        self.__plugin.setPreferences(
            "PipSearchIndex", self.indexEdit.text().strip())
        if executables:
            if self.__plugin.getPreferences("CurrentPipExecutable") \
                    not in executables:
                self.__plugin.setPreferences(
                    "CurrentPipExecutable", "")
        else:
            # reset the current executable if none have been configured
            self.__plugin.setPreferences(
                "CurrentPipExecutable", "")

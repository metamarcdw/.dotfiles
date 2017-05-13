# -*- coding: utf-8 -*-

# Copyright (c) 2013 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing the Django configuration page.
"""

from __future__ import unicode_literals

from PyQt5.QtCore import pyqtSlot

from E5Gui import E5FileDialog
from E5Gui.E5Completers import E5DirCompleter, E5FileCompleter

from Preferences.ConfigurationPages.ConfigurationPageBase import \
    ConfigurationPageBase
from .Ui_DjangoPage import Ui_DjangoPage

from Globals import isWindowsPlatform, isMacPlatform

import Utilities
import UI.PixmapCache


class DjangoPage(ConfigurationPageBase, Ui_DjangoPage):
    """
    Class implementing the Django configuration page.
    """
    def __init__(self, plugin):
        """
        Constructor
        
        @param plugin reference to the plugin object
        """
        super(DjangoPage, self).__init__()
        self.setupUi(self)
        self.setObjectName("DjangoPage")
        
        self.virtualEnvPy3Button.setIcon(UI.PixmapCache.getIcon("open.png"))
        self.virtualEnvPy2Button.setIcon(UI.PixmapCache.getIcon("open.png"))
        self.translationsButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        
        self.__virtualEnvPy3Completer = E5DirCompleter(self.virtualEnvPy3Edit)
        self.__virtualEnvPy2Completer = E5DirCompleter(self.virtualEnvPy2Edit)
        self.__translationsCompleter = E5FileCompleter(self.translationsEdit)
        
        self.__plugin = plugin
        
        consoleList = []
        if isWindowsPlatform():
            consoleList.append("cmd.exe /c")
        elif isMacPlatform():
            consoleList.append("xterm -e")
            consoleList.append("/opt/X11/bin/xterm -e")
        else:
            consoleList.append("@konsole --workdir . -e")
            # KDE4/5 konsole spawns
            consoleList.append("gnome-terminal -e")
            consoleList.append("mate-terminal -e")
            consoleList.append("xfce4-terminal -e")
            consoleList.append("xterm -e")
        
        consoleNoCloseList = []
        if isWindowsPlatform():
            consoleNoCloseList.append("cmd.exe /k")
        elif isMacPlatform():
            consoleNoCloseList.append("xterm -hold -e")
            consoleNoCloseList.append("/opt/X11/bin/xterm -hold -e")
        else:
            consoleNoCloseList.append("@konsole --noclose --workdir . -e")
            # KDE4/5 konsole spawns
            consoleNoCloseList.append("gnome-terminal --profile=<noclose> -e")
            consoleNoCloseList.append("mate-terminal --profile=<noclose> -e")
            consoleNoCloseList.append("xfce4-terminal --hold -e")
            consoleNoCloseList.append("xterm -hold -e")
        
        self.consoleCommandCombo.addItems(consoleList)
        self.consoleCommandNoCloseCombo.addItems(consoleNoCloseList)
        
        # set initial values
        self.consoleCommandCombo.setEditText(
            self.__plugin.getPreferences("ConsoleCommand"))
        self.consoleCommandNoCloseCombo.setEditText(
            self.__plugin.getPreferences("ConsoleCommandNoClose"))
        
        self.serverAddressEdit.setText(
            self.__plugin.getPreferences("ServerAddress"))
        self.ipv6CheckBox.setChecked(
            self.__plugin.getPreferences("UseIPv6"))
        
        self.externalBrowserCheckBox.setChecked(
            self.__plugin.getPreferences("UseExternalBrowser"))
        
        self.appsRecentSpinBox.setValue(
            self.__plugin.getPreferences("RecentNumberApps"))
        
        self.virtualEnvPy2Edit.setText(
            self.__plugin.getPreferences("VirtualEnvironmentPy2"))
        self.plainPython2CheckBox.setChecked(
            self.__plugin.getPreferences("UsePlainPythonPy2"))
        
        self.virtualEnvPy3Edit.setText(
            self.__plugin.getPreferences("VirtualEnvironmentPy3"))
        self.plainPython3CheckBox.setChecked(
            self.__plugin.getPreferences("UsePlainPythonPy3"))
        
        self.translationsEdit.setText(
            self.__plugin.getPreferences("TranslationsEditor"))
    
    def save(self):
        """
        Public slot to save the Django configuration.
        """
        self.__plugin.setPreferences(
            "ConsoleCommand",
            self.consoleCommandCombo.currentText())
        self.__plugin.setPreferences(
            "ConsoleCommandNoClose",
            self.consoleCommandNoCloseCombo.currentText())
        
        self.__plugin.setPreferences(
            "ServerAddress", self.serverAddressEdit.text())
        self.__plugin.setPreferences(
            "UseIPv6", self.ipv6CheckBox.isChecked())
        
        self.__plugin.setPreferences(
            "UseExternalBrowser", self.externalBrowserCheckBox.isChecked())
        
        self.__plugin.setPreferences(
            "RecentNumberApps", self.appsRecentSpinBox.value())
        
        self.__plugin.setPreferences(
            "VirtualEnvironmentPy2", self.virtualEnvPy2Edit.text())
        self.__plugin.setPreferences(
            "UsePlainPythonPy2", self.plainPython2CheckBox.isChecked())
        
        self.__plugin.setPreferences(
            "VirtualEnvironmentPy3", self.virtualEnvPy3Edit.text())
        self.__plugin.setPreferences(
            "UsePlainPythonPy3", self.plainPython3CheckBox.isChecked())
        
        self.__plugin.setPreferences(
            "TranslationsEditor", self.translationsEdit.text())
    
    @pyqtSlot()
    def on_virtualEnvPy3Button_clicked(self):
        """
        Private slot to select the virtual environment for Python 3 via a
        directory selection dialog.
        """
        vDir = self.virtualEnvPy3Edit.text()
        if not vDir:
            vDir = Utilities.getHomeDir()
        virtualEnv = E5FileDialog.getExistingDirectory(
            self,
            self.tr("Select Virtual Environment for Python 3"),
            vDir,
            E5FileDialog.Options(E5FileDialog.Option(0)))
        
        if virtualEnv:
            self.virtualEnvPy3Edit.setText(
                Utilities.toNativeSeparators(virtualEnv))
    
    @pyqtSlot()
    def on_virtualEnvPy2Button_clicked(self):
        """
        Private slot to select the virtual environment for Python 2 via a
        directory selection dialog.
        """
        vDir = self.virtualEnvPy2Edit.text()
        if not vDir:
            vDir = Utilities.getHomeDir()
        virtualEnv = E5FileDialog.getExistingDirectory(
            self,
            self.tr("Select Virtual Environment for Python 2"),
            vDir,
            E5FileDialog.Options(E5FileDialog.Option(0)))
        
        if virtualEnv:
            self.virtualEnvPy2Edit.setText(
                Utilities.toNativeSeparators(virtualEnv))
    
    @pyqtSlot()
    def on_translationsButton_clicked(self):
        """
        Private slot to select the translations editor via a file selection
        dialog.
        """
        editor = E5FileDialog.getOpenFileName(
            self,
            self.tr("Translations Editor"),
            self.translationsEdit.text(),
            self.tr("All Files (*)"))
        if editor:
            self.translationsEdit.setText(Utilities.toNativeSeparators(editor))

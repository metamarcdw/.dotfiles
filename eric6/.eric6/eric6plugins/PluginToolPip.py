# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing the pip tool plugin.
"""

from __future__ import unicode_literals

import os
import platform

from PyQt5.QtCore import pyqtSignal, QObject, QCoreApplication, QTranslator

from E5Gui.E5Application import e5App

import Preferences
import Utilities

# Start-Of-Header
name = "pip Interface Plug-in"
author = "Detlev Offenbach <detlev@die-offenbachs.de>"
autoactivate = True
deactivateable = True
version = "1.4.5"
className = "ToolPipPlugin"
packageName = "ToolPip"
shortDescription = "Plug-in implementing a simple GUI for the pip command."
longDescription = (
    """Plug-in implementing a simple GUI for the pip command."""
)
needsRestart = False
pyqtApi = 2
python2Compatible = True
# End-Of-Header

error = ""

pipPluginObject = None


def exeDisplayDataList():
    """
    Module function to support the display of some executable info.
    
    @return list of dictionaries containing the data to query the presence of
        the executable
    """
    global pipPluginObject
    
    dataList = []
    data = {
        "programEntry": True,
        "header": QCoreApplication.translate(
            "ToolPipPlugin", "Package Management - pip"),
        "exe": "dummyExe",
        "versionCommand": "--version",
        "versionStartsWith": "dummyExe",
        "versionPosition": 1,
        "version": "",
        "versionCleanup": None,
    }
    if pipPluginObject is not None:
        executables = pipPluginObject.getPreferences("PipExecutables")
        if not executables:
            executables = ["pip3", "pip2", "pip"]
        for exePath in executables:
            data["exe"] = exePath
            data["versionStartsWith"] = "pip"
            dataList.append(data.copy())
    return dataList


def createPipPage(configDlg):
    """
    Module function to create the pip configuration page.
    
    @param configDlg reference to the configuration dialog
    @return reference to the configuration page
    """
    global pipPluginObject
    from ToolPip.ConfigurationPage.PipPage import PipPage
    page = PipPage(pipPluginObject)
    return page
    

def getConfigData():
    """
    Module function returning data as required by the configuration dialog.
    
    @return dictionary containing the relevant data
    """
    return {
        "pipPage": [
            QCoreApplication.translate(
                "ToolPipPlugin", "Python Package Management"),
            "preferences-python.png",
            createPipPage, None, None
        ],
    }


def prepareUninstall():
    """
    Module function to prepare for an uninstallation.
    """
    Preferences.Prefs.settings.remove(ToolPipPlugin.PreferencesKey)


def _findDefaultExecutables(majorVersion):
    """
    Restricted function to determine the name and path of the executables.
    
    @param majorVersion major python version of the executables (int)
    @return path names of the executables (list of string)
    """
    # Determine Python Version
    if majorVersion == 3:
        minorVersions = range(10)
    elif majorVersion == 2:
        minorVersions = range(6, 8)
    else:
        return []
    
    executables = set()
    if Utilities.isWindowsPlatform():
        #
        # Windows
        #
        try:
            import winreg
        except ImportError:
            import _winreg as winreg    # __IGNORE_WARNING__
        
        def getExePath(branch, access, versionStr):
            exes = []
            try:
                software = winreg.OpenKey(branch, 'Software', 0, access)
                python = winreg.OpenKey(software, 'Python', 0, access)
                pcore = winreg.OpenKey(python, 'PythonCore', 0, access)
                version = winreg.OpenKey(pcore, versionStr, 0, access)
                installpath = winreg.QueryValue(version, 'InstallPath')
                exe = os.path.join(installpath, 'Scripts', 'pip.exe')
                if os.access(exe, os.X_OK):
                    exes.append(exe)
            except (WindowsError, OSError):   # __IGNORE_WARNING__
                pass
            return exes
        
        for minorVersion in minorVersions:
            versionStr = '{0}.{1}'.format(majorVersion, minorVersion)
            exePaths = getExePath(
                winreg.HKEY_CURRENT_USER,
                winreg.KEY_WOW64_32KEY | winreg.KEY_READ, versionStr)
            if exePaths:
                for exePath in exePaths:
                    executables.add(exePath)
            
            exePaths = getExePath(
                winreg.HKEY_LOCAL_MACHINE,
                winreg.KEY_WOW64_32KEY | winreg.KEY_READ, versionStr)
            if exePaths:
                for exePath in exePaths:
                    executables.add(exePath)
            
            # Even on Intel 64-bit machines it's 'AMD64'
            if platform.machine() == 'AMD64':
                exePaths = getExePath(
                    winreg.HKEY_CURRENT_USER,
                    winreg.KEY_WOW64_64KEY | winreg.KEY_READ, versionStr)
                if exePaths:
                    for exePath in exePaths:
                        executables.add(exePath)
                
                exePath = getExePath(
                    winreg.HKEY_LOCAL_MACHINE,
                    winreg.KEY_WOW64_64KEY | winreg.KEY_READ, versionStr)
                if exePaths:
                    for exePath in exePaths:
                        executables.add(exePath)
    else:
        #
        # Linux, Unix ...
        pipScript = 'pip'
        scriptSuffixes = ["",
                          "{0}".format(majorVersion),
                          "-{0}".format(majorVersion),
                          ]
        for minorVersion in minorVersions:
            scriptSuffixes.append(
                "{0}.{1}".format(majorVersion, minorVersion))
            scriptSuffixes.append(
                "-{0}.{1}".format(majorVersion, minorVersion))
        # There could be multiple pip executables in the path
        # e.g. for different python variants
        path = Utilities.getEnvironmentEntry('PATH')
        # environment variable not defined
        if path is None:
            return []
        
        # step 1: determine possible candidates
        exes = []
        dirs = path.split(os.pathsep)
        for directory in dirs:
            for suffix in scriptSuffixes:
                exe = os.path.join(directory, pipScript + suffix)
                if os.access(exe, os.X_OK):
                    exes.append(exe)
        
        # step 2: determine the Python variant
        if Utilities.isMacPlatform():
            checkStrings = ["Python.framework/Versions/3".lower(),
                            "python3"]
        else:
            checkStrings = ["python3"]
        
        _exePy2 = set()
        _exePy3 = set()
        for exe in exes:
            try:
                f = open(exe, "r")
                line0 = f.readline()
                for checkStr in checkStrings:
                    if checkStr in line0.lower():
                        _exePy3.add(exe)
                        break
                else:
                    _exePy2.add(exe)
            finally:
                f.close()
        
        executables = _exePy3 if majorVersion == 3 else _exePy2
    
    return list(executables)


class ToolPipPlugin(QObject):
    """
    Class documentation goes here.
    
    @signal currentPipChanged(exe) emitted to signal a change of the current
        pip executable
    """
    PreferencesKey = "PipPlugin"
    
    currentPipChanged = pyqtSignal(str)
    
    def __init__(self, ui):
        """
        Constructor
        
        @param ui reference to the user interface object (UI.UserInterface)
        """
        super(ToolPipPlugin, self).__init__(ui)
        self.__ui = ui
        self.__initialize()
        
        self.__defaults = {
            "PipExecutables": [],
            "CurrentPipExecutable": "",
            "PipSearchIndex": "",           # used by the search command
        }
        
        self.__translator = None
        self.__loadTranslator()
    
    def __initialize(self):
        """
        Private slot to (re)initialize the plugin.
        """
        self.__object = None
        
        self.__mainAct = None
        self.__mainMenu = None
    
    def activate(self):
        """
        Public method to activate this plugin.
        
        @return tuple of None and activation status (boolean)
        """
        global error
        error = ""     # clear previous error
        
        global pipPluginObject
        pipPluginObject = self
        
        from ToolPip.Pip import Pip
        self.__object = Pip(self, self.__ui)
        self.__object.initActions()
        e5App().registerPluginObject("PipGui", self.__object)
        
        menu = self.__ui.getMenu("extras")
        self.__mainMenu = self.__object.initMenu()
        self.__mainAct = menu.addMenu(self.__mainMenu)
        
        if self.getPreferences("PipExecutables"):
            # remove all executables, that don't exist anymore
            executables = []
            for executable in self.getPreferences("PipExecutables"):
                if os.access(executable, os.X_OK):
                    executables.append(executable)
            self.setPreferences("PipExecutables", executables)
            
            current = self.getPreferences("CurrentPipExecutable")
            if current not in executables:
                current = ""
                self.setPreferences("CurrentPipExecutable", current)
        else:
            # load the list with default executables
            self.setPreferences("PipExecutables",
                                self.getDefaultPipExecutables())
        
        return None, True
    
    def deactivate(self):
        """
        Public method to deactivate this plugin.
        """
        e5App().unregisterPluginObject("PipGui")
        
        menu = self.__ui.getMenu("extras")
        menu.removeAction(self.__mainAct)
        self.__mainAct = None
        
        self.__initialize()
    
    def __loadTranslator(self):
        """
        Private method to load the translation file.
        """
        if self.__ui is not None:
            loc = self.__ui.getLocale()
            if loc and loc != "C":
                locale_dir = os.path.join(
                    os.path.dirname(__file__), "ToolPip", "i18n")
                translation = "pip_{0}".format(loc)
                translator = QTranslator(None)
                loaded = translator.load(translation, locale_dir)
                if loaded:
                    self.__translator = translator
                    e5App().installTranslator(self.__translator)
                else:
                    print("Warning: translation file '{0}' could not be"
                          " loaded.".format(translation))
                    print("Using default.")
    
    def getPreferences(self, key):
        """
        Public method to retrieve the various refactoring settings.
        
        @param key the key of the value to get
        @return the requested refactoring setting
        """
        if key in ["PipExecutables"]:
            return Preferences.toList(Preferences.Prefs.settings.value(
                self.PreferencesKey + "/" + key, self.__defaults[key]))
        else:
            return Preferences.Prefs.settings.value(
                self.PreferencesKey + "/" + key, self.__defaults[key])
    
    def setPreferences(self, key, value):
        """
        Public method to store the various refactoring settings.
        
        @param key the key of the setting to be set (string)
        @param value the value to be set
        """
        Preferences.Prefs.settings.setValue(
            self.PreferencesKey + "/" + key, value)
        
        if key == "CurrentPipExecutable":
                self.currentPipChanged.emit(value)
    
    def getMenu(self, name):
        """
        Public method to get a reference to the requested menu.
        
        @param name name of the menu (string)
        @return reference to the menu (QMenu) or None, if no
            menu with the given name exists
        """
        if self.__object is not None:
            return self.__object.getMenu(name)
        else:
            return None
    
    def getMenuNames(self):
        """
        Public method to get the names of all menus.
        
        @return menu names (list of string)
        """
        if self.__object is not None:
            return list(self.__menus.keys())
        else:
            return []
    
    def getDefaultPipExecutables(self):
        """
        Public method to get the default list of pip executables.
        
        @return list of pip executables (list of string)
        """
        return _findDefaultExecutables(2) + _findDefaultExecutables(3)

#
# eflag: noqa = M801

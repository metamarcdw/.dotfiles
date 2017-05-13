# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Package implementing the pip GUI logic.
"""

from __future__ import unicode_literals
try:
    str = unicode       # __IGNORE_EXCEPTION__
except NameError:
    pass

import os
import re

from PyQt5.QtCore import pyqtSlot, QObject, QProcess, QDir
from PyQt5.QtWidgets import QMenu, QInputDialog, QDialog

from E5Gui import E5MessageBox, E5FileDialog
from E5Gui.E5Action import E5Action
from E5Gui.E5Application import e5App

from .PipDialog import PipDialog

import Preferences
import Globals


class Pip(QObject):
    """
    Class implementing the pip GUI logic.
    """
    def __init__(self, plugin, parent=None):
        """
        Constructor
        
        @param plugin reference to the plugin object
        @param parent parent (QObject)
        """
        super(Pip, self).__init__(parent)
        
        self.__plugin = plugin
        self.__ui = parent
        
        self.__menus = {}   # dictionary with references to menus
        
        self.__plugin.currentPipChanged.connect(self.__handleTearOffMenu)
    
    def initActions(self):
        """
        Public method to define the Django actions.
        """
        self.actions = []
    
        self.selectExecutableAct = E5Action(
            self.tr('pip Executable'),
            self.tr('pip &Executable'),
            0, 0,
            self, 'pip_select_executable')
        self.selectExecutableAct.setStatusTip(self.tr(
            'Selects the pip executable to be used'))
        self.selectExecutableAct.setWhatsThis(self.tr(
            """<b>pip Executable</b>"""
            """<p>This selects the pip executable to be used. Multiple"""
            """ executables can be pre-configured via the configuration"""
            """ dialog.</p>"""
        ))
        self.selectExecutableAct.triggered.connect(self.__selectPipExecutable)
        self.actions.append(self.selectExecutableAct)
        
        ##############################################
        ## Actions for listing packages
        ##############################################
        
        self.listPackagesAct = E5Action(
            self.tr('List Installed Packages'),
            self.tr('&List Installed Packages...'),
            0, 0,
            self, 'pip_list_packages')
        self.listPackagesAct.setStatusTip(self.tr(
            'List all installed packages with versions'))
        self.listPackagesAct.setWhatsThis(self.tr(
            """<b>List Installed Packages</b>"""
            """<p>This lists all the installed packages together"""
            """ with their versions.</p>"""
        ))
        self.listPackagesAct.triggered.connect(self.__listPackages)
        self.actions.append(self.listPackagesAct)
        
        self.listUptodatePackagesAct = E5Action(
            self.tr('List Up-to-date Packages'),
            self.tr('List Up-to-&date Packages...'),
            0, 0,
            self, 'pip_list_uptodate_packages')
        self.listUptodatePackagesAct.setStatusTip(self.tr(
            'List all installed, up-to-date packages with versions'))
        self.listUptodatePackagesAct.setWhatsThis(self.tr(
            """<b>List Up-to-date Packages</b>"""
            """<p>This lists all the installed, up-to-date packages together"""
            """ with their versions.</p>"""
        ))
        self.listUptodatePackagesAct.triggered.connect(
            self.__listUptodatePackages)
        self.actions.append(self.listUptodatePackagesAct)
        
        self.listOutdatedPackagesAct = E5Action(
            self.tr('List Outdated Packages'),
            self.tr('List &Outdated Packages...'),
            0, 0,
            self, 'pip_list_outdated_packages')
        self.listOutdatedPackagesAct.setStatusTip(self.tr(
            'List all installed, outdated packages with versions'))
        self.listOutdatedPackagesAct.setWhatsThis(self.tr(
            """<b>List Up-to-date Packages</b>"""
            """<p>This lists all the installed, outdated packages together"""
            """ with their current and latest versions.</p>"""
        ))
        self.listOutdatedPackagesAct.triggered.connect(
            self.__listOutdatedPackages)
        self.actions.append(self.listOutdatedPackagesAct)
        
        ##############################################
        ## Actions for installing packages
        ##############################################
        
        self.installPackagesAct = E5Action(
            self.tr('Install Packages'),
            self.tr('&Install Packages'),
            0, 0,
            self, 'pip_install_packages')
        self.installPackagesAct.setStatusTip(self.tr(
            'Install packages according to user input'))
        self.installPackagesAct.setWhatsThis(self.tr(
            """<b>Install Packages</b>"""
            """<p>This installs packages according to user input.</p>"""
        ))
        self.installPackagesAct.triggered.connect(self.__installPackages)
        self.actions.append(self.installPackagesAct)
        
        self.installRequirementsAct = E5Action(
            self.tr('Install Requirements'),
            self.tr('Install Requirements'),
            0, 0,
            self, 'pip_install_requirements')
        self.installRequirementsAct.setStatusTip(self.tr(
            'Install packages according to a requirements file'))
        self.installRequirementsAct.setWhatsThis(self.tr(
            """<b>Install Requirements</b>"""
            """<p>This installs packages according to a requirements"""
            """ file.</p>"""
        ))
        self.installRequirementsAct.triggered.connect(
            self.__installRequirements)
        self.actions.append(self.installRequirementsAct)
        
        self.installPipAct = E5Action(
            self.tr('Install Pip'),
            self.tr('Install Pip'),
            0, 0,
            self, 'pip_install_pip')
        self.installPipAct.setStatusTip(self.tr(
            'Install the pip package itself'))
        self.installPipAct.setWhatsThis(self.tr(
            """<b>Install Pip</b>"""
            """<p>This install the pip package itself.</p>"""
        ))
        self.installPipAct.triggered.connect(self.__installPip)
        self.actions.append(self.installPipAct)
        
        self.upgradePipAct = E5Action(
            self.tr('Upgrade Pip'),
            self.tr('Upgrade &Pip'),
            0, 0,
            self, 'pip_upgrade_pip')
        self.upgradePipAct.setStatusTip(self.tr(
            'Upgrade the pip package itself'))
        self.upgradePipAct.setWhatsThis(self.tr(
            """<b>Upgrade Pip</b>"""
            """<p>This upgrades the pip package itself.</p>"""
        ))
        self.upgradePipAct.triggered.connect(self.upgradePip)
        self.actions.append(self.upgradePipAct)
        
        self.upgradePackagesAct = E5Action(
            self.tr('Upgrade Packages'),
            self.tr('&Upgrade Packages'),
            0, 0,
            self, 'pip_upgrade_packages')
        self.upgradePackagesAct.setStatusTip(self.tr(
            'Upgrade packages according to user input'))
        self.upgradePackagesAct.setWhatsThis(self.tr(
            """<b>Upgrade Packages</b>"""
            """<p>This upgrades packages according to user input.</p>"""
        ))
        self.upgradePackagesAct.triggered.connect(self.__upgradePackages)
        self.actions.append(self.upgradePackagesAct)
        
        ##############################################
        ## Actions for uninstalling packages
        ##############################################
        
        self.uninstallPackagesAct = E5Action(
            self.tr('Uninstall Packages'),
            self.tr('Uninstall Packages'),
            0, 0,
            self, 'pip_uninstall_packages')
        self.uninstallPackagesAct.setStatusTip(self.tr(
            'Uninstall packages according to user input'))
        self.uninstallPackagesAct.setWhatsThis(self.tr(
            """<b>Uninstall Packages</b>"""
            """<p>This uninstalls packages according to user input.</p>"""
        ))
        self.uninstallPackagesAct.triggered.connect(self.__uninstallPackages)
        self.actions.append(self.uninstallPackagesAct)
        
        self.uninstallRequirementsAct = E5Action(
            self.tr('Uninstall Requirements'),
            self.tr('Uninstall Requirements'),
            0, 0,
            self, 'pip_uninstall_requirements')
        self.uninstallRequirementsAct.setStatusTip(self.tr(
            'Uninstall packages according to a requirements file'))
        self.uninstallRequirementsAct.setWhatsThis(self.tr(
            """<b>Uninstall Requirements</b>"""
            """<p>This uninstalls packages according to a requirements"""
            """ file.</p>"""
        ))
        self.uninstallRequirementsAct.triggered.connect(
            self.__uninstallRequirements)
        self.actions.append(self.uninstallRequirementsAct)
        
        ##############################################
        ## Actions for generating requirements files
        ##############################################
        
        self.generateRequirementsAct = E5Action(
            self.tr('Generate Requirements'),
            self.tr('&Generate Requirements...'),
            0, 0,
            self, 'pip_generate_requirements')
        self.generateRequirementsAct.setStatusTip(self.tr(
            'Generate the contents of a requirements file'))
        self.generateRequirementsAct.setWhatsThis(self.tr(
            """<b>Generate Requirements</b>"""
            """<p>This generates the contents of a requirements file.</p>"""
        ))
        self.generateRequirementsAct.triggered.connect(
            self.__generateRequirements)
        self.actions.append(self.generateRequirementsAct)
        
        ##############################################
        ## Actions for generating requirements files
        ##############################################
        
        self.searchPyPIAct = E5Action(
            self.tr('Search PyPI'),
            self.tr('&Search PyPI...'),
            0, 0,
            self, 'pip_search_pypi')
        self.searchPyPIAct.setStatusTip(self.tr(
            'Open a dialog to search the Python Package Index'))
        self.searchPyPIAct.setWhatsThis(self.tr(
            """<b>Search PyPI</b>"""
            """<p>This opens a dialog to search the Python Package"""
            """ Index.</p>"""
        ))
        self.searchPyPIAct.triggered.connect(self.__searchPyPI)
        self.actions.append(self.searchPyPIAct)
        
        ##############################################
        ## Actions for editing configuration files
        ##############################################
        
        self.editUserConfigAct = E5Action(
            self.tr('Edit User Configuration'),
            self.tr('Edit User Configuration...'),
            0, 0,
            self, 'pip_edit_user_config')
        self.editUserConfigAct.setStatusTip(self.tr(
            'Open the per user configuration file in an editor'))
        self.editUserConfigAct.setWhatsThis(self.tr(
            """<b>Edit User Configuration</b>"""
            """<p>This opens the per user configuration file in an editor."""
            """</p>"""
        ))
        self.editUserConfigAct.triggered.connect(self.__editUserConfiguration)
        self.actions.append(self.editUserConfigAct)
        
        self.editVirtualenvConfigAct = E5Action(
            self.tr('Edit Current Virtualenv Configuration'),
            self.tr('Edit Current Virtualenv Configuration...'),
            0, 0,
            self, 'pip_edit_virtualenv_config')
        self.editVirtualenvConfigAct.setStatusTip(self.tr(
            'Open the current virtualenv configuration file in an editor'))
        self.editVirtualenvConfigAct.setWhatsThis(self.tr(
            """<b>Edit Current Virtualenv Configuration</b>"""
            """<p>This opens the current virtualenv configuration file in"""
            """ an editor. </p>"""
        ))
        self.editVirtualenvConfigAct.triggered.connect(
            self.__editVirtualenvConfiguration)
        self.actions.append(self.editVirtualenvConfigAct)
        
        self.pipConfigAct = E5Action(
            self.tr('Configure'),
            self.tr('Configure...'),
            0, 0, self, 'pip_configure')
        self.pipConfigAct.setStatusTip(self.tr(
            'Show the configuration dialog with the Python Package Management'
            ' page selected'
        ))
        self.pipConfigAct.setWhatsThis(self.tr(
            """<b>Configure</b>"""
            """<p>Show the configuration dialog with the Python Package"""
            """ Management page selected.</p>"""
        ))
        self.pipConfigAct.triggered.connect(self.__pipConfigure)
        self.actions.append(self.pipConfigAct)
    
    def initMenu(self):
        """
        Public slot to initialize the Django menu.
        
        @return the menu generated (QMenu)
        """
        self.__menus = {}   # clear menus references
        
        menu = QMenu(self.tr('P&ython Package Management'), self.__ui)
        menu.setTearOffEnabled(True)
        
        menu.addAction(self.selectExecutableAct)
        menu.addSeparator()
        menu.addAction(self.listPackagesAct)
        menu.addAction(self.listUptodatePackagesAct)
        menu.addAction(self.listOutdatedPackagesAct)
        menu.addSeparator()
        menu.addAction(self.installPipAct)
        menu.addAction(self.installPackagesAct)
        menu.addAction(self.installRequirementsAct)
        menu.addSeparator()
        menu.addAction(self.upgradePipAct)
        menu.addAction(self.upgradePackagesAct)
        menu.addSeparator()
        menu.addAction(self.uninstallPackagesAct)
        menu.addAction(self.uninstallRequirementsAct)
        menu.addSeparator()
        menu.addAction(self.generateRequirementsAct)
        menu.addSeparator()
        menu.addAction(self.searchPyPIAct)
        menu.addSeparator()
        menu.addAction(self.editUserConfigAct)
        menu.addAction(self.editVirtualenvConfigAct)
        menu.addSeparator()
        menu.addAction(self.pipConfigAct)
        
        self.__menus["main"] = menu
        
        menu.aboutToShow.connect(self.__aboutToShowMenu)
        
        return menu
    
    def __aboutToShowMenu(self):
        """
        Private slot to set the action enabled status.
        """
        enable = bool(self.__plugin.getPreferences("CurrentPipExecutable"))
        for act in self.actions:
            if act not in [self.selectExecutableAct,
                           self.installPipAct,
                           self.editUserConfigAct,
                           self.editVirtualenvConfigAct,
                           self.pipConfigAct]:
                act.setEnabled(enable)
    
    def getMenu(self, name):
        """
        Public method to get a reference to the requested menu.
        
        @param name name of the menu (string)
        @return reference to the menu (QMenu) or None, if no
            menu with the given name exists
        """
        if name in self.__menus:
            return self.__menus[name]
        else:
            return None
    
    def getMenuNames(self):
        """
        Public method to get the names of all menus.
        
        @return menu names (list of string)
        """
        return list(self.__menus.keys())
    
    def __handleTearOffMenu(self, pip):
        """
        Private slot to handle a change of the pip executable.
        
        @param pip path of the pip executable
        @type str
        """
        if self.__menus["main"].isTearOffMenuVisible():
            # determine, if torn off menu needs to be refreshed
            enabled = self.listPackagesAct.isEnabled()
            if ((bool(pip) and not enabled) or
                    (not bool(pip) and enabled)):
                self.__menus["main"].hideTearOffMenu()
    
    ##########################################################################
    ## Methods below implement some utility functions
    ##########################################################################
    
    def runProcess(self, args, cmd=""):
        """
        Public method to execute the current pip with the given arguments.
        
        The selected pip executable is called with the given arguments and
        waited for its end.
        
        @param args list of command line arguments (list of string)
        @param cmd pip command to be used (string)
        @return tuple containing a flag indicating success and the output
            of the process (string)
        """
        if not cmd:
            cmd = self.__plugin.getPreferences("CurrentPipExecutable")
        ioEncoding = Preferences.getSystem("IOEncoding")
        
        process = QProcess()
        process.start(cmd, args)
        procStarted = process.waitForStarted()
        if procStarted:
            finished = process.waitForFinished(30000)
            if finished:
                if process.exitCode() == 0:
                    output = str(process.readAllStandardOutput(), ioEncoding,
                                 'replace')
                    return True, output
                else:
                    return False, self.tr("pip exited with an error ({0}).")\
                        .format(process.exitCode())
            else:
                process.terminate()
                process.waitForFinished(2000)
                process.kill()
                process.waitForFinished(3000)
                return False, self.tr("pip did not finish within 30 seconds.")
        
        return False, self.tr("pip could not be started.")
    
    def __getUserConfig(self):
        """
        Private method to get the name of the user configuration file.
        
        @return path of the user configuration file (string)
        """
        # Unix:     ~/.config/pip/pip.conf
        # OS X:     ~/Library/Application Support/pip/pip.conf
        # Windows:  %APPDATA%\pip\pip.ini
        # Environment: $PIP_CONFIG_FILE
        
        try:
            return os.environ["PIP_CONFIG_FILE"]
        except KeyError:
            pass
        
        if Globals.isWindowsPlatform():
            config = os.path.join(os.environ["APPDATA"], "pip", "pip.ini")
        elif Globals.isMacPlatform():
            config = os.path.expanduser(
                "~/Library/Application Support/pip/pip.conf")
        else:
            config = os.path.expanduser("~/.config/pip/pip.conf")
        
        return config
    
    def __getVirtualenvConfig(self):
        """
        Private method to get the name of the virtualenv configuration file.
        
        @return path of the virtualenv configuration file (string)
        """
        # Unix, OS X:   $VIRTUAL_ENV/pip.conf
        # Windows:      %VIRTUAL_ENV%\pip.ini
        
        if Globals.isWindowsPlatform():
            pip = "pip.ini"
        else:
            pip = "pip.conf"
        try:
            virtualenv = os.environ["VIRTUAL_ENV"]
        except KeyError:
            # determine from pip executable file
            virtualenv = os.path.dirname(os.path.dirname(
                self.__plugin.getPreferences("CurrentPipExecutable")))
        
        return os.path.join(virtualenv, pip)
    
    ##########################################################################
    ## Methods below implement the individual menu entries
    ##########################################################################
    
    def __selectPipExecutable(self):
        """
        Private method to select the pip executable to be used.
        """
        pipExecutables = sorted(self.__plugin.getPreferences("PipExecutables"))
        if pipExecutables:
            currentExecutable = self.__plugin.getPreferences(
                "CurrentPipExecutable")
            try:
                index = pipExecutables.index(currentExecutable)
            except ValueError:
                index = 0
            executable, ok = QInputDialog.getItem(
                None,
                self.tr("pip Executable"),
                self.tr("Select pip Executable to be used:"),
                pipExecutables, index, False)
            
            if ok and executable:
                self.__plugin.setPreferences("CurrentPipExecutable",
                                             executable)
        else:
            res = E5MessageBox.yesNo(
                None,
                self.tr("pip Executable"),
                self.tr("""No pip executables have been configured yet."""
                        """ Shall this be done now?"""),
                yesDefault=True)
            if res:
                e5App().getObject("UserInterface").showPreferences("pipPage")
    
    def __listPackages(self):
        """
        Private slot to list all installed packages.
        """
        from .PipListDialog import PipListDialog
        self.__listDialog = PipListDialog(
            self, "list", self.__plugin, self.tr("Installed Packages"))
        self.__listDialog.show()
        self.__listDialog.start()
    
    def __listUptodatePackages(self):
        """
        Private slot to list all installed, up-to-date packages.
        """
        from .PipListDialog import PipListDialog
        self.__listUptodateDialog = PipListDialog(
            self, "uptodate", self.__plugin, self.tr("Up-to-date Packages"))
        self.__listUptodateDialog.show()
        self.__listUptodateDialog.start()
    
    def __listOutdatedPackages(self):
        """
        Private slot to list all installed, up-to-date packages.
        """
        from .PipListDialog import PipListDialog
        self.__listOutdatedDialog = PipListDialog(
            self, "outdated", self.__plugin, self.tr("Outdated Packages"))
        self.__listOutdatedDialog.show()
        self.__listOutdatedDialog.start()
    
    def __editUserConfiguration(self):
        """
        Private slot to edit the user configuration.
        """
        self.__editConfiguration()
    
    def __editVirtualenvConfiguration(self):
        """
        Private slot to edit the current virtualenv configuration.
        """
        self.__editConfiguration(virtualenv=True)
    
    def __editConfiguration(self, virtualenv=False):
        """
        Private method to edit a configuration.
        
        @param virtualenv flag indicating to edit the current virtualenv
            configuration file (boolean)
        """
        from QScintilla.MiniEditor import MiniEditor
        if virtualenv:
            cfgFile = self.__getVirtualenvConfig()
        else:
            cfgFile = self.__getUserConfig()
        cfgDir = os.path.dirname(cfgFile)
        if not cfgDir:
            E5MessageBox.critical(
                None,
                self.tr("Edit Configuration"),
                self.tr("""No valid configuartion path determined."""
                        """ Is a virtual environment selected? Aborting"""))
            return
        
        try:
            if not os.path.isdir(cfgDir):
                os.makedirs(cfgDir)
        except OSError:
            E5MessageBox.critical(
                None,
                self.tr("Edit Configuration"),
                self.tr("""No valid configuartion path determined."""
                        """ Is a virtual environment selected? Aborting"""))
            return
        
        if not os.path.exists(cfgFile):
            try:
                f = open(cfgFile, "w")
                f.write("[global]\n")
                f.close()
            except (IOError, OSError):
                # ignore these
                pass
        
        # check, if the destination is writeable
        if not os.access(cfgFile, os.W_OK):
            E5MessageBox.critical(
                None,
                self.tr("Edit Configuration"),
                self.tr("""No valid configuartion path determined."""
                        """ Is a virtual environment selected? Aborting"""))
            return
        
        self.__editor = MiniEditor(cfgFile, "Properties")
        self.__editor.show()
    
    def __installPip(self):
        """
        Private slot to install pip.
        """
        python = E5FileDialog.getOpenFileName(
            None,
            self.tr("Select Python Executable"))
        if python:
            python = QDir.toNativeSeparators(python)
            dia = PipDialog(self.tr('Install PIP'))
            res = dia.startProcesses([
                (python, ["-m", "ensurepip"]),
                (python, ["-m", "pip", "install", "--upgrade", "pip"]),
            ])
            if res:
                dia.exec_()
                pip = E5FileDialog.getOpenFileName(
                    None,
                    self.tr("Select PIP Executable"),
                    os.path.dirname(python))
                if pip:
                    pip = QDir.toNativeSeparators(pip)
                    pipExecutables = \
                        self.__plugin.getPreferences("PipExecutables")
                    if pip not in pipExecutables:
                        pipExecutables.append(pip)
                        self.__plugin.setPreferences(
                            "PipExecutables", pipExecutables)
    
    @pyqtSlot()
    def upgradePip(self, pip=""):
        """
        Public method to upgrade pip itself.
        
        @param pip pip command to be used
        @type str
        @return flag indicating a successful execution
        @rtype bool
        """
        # Upgrading pip needs to be treated specially because
        # it must be done using the python executable
        
        if not pip:
            default = self.tr("<Default>")
            pipExecutables = sorted(
                self.__plugin.getPreferences("PipExecutables"))
            pip, ok = QInputDialog.getItem(
                None,
                self.tr("Upgrade pip"),
                self.tr("Select pip Executable:"),
                [default] + pipExecutables,
                0, False)
            if not ok or not pip:
                return False
            
            if pip == default:
                pip = self.__plugin.getPreferences("CurrentPipExecutable")
        
        python = self.__getPython(pip)
        if not python:
            python = E5FileDialog.getOpenFileName(
                None,
                self.tr("Select Python Executable"),
                os.path.dirname(pip))
            if python:
                python = QDir.toNativeSeparators(python)
            else:
                return False
        
        args = ["-m", "pip", "install", "--upgrade", "pip"]
        dia = PipDialog(self.tr('Upgrade PIP'))
        res = dia.startProcess(python, args)
        if res:
            dia.exec_()
        return res
    
    def __getPython(self, cmd):
        """
        Private method to derive the path to the python executable given the
        path to the pip executable.
        
        @param cmd path of the pip executable
        @type str
        @return path of the python executable
        @rtype str
        """
        path, prog = os.path.split(cmd)
        paths = (path, os.path.split(path)[0])  # to try the parent directory
        if Globals.isWindowsPlatform():
            subPatterns = ((r"\d\.\d", ""),
                           (r"\d\.", "."))
            for pyname in ("python", "pypy"):
                python = prog.replace("pip", pyname)
                for pattern, repl in subPatterns:
                    if re.search(pattern, python):
                        python = re.sub(pattern, repl, python)
                        break
                for path in paths:
                    pypath = os.path.join(path, python)
                    if os.path.exists(pypath):
                        return pypath
        else:
            subPatterns = ((r"\.\d$", ""),
                           (r"\d\.\d$", ""),
                           (r"\d$", ""))
            for pyname in ("python", "pypy"):
                python = prog.replace("pip", pyname)
                for path in paths:
                    pypath = os.path.join(path, python)
                    if os.path.exists(pypath):
                        return pypath
                    
                    for pattern, repl in subPatterns:
                        if re.search(pattern, cmd):
                            newpy = re.sub(pattern, repl, python)
                            pypath = os.path.join(path, newpy)
                            if os.path.exists(pypath):
                                return pypath
        
        return ""
    
    def upgradePackages(self, packages, cmd=""):
        """
        Public method to upgrade the given list of packages.
        
        @param packages list of packages to upgrade (list of string)
        @param cmd pip command to be used (string)
        @return flag indicating a successful execution (boolean)
        """
        if not cmd:
            cmd = self.__plugin.getPreferences("CurrentPipExecutable")
        args = ["install", "--upgrade"] + packages
        dia = PipDialog(self.tr('Upgrade Packages'))
        res = dia.startProcess(cmd, args)
        if res:
            dia.exec_()
        return res
    
    def __upgradePackages(self):
        """
        Private slot to upgrade packages to be given by the user.
        """
        from .PipPackagesInputDialog import PipPackagesInputDialog
        dlg = PipPackagesInputDialog(
            self.__plugin, self.tr("Upgrade Packages"))
        if dlg.exec_() == QDialog.Accepted:
            command, packages = dlg.getData()
            if packages:
                self.upgradePackages(packages, cmd=command)
    
    def installPackages(self, packages, cmd=""):
        """
        Public method to install the given list of packages.
        
        @param packages list of packages to install (list of string)
        @param cmd pip command to be used (string)
        """
        if not cmd:
            cmd = self.__plugin.getPreferences("CurrentPipExecutable")
        args = ["install"] + packages
        dia = PipDialog(self.tr('Install Packages'))
        res = dia.startProcess(cmd, args)
        if res:
            dia.exec_()
    
    def __installPackages(self):
        """
        Private slot to install packages to be given by the user.
        """
        from .PipPackagesInputDialog import PipPackagesInputDialog
        dlg = PipPackagesInputDialog(
            self.__plugin, self.tr("Install Packages"))
        if dlg.exec_() == QDialog.Accepted:
            command, packages = dlg.getData()
            if packages:
                self.installPackages(packages, cmd=command)
    
    def __installRequirements(self):
        """
        Private slot to install packages as given in a requirements file.
        """
        from .PipRequirementsSelectionDialog import \
            PipRequirementsSelectionDialog
        dlg = PipRequirementsSelectionDialog(self.__plugin)
        if dlg.exec_() == QDialog.Accepted:
            command, requirements = dlg.getData()
            if requirements and os.path.exists(requirements):
                if not command:
                    command = self.__plugin.getPreferences(
                        "CurrentPipExecutable")
                args = ["install", "--requirement", requirements]
                dia = PipDialog(self.tr('Install Packages from Requirements'))
                res = dia.startProcess(command, args)
                if res:
                    dia.exec_()
    
    def uninstallPackages(self, packages, cmd=""):
        """
        Public method to uninstall the given list of packages.
        
        @param packages list of packages to uninstall (list of string)
        @param cmd pip command to be used (string)
        @return flag indicating a successful execution (boolean)
        """
        res = False
        if packages:
            from UI.DeleteFilesConfirmationDialog import \
                DeleteFilesConfirmationDialog
            dlg = DeleteFilesConfirmationDialog(
                self.parent(),
                self.tr("Uninstall Packages"),
                self.tr(
                    "Do you really want to uninstall these packages?"),
                packages)
            if dlg.exec_() == QDialog.Accepted:
                if not cmd:
                    cmd = self.__plugin.getPreferences("CurrentPipExecutable")
                args = ["uninstall", "--yes"] + packages
                dia = PipDialog(self.tr('Uninstall Packages'))
                res = dia.startProcess(cmd, args)
                if res:
                    dia.exec_()
        return res
    
    def __uninstallPackages(self):
        """
        Private slot to uninstall packages to be given by the user.
        """
        from .PipPackagesInputDialog import PipPackagesInputDialog
        dlg = PipPackagesInputDialog(
            self.__plugin, self.tr("Uninstall Packages"))
        if dlg.exec_() == QDialog.Accepted:
            command, packages = dlg.getData()
            if packages:
                self.uninstallPackages(packages, cmd=command)
    
    def __uninstallRequirements(self):
        """
        Private slot to uninstall packages as given in a requirements file.
        """
        from .PipRequirementsSelectionDialog import \
            PipRequirementsSelectionDialog
        dlg = PipRequirementsSelectionDialog(self.__plugin)
        if dlg.exec_() == QDialog.Accepted:
            command, requirements = dlg.getData()
            if requirements and os.path.exists(requirements):
                try:
                    f = open(requirements, "r")
                    reqs = f.read().splitlines()
                    f.close()
                except (OSError, IOError):
                    return
                
                from UI.DeleteFilesConfirmationDialog import \
                    DeleteFilesConfirmationDialog
                dlg = DeleteFilesConfirmationDialog(
                    self.parent(),
                    self.tr("Uninstall Packages"),
                    self.tr(
                        "Do you really want to uninstall these packages?"),
                    reqs)
                if dlg.exec_() == QDialog.Accepted:
                    if not command:
                        command = self.__plugin.getPreferences(
                            "CurrentPipExecutable")
                    args = ["uninstall", "--requirement", requirements]
                    dia = PipDialog(
                        self.tr('Uninstall Packages from Requirements'))
                    res = dia.startProcess(command, args)
                    if res:
                        dia.exec_()
    
    def __generateRequirements(self):
        """
        Private slot to generate the contents for a requirements file.
        """
        from .PipFreezeDialog import PipFreezeDialog
        self.__freezeDialog = PipFreezeDialog(self, self.__plugin)
        self.__freezeDialog.show()
        self.__freezeDialog.start()
    
    def __searchPyPI(self):
        """
        Private slot to search the Python Package Index.
        """
        from .PipSearchDialog import PipSearchDialog
        self.__searchDialog = PipSearchDialog(self, self.__plugin)
        self.__searchDialog.show()
    
    def __pipConfigure(self):
        """
        Private slot to open the configuration page.
        """
        e5App().getObject("UserInterface").showPreferences("pipPage")

# -*- coding: utf-8 -*-

# Copyright (c) 2014 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to enter the parameters for the
virtual environment.
"""

from __future__ import unicode_literals
try:
    str = unicode
except NameError:
    pass

import os
import sys
import re

from PyQt5.QtCore import pyqtSlot, QProcess, QTimer
from PyQt5.QtWidgets import QDialog, QDialogButtonBox

from E5Gui.E5Completers import E5DirCompleter, E5FileCompleter
from E5Gui import E5FileDialog

from .Ui_VirtualenvConfigurationDialog import Ui_VirtualenvConfigurationDialog

import Preferences
import Utilities
import UI.PixmapCache


class VirtualenvConfigurationDialog(QDialog, Ui_VirtualenvConfigurationDialog):
    """
    Class implementing a dialog to enter the parameters for the
    virtual environment.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget (QWidget)
        """
        super(VirtualenvConfigurationDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.targetDirectoryButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        self.extraSearchPathButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        self.pythonExecButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        
        self.__targetDirectoryCompleter = \
            E5DirCompleter(self.targetDirectoryEdit)
        self.__extraSearchPathCompleter = \
            E5DirCompleter(self.extraSearchPathEdit)
        self.__pythonExecCompleter = E5FileCompleter(self.pythonExecEdit)
        
        self.__versionRe = re.compile(r""".*?(\d+\.\d+\.\d+).*""")
        
        self.__virtualenvFound = False
        self.__pyvenvFound = False
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(False)
        
        self.__mandatoryStyleSheet = "QLineEdit {border: 2px solid;}"
        self.targetDirectoryEdit.setStyleSheet(self.__mandatoryStyleSheet)
        
        self.__setVirtualenvVersion()
        self.__setPyvenvVersion()
        if self.__virtualenvFound:
            self.virtualenvButton.setChecked(True)
        elif self.__pyvenvFound:
            self.pyvenvButton.setChecked(True)
        
        msh = self.minimumSizeHint()
        self.resize(max(self.width(), msh.width()), msh.height())
    
    def __updateOK(self):
        """
        Private method to update the enabled status of the OK button.
        """
        self.buttonBox.button(QDialogButtonBox.Ok).setEnabled(
            (self.__virtualenvFound or self.__pyvenvFound) and
            bool(self.targetDirectoryEdit.text())
        )
    
    def __updateUi(self):
        """
        Private method to update the UI depending on the selected
        virtual environment creator (virtualenv or pyvenv).
        """
        enable = self.virtualenvButton.isChecked()
        self.extraSearchPathLabel.setEnabled(enable)
        self.extraSearchPathEdit.setEnabled(enable)
        self.extraSearchPathButton.setEnabled(enable)
        self.promptPrefixLabel.setEnabled(enable)
        self.promptPrefixEdit.setEnabled(enable)
        self.verbosityLabel.setEnabled(enable)
        self.verbositySpinBox.setEnabled(enable)
        self.versionLabel.setEnabled(enable)
        self.versionComboBox.setEnabled(enable)
        self.unzipCheckBox.setEnabled(enable)
        self.noSetuptoolsCheckBox.setEnabled(enable)
        self.symlinkCheckBox.setEnabled(not enable)
        self.upgradeCheckBox.setEnabled(not enable)
    
    @pyqtSlot()
    def on_targetDirectoryButton_clicked(self):
        """
        Private slot to select the target directory via a directory
        selection dialog.
        """
        target = self.targetDirectoryEdit.text()
        if not target:
            target = Utilities.getHomeDir()
        target = Utilities.fromNativeSeparators(target)
        target = E5FileDialog.getExistingDirectory(
            self,
            self.tr("Virtualenv Target Directory"),
            target,
            E5FileDialog.Options(E5FileDialog.ShowDirsOnly))
        if target:
            self.targetDirectoryEdit.setText(
                Utilities.toNativeSeparators(target))
    
    @pyqtSlot(str)
    def on_targetDirectoryEdit_textChanged(self, txt):
        """
        Private slot handling a change of the target directory.
        
        @param txt target directory (string)
        """
        self.__updateOK()
    
    @pyqtSlot()
    def on_extraSearchPathButton_clicked(self):
        """
        Private slot to select the extra search path via a directory
        selection dialog.
        """
        extraSearchPath = self.extraSearchPathEdit.text()
        if not extraSearchPath:
            extraSearchPath = Utilities.getHomeDir()
        extraSearchPath = Utilities.fromNativeSeparators(extraSearchPath)
        extraSearchPath = E5FileDialog.getExistingDirectory(
            self,
            self.tr("Extra Search Path for setuptools/pip"),
            extraSearchPath,
            E5FileDialog.Options(E5FileDialog.ShowDirsOnly))
        if extraSearchPath:
            self.extraSearchPathEdit.setText(
                Utilities.toNativeSeparators(extraSearchPath))
    
    @pyqtSlot()
    def on_pythonExecButton_clicked(self):
        """
        Private slot to select a Python interpreter via a file selection
        dialog.
        """
        pythonExec = self.pythonExecEdit.text()
        if not pythonExec:
            pythonExec = sys.executable.replace("w.exe", ".exe")
        pythonExec = Utilities.fromNativeSeparators(pythonExec)
        pythonExec = E5FileDialog.getOpenFileName(
            self,
            self.tr("Python Interpreter"),
            pythonExec,
            "")
        if pythonExec:
            self.pythonExecEdit.setText(
                Utilities.toNativeSeparators(pythonExec))
    
    @pyqtSlot(str)
    def on_pythonExecEdit_textChanged(self, txt):
        """
        Private slot to react to a change of the Python executable.
        
        @param txt contents of the line edit (string)
        """
        self.__setVirtualenvVersion()
        self.__setPyvenvVersion()
        self.__updateOK()
    
    @pyqtSlot(bool)
    def on_virtualenvButton_toggled(self, checked):
        """
        Private slot to react to the selection of 'virtualenv'.
        
        @param checked state of the checkbox (boolean)
        """
        self.__updateUi()
    
    @pyqtSlot(bool)
    def on_pyvenvButton_toggled(self, checked):
        """
        Private slot to react to the selection of 'pyvenv'.
        
        @param checked state of the checkbox (boolean)
        """
        self.__updateUi()
    
    def __setVirtualenvVersion(self):
        """
        Private method to determine the virtualenv version and set the
        respective label.
        """
        calls = [
            (sys.executable.replace("w.exe", ".exe"),
             ["-m", "virtualenv", "--version"]),
            ("virtualenv", ["--version"]),
        ]
        if self.pythonExecEdit.text():
            calls.append((self.pythonExecEdit.text(),
                          ["-m", "virtualenv", "--version"]))
        
        proc = QProcess()
        for prog, args in calls:
            proc.start(prog, args)
            
            if not proc.waitForStarted(5000):
                # try next entry
                continue
            
            if not proc.waitForFinished(5000):
                # process hangs, kill it
                QTimer.singleShot(2000, proc.kill)
                proc.waitForFinished(3000)
                version = self.tr('<virtualenv did not finish within 5s.>')
                self.__virtualenvFound = False
                break
            
            if proc.exitCode() != 0:
                # returned with error code, try next
                continue
            
            output = str(proc.readAllStandardOutput(),
                         Preferences.getSystem("IOEncoding"),
                         'replace').strip()
            match = re.match(self.__versionRe, output)
            if match:
                self.__virtualenvFound = True
                version = match.group(1)
                break
        else:
            self.__virtualenvFound = False
            version = self.tr('<No suitable virtualenv found.>')
        
        self.virtualenvButton.setText(self.tr(
            "virtualenv Version: {0}".format(version)))
        self.virtualenvButton.setEnabled(self.__virtualenvFound)
        if not self.__virtualenvFound:
            self.virtualenvButton.setChecked(False)
    
    def __setPyvenvVersion(self):
        """
        Private method to determine the pyvenv version and set the respective
        label.
        """
        calls = []
        if self.pythonExecEdit.text():
            calls.append((self.pythonExecEdit.text(),
                          ["-m", "venv"]))
        calls.extend([
            (sys.executable.replace("w.exe", ".exe"),
             ["-m", "venv"]),
            ("python3", ["-m", "venv"]),
            ("python", ["-m", "venv"]),
        ])
        
        proc = QProcess()
        for prog, args in calls:
            proc.start(prog, args)
            
            if not proc.waitForStarted(5000):
                # try next entry
                continue
            
            if not proc.waitForFinished(5000):
                # process hangs, kill it
                QTimer.singleShot(2000, proc.kill)
                proc.waitForFinished(3000)
                version = self.tr('<pyvenv did not finish within 5s.>')
                self.__pyvenvFound = False
                break
            
            if proc.exitCode() not in [0, 2]:
                # returned with error code, try next
                continue
            
            proc.start(prog, ["--version"])
            proc.waitForFinished(5000)
            output = str(proc.readAllStandardOutput(),
                         Preferences.getSystem("IOEncoding"),
                         'replace').strip()
            match = re.match(self.__versionRe, output)
            if match:
                self.__pyvenvFound = True
                version = match.group(1)
                break
        else:
            self.__pyvenvFound = False
            version = self.tr('<No suitable pyvenv found.>')
        
        self.pyvenvButton.setText(self.tr(
            "pyvenv Version: {0}".format(version)))
        self.pyvenvButton.setEnabled(self.__pyvenvFound)
        if not self.__pyvenvFound:
            self.pyvenvButton.setChecked(False)
    
    def __generateTargetDir(self):
        """
        Private method to generate a valid target directory path.
        
        @return target directory path (string)
        """
        targetDirectory = Utilities.toNativeSeparators(
            self.targetDirectoryEdit.text())
        if not os.path.isabs(targetDirectory):
            targetDirectory = os.path.join(os.path.expanduser("~"),
                                           targetDirectory)
        return targetDirectory
    
    def __generateArguments(self):
        """
        Private method to generate the process arguments.
        
        @return process arguments (list of string)
        """
        args = []
        if self.virtualenvButton.isChecked():
            if self.extraSearchPathEdit.text():
                args.append("--extra-search-dir={0}".format(
                    Utilities.toNativeSeparators(
                        self.extraSearchPathEdit.text())))
            if self.promptPrefixEdit.text():
                args.append("--prompt={0}".format(
                    self.promptPrefixEdit.text().replace(" ", "_")))
            if self.pythonExecEdit.text():
                args.append("--python={0}".format(
                    Utilities.toNativeSeparators(self.pythonExecEdit.text())))
            elif self.versionComboBox.currentText():
                args.append("--python=python{0}".format(
                    self.versionComboBox.currentText()))
            if self.verbositySpinBox.value() == 1:
                args.append("--verbose")
            elif self.verbositySpinBox.value() == -1:
                args.append("--quiet")
            if self.clearCheckBox.isChecked():
                args.append("--clear")
            if self.systemCheckBox.isChecked():
                args.append("--system-site-packages")
            if self.unzipCheckBox.isChecked():
                args.append("--unzip-setuptools")
            if self.noSetuptoolsCheckBox.isChecked():
                args.append("--no-setuptools")
            if self.noPipCcheckBox.isChecked():
                args.append("--no-pip")
            if self.copyCheckBox.isChecked():
                args.append("--always-copy")
        elif self.pyvenvButton.isChecked():
            if self.clearCheckBox.isChecked():
                args.append("--clear")
            if self.systemCheckBox.isChecked():
                args.append("--system-site-packages")
            if self.noPipCcheckBox.isChecked():
                args.append("--without-pip")
            if self.copyCheckBox.isChecked():
                args.append("--copies")
            if self.symlinkCheckBox.isChecked():
                args.append("--symlinks")
            if self.upgradeCheckBox.isChecked():
                args.append("--upgrade")
        targetDirectory = self.__generateTargetDir()
        args.append(targetDirectory)
        return args

    def getData(self):
        """
        Public method to retrieve the dialog data.
        
        @return tuple containing a flag indicating the pyvenv selection
            (boolean), the process arguments (list of string), a flag
            indicating to open the target directory after creation (boolean),
            a flag indicating to write a log file (boolean), a flag indicating
            to write a script (boolean), the name of the target directory
            (string) and the name of the python interpreter to use (string)
        """
        args = self.__generateArguments()
        targetDirectory = self.__generateTargetDir()
        return (
            self.pyvenvButton.isChecked(),
            args,
            self.openCheckBox.isChecked(),
            self.logCheckBox.isChecked(),
            self.scriptCheckBox.isChecked(),
            targetDirectory,
            Utilities.toNativeSeparators(self.pythonExecEdit.text()),
        )

# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to list installed packages.
"""

from __future__ import unicode_literals
try:
    str = unicode       # __IGNORE_EXCEPTION__
except NameError:
    pass

import re

from PyQt5.QtCore import pyqtSlot, Qt, QProcess, QTimer
from PyQt5.QtWidgets import QDialog, QDialogButtonBox, QAbstractButton, \
    QApplication, QTreeWidgetItem, QHeaderView

from E5Gui import E5MessageBox

from .Ui_PipListDialog import Ui_PipListDialog

import Preferences


class PipListDialog(QDialog, Ui_PipListDialog):
    """
    Class implementing a dialog to list installed packages.
    """
    CommandArguments = {
        "list": ["list"],
        "uptodate": ["list", "--uptodate"],
        "outdated": ["list", "--outdated"],
    }
    
    def __init__(self, pip, mode, plugin, title, parent=None):
        """
        Constructor
        
        @param pip reference to the master object (Pip)
        @param mode list command mode (string; one of 'list',
            'uptodate', 'outdated')
        @param plugin reference to the plugin object (ToolPipPlugin)
        @param title title of the dialog (string)
        @param parent reference to the parent widget (QWidget)
        """
        assert mode in PipListDialog.CommandArguments
        
        super(PipListDialog, self).__init__(parent)
        self.setupUi(self)
        self.setWindowFlags(Qt.Window)
        
        self.setWindowTitle(title)
        
        self.__refreshButton = self.buttonBox.addButton(
            self.tr("&Refresh"), QDialogButtonBox.ActionRole)
        self.__refreshButton.setEnabled(False)
        if mode == "outdated":
            self.__upgradeButton = self.buttonBox.addButton(
                self.tr("Up&grade"), QDialogButtonBox.ActionRole)
            self.__upgradeButton.setEnabled(False)
            self.__upgradeAllButton = self.buttonBox.addButton(
                self.tr("Upgrade &All"), QDialogButtonBox.ActionRole)
            self.__upgradeAllButton.setEnabled(False)
        else:
            self.__upgradeButton = None
            self.__upgradeAllButton = None
        self.__uninstallButton = self.buttonBox.addButton(
            self.tr("&Uninstall"), QDialogButtonBox.ActionRole)
        self.__uninstallButton.setEnabled(False)
        
        self.__pip = pip
        self.__mode = mode
        self.__defaultCommand = plugin.getPreferences("CurrentPipExecutable")
        self.__ioEncoding = Preferences.getSystem("IOEncoding")
        self.__errors = ""
        self.__output = []
        
        self.__nothingStrings = {
            "list": self.tr("Nothing to show"),
            "uptodate": self.tr("All packages outdated"),
            "outdated": self.tr("All packages up-to-date"),
        }
        
        self.__default = self.tr("<Default>")
        pipExecutables = sorted(plugin.getPreferences("PipExecutables"))
        self.pipComboBox.addItem(self.__default)
        self.pipComboBox.addItems(pipExecutables)
        
        if mode == "list":
            self.infoLabel.setText(self.tr("Installed Packages:"))
            self.packageList.setHeaderLabels([
                self.tr("Package"),
                self.tr("Version"),
            ])
            self.__itemRe = re.compile(
                r"""(.*?)\s*\((\d.*?)\).*""")
        elif mode == "uptodate":
            self.infoLabel.setText(self.tr("Up-to-date Packages:"))
            self.packageList.setHeaderLabels([
                self.tr("Package"),
                self.tr("Version"),
            ])
            self.__itemRe = re.compile(
                r"""(.*?)\s*\((\d.*?)\).*""")
        elif mode == "outdated":
            self.infoLabel.setText(self.tr("Outdated Packages:"))
            self.packageList.setHeaderLabels([
                self.tr("Package"),
                self.tr("Current Version"),
                self.tr("Latest Version"),
                self.tr("Package Type"),
            ])
            self.__itemRe = re.compile(
                r"""(.*?)\s+\((?:\w+:\s+)?(\d.*?)"""
                r"""(?:\s+\w+:\s+|\)\s+-\s+\w+:\s+)"""
                r"""(\d[^\s)]*)(?:\s+\[(\w+)\])?(?:.*?\).*|.*)"""
            )
        
        self.packageList.header().setSortIndicator(0, Qt.AscendingOrder)
        
        self.__infoLabels = {
            "name": self.tr("Name"),
            "version": self.tr("Version"),
            "location": self.tr("Location"),
            "requires": self.tr("Requires"),
            "summary": self.tr("Summary"),
            "home-page": self.tr("Homepage"),
            "author": self.tr("Author"),
            "author-email": self.tr("Author Email"),
            "license": self.tr("License"),
        }
        self.infoWidget.setHeaderLabels(["Key", "Value"])
        
        self.process = QProcess()
        self.process.finished.connect(self.__procFinished)
        self.process.readyReadStandardOutput.connect(self.__readStdout)
        self.process.readyReadStandardError.connect(self.__readStderr)
        
        self.show()
        QApplication.processEvents()
    
    def __stopProcess(self):
        """
        Private slot to stop the running process.
        """
        if self.process.state() != QProcess.NotRunning:
            self.process.terminate()
            QTimer.singleShot(2000, self.process.kill)
            self.process.waitForFinished(3000)
        
        QApplication.restoreOverrideCursor()
    
    def closeEvent(self, e):
        """
        Protected slot implementing a close event handler.
        
        @param e close event (QCloseEvent)
        """
        self.__stopProcess()
        e.accept()
    
    def __finish(self):
        """
        Private slot called when the process finished or the user pressed
        the cancel button.
        """
        self.__stopProcess()
        
        self.__processOutput()
        
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Close).setDefault(True)
        self.buttonBox.button(QDialogButtonBox.Close).setFocus(
            Qt.OtherFocusReason)
        self.__refreshButton.setEnabled(True)
        
        if self.packageList.topLevelItemCount() == 0:
            QTreeWidgetItem(self.packageList,
                            [self.__nothingStrings[self.__mode]])
            if self.__errors and not self.__errors.startswith("DEPRECATION"):
                E5MessageBox.critical(
                    self,
                    self.windowTitle(),
                    self.tr("""<p>The pip command failed.</p>"""
                            """<p>Reason: {0}</p>""").format(
                        self.__errors.replace("\r\n", "<br/>")
                            .replace("\n", "<br/>").replace("\r", "<br/>")
                            .replace(" ", "&nbsp;")))
            if self.__upgradeAllButton is not None:
                self.__upgradeAllButton.setEnabled(False)
        else:
            if self.__upgradeAllButton is not None:
                self.__upgradeAllButton.setEnabled(True)
        
        self.packageList.sortItems(
            0,
            self.packageList.header().sortIndicatorOrder())
        self.packageList.header().resizeSections(
            QHeaderView.ResizeToContents)
        self.packageList.header().setStretchLastSection(True)
    
    @pyqtSlot(QAbstractButton)
    def on_buttonBox_clicked(self, button):
        """
        Private slot called by a button of the button box clicked.
        
        @param button button that was clicked (QAbstractButton)
        """
        if button == self.buttonBox.button(QDialogButtonBox.Close):
            self.close()
        elif button == self.buttonBox.button(QDialogButtonBox.Cancel):
            self.__finish()
        elif button == self.__refreshButton:
            self.__refresh()
        elif button == self.__upgradeButton:
            self.__upgradePackages()
        elif button == self.__upgradeAllButton:
            self.__upgradeAllPackages()
        elif button == self.__uninstallButton:
            self.__uninstallPackages()
    
    def __procFinished(self, exitCode, exitStatus):
        """
        Private slot connected to the finished signal.
        
        @param exitCode exit code of the process (integer)
        @param exitStatus exit status of the process (QProcess.ExitStatus)
        """
        self.__finish()
    
    def __refresh(self):
        """
        Private slot to refresh the displayed list.
        """
        self.__stopProcess()
        self.start()
    
    def start(self):
        """
        Public method to start the command.
        """
        self.packageList.clear()
        self.__errors = ""
        self.__output = []
        
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setDefault(True)
        self.__refreshButton.setEnabled(False)
        QApplication.processEvents()
        
        QApplication.setOverrideCursor(Qt.WaitCursor)
        QApplication.processEvents()
        
        command = self.pipComboBox.currentText()
        if command == self.__default:
            command = self.__defaultCommand
        
        args = PipListDialog.CommandArguments[self.__mode][:]
        if self.localCheckBox.isChecked():
            args.append("--local")
        
        self.process.start(command, args)
        procStarted = self.process.waitForStarted(5000)
        if not procStarted:
            self.buttonBox.setFocus()
            self.__stopProcess()
            E5MessageBox.critical(
                self,
                self.tr('Process Generation Error'),
                self.tr(
                    'The process {0} could not be started.'
                ).format(command))
            self.__finish()
    
    def __processOutput(self):
        """
        Private method to process the captured output.
        """
        if len(self.__output) > 2 and self.__output[1].startswith("-"):
            # column mode
            for line in self.__output[2:]:
                groups = line.split()
                QTreeWidgetItem(self.packageList, groups)
        else:
            # legacy mode
            for line in self.__output:
                match = self.__itemRe.match(line)
                if match:
                    groups = match.groups()
                    QTreeWidgetItem(self.packageList, groups)
    
    def __readStdout(self):
        """
        Private slot to handle the readyReadStandardOutput signal.
        
        It reads the output of the process, formats it and inserts it into
        the contents pane.
        """
        self.process.setReadChannel(QProcess.StandardOutput)
        
        while self.process.canReadLine():
            line = str(self.process.readLine(), self.__ioEncoding,
                       'replace').strip()
            self.__output.append(line)
    
    def __readStderr(self):
        """
        Private slot to handle the readyReadStandardError signal.
        
        It reads the error output of the process and inserts it into the
        error pane.
        """
        self.__errors += str(self.process.readAllStandardError(),
                             self.__ioEncoding, 'replace')
    
    @pyqtSlot(str)
    def on_pipComboBox_activated(self, txt):
        """
        Private slot handling the selection of a pip executable.
        
        @param txt path of the pip executable (string)
        """
        self.__refresh()
    
    @pyqtSlot(bool)
    def on_localCheckBox_clicked(self, checked):
        """
        Private slot handling the switching of the local mode.
        
        @param checked state of the local check box (boolean)
        """
        self.__refresh()
    
    @pyqtSlot()
    def on_packageList_itemSelectionChanged(self):
        """
        Private slot handling the selection of a package.
        """
        self.infoWidget.clear()
        
        if len(self.packageList.selectedItems()) == 1:
            itm = self.packageList.selectedItems()[0]
            
            command = self.pipComboBox.currentText()
            if command == self.__default:
                command = ""
            
            QApplication.setOverrideCursor(Qt.WaitCursor)
            success, output = self.__pip.runProcess(
                ["show", itm.text(0)],
                cmd=command)
            
            if success and output:
                for line in output.splitlines():
                    line = line.strip()
                    if line != "---":
                        try:
                            label, info = line.split(": ", 1)
                        except ValueError:
                            label = line[:-1]
                            info = ""
                        label = label.lower()
                        if label in self.__infoLabels:
                            QTreeWidgetItem(
                                self.infoWidget,
                                [self.__infoLabels[label], info])
            header = self.infoWidget.header()
            header.setStretchLastSection(False)
            header.resizeSections(QHeaderView.ResizeToContents)
            if header.sectionSize(0) + header.sectionSize(1) < header.width():
                header.setStretchLastSection(True)
            
            QApplication.restoreOverrideCursor()
        
        enable = (len(self.packageList.selectedItems()) > 1 or
                  (len(self.packageList.selectedItems()) == 1 and
                   self.packageList.selectedItems()[0].text(0) not in
                   self.__nothingStrings.values()))
        self.__upgradeButton and self.__upgradeButton.setEnabled(enable)
        self.__uninstallButton.setEnabled(enable)
    
    def __upgradePackages(self):
        """
        Private slot to upgrade the selected packages.
        """
        packages = []
        for itm in self.packageList.selectedItems():
            packages.append(itm.text(0))
        
        if packages:
            if "pip" in packages:
                self.__upgradePip()
            else:
                self.__executeUpgradePackages(packages)
    
    def __upgradeAllPackages(self):
        """
        Private slot to upgrade all listed packages.
        """
        packages = []
        for index in range(self.packageList.topLevelItemCount()):
            itm = self.packageList.topLevelItem(index)
            packages.append(itm.text(0))
        
        if packages:
            if "pip" in packages:
                self.__upgradePip()
            else:
                self.__executeUpgradePackages(packages)
    
    def __upgradePip(self):
        """
        Private slot to upgrade pip itself.
        """
        pip = self.pipComboBox.currentText()
        if pip == self.__default:
            pip = ""

        res = self.__pip.upgradePip(pip=pip)
        if res:
            self.__refresh()

    def __executeUpgradePackages(self, packages):
        """
        Private method to execute the pip upgrade command.
        
        @param packages list of package names to be upgraded
        @type list of str
        """
        command = self.pipComboBox.currentText()
        if command == self.__default:
            command = ""

        res = self.__pip.upgradePackages(packages, cmd=command)
        if res:
            self.__refresh()
    
    def __uninstallPackages(self):
        """
        Private slot to uninstall the selected packages.
        """
        packages = []
        for itm in self.packageList.selectedItems():
            packages.append(itm.text(0))
        
        if packages:
            command = self.pipComboBox.currentText()
            if command == self.__default:
                command = ""
            
            res = self.__pip.uninstallPackages(packages, cmd=command)
            if res:
                self.__refresh()

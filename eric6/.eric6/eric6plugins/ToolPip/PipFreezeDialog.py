# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to generate a requirements file.
"""

from __future__ import unicode_literals
try:
    str = unicode       # __IGNORE_EXCEPTION__
except NameError:
    pass

import os

from PyQt5.QtCore import pyqtSlot, Qt
from PyQt5.QtWidgets import QDialog, QDialogButtonBox, QAbstractButton, \
    QApplication

from E5Gui import E5MessageBox, E5FileDialog
from E5Gui.E5Application import e5App

from .Ui_PipFreezeDialog import Ui_PipFreezeDialog

import Utilities
import UI.PixmapCache


class PipFreezeDialog(QDialog, Ui_PipFreezeDialog):
    """
    Class implementing a dialog to generate a requirements file.
    """
    def __init__(self, pip, plugin, parent=None):
        """
        Constructor
        
        @param pip reference to the master object (Pip)
        @param plugin reference to the plugin object (ToolPipPlugin)
        @param parent reference to the parent widget (QWidget)
        """
        super(PipFreezeDialog, self).__init__(parent)
        self.setupUi(self)
        self.setWindowFlags(Qt.Window)
        
        self.__refreshButton = self.buttonBox.addButton(
            self.tr("&Refresh"), QDialogButtonBox.ActionRole)
        
        self.fileButton.setIcon(UI.PixmapCache.getIcon("open.png"))
        
        self.__pip = pip
        
        self.__default = self.tr("<Default>")
        pipExecutables = sorted(plugin.getPreferences("PipExecutables"))
        self.pipComboBox.addItem(self.__default)
        self.pipComboBox.addItems(pipExecutables)
        
        self.__requirementsEdited = False
        self.__requirementsAvailable = False
        
        self.__updateButtons()
    
    def closeEvent(self, e):
        """
        Protected slot implementing a close event handler.
        
        @param e close event (QCloseEvent)
        """
        QApplication.restoreOverrideCursor()
        e.accept()
    
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
    
    @pyqtSlot(str)
    def on_requirementsFileEdit_textChanged(self, txt):
        """
        Private slot handling a change of the requirements file name.
        
        @param txt name of the requirements file (string)
        """
        self.__updateButtons()
    
    @pyqtSlot()
    def on_fileButton_clicked(self):
        """
        Private slot to enter the requirements file via a file selection
        dialog.
        """
        fileName = E5FileDialog.getOpenFileName(
            self,
            self.tr("Select the requirements file"),
            self.requirementsFileEdit.text() or os.path.expanduser("~"),
            self.tr("Text Files (*.txt);;All Files (*)")
        )
        if fileName:
            self.requirementsFileEdit.setText(
                Utilities.toNativeSeparators(fileName))
    
    @pyqtSlot()
    def on_requirementsEdit_textChanged(self):
        """
        Private slot handling changes of the requirements text.
        """
        self.__requirementsEdited = True
    
    @pyqtSlot(QAbstractButton)
    def on_buttonBox_clicked(self, button):
        """
        Private slot called by a button of the button box clicked.
        
        @param button button that was clicked (QAbstractButton)
        """
        if button == self.buttonBox.button(QDialogButtonBox.Close):
            self.close()
        elif button == self.__refreshButton:
            self.__refresh()
    
    def __refresh(self):
        """
        Private slot to refresh the displayed list.
        """
        if self.__requirementsEdited:
            ok = E5MessageBox.yesNo(
                self,
                self.tr("Generate Requirements"),
                self.tr("""The requirements were changed. Do you want"""
                        """ to overwrite these changes?"""))
        else:
            ok = True
        if ok:
            self.start()
    
    def start(self):
        """
        Public method to start the command.
        """
        self.requirementsEdit.clear()
        self.__requirementsAvailable = False
        
        command = self.pipComboBox.currentText()
        if command == self.__default:
            command = ""
        
        args = ["freeze"]
        if self.localCheckBox.isChecked():
            args.append("--local")
        if self.requirementsFileEdit.text():
            fileName = Utilities.toNativeSeparators(
                self.requirementsFileEdit.text())
            if os.path.exists(fileName):
                args.append("--requirement")
                args.append(fileName)
        
        QApplication.setOverrideCursor(Qt.WaitCursor)
        success, output = self.__pip.runProcess(
            args, cmd=command)
        
        if success:
            self.requirementsEdit.setPlainText(output)
            self.__requirementsAvailable = True
        else:
            self.requirementsEdit.setPlainText(
                self.tr("No output generated by 'pip freeze'."))
        
        QApplication.restoreOverrideCursor()
        self.__updateButtons()
        
        self.__requirementsEdited = False
    
    def __updateButtons(self):
        """
        Private method to set the state of the various buttons.
        """
        self.saveButton.setEnabled(
            self.__requirementsAvailable and
            bool(self.requirementsFileEdit.text())
        )
        self.saveToButton.setEnabled(self.__requirementsAvailable)
        self.copyButton.setEnabled(self.__requirementsAvailable)
        
        aw = e5App().getObject("ViewManager").activeWindow()
        if aw and self.__requirementsAvailable:
            self.insertButton.setEnabled(True)
            self.replaceAllButton.setEnabled(True)
            self.replaceSelectionButton.setEnabled(
                aw.hasSelectedText())
        else:
            self.insertButton.setEnabled(False)
            self.replaceAllButton.setEnabled(False)
            self.replaceSelectionButton.setEnabled(False)
    
    def __writeToFile(self, fileName):
        """
        Private method to write the requirements text to a file.
        
        @param fileName name of the file to write to (string)
        """
        if os.path.exists(fileName):
            ok = E5MessageBox.warning(
                self,
                self.tr("Generate Requirements"),
                self.tr("""The file <b>{0}</b> already exists. Do you want"""
                        """ to overwrite it?""").format(fileName))
            if not ok:
                return
        
        try:
            f = open(fileName, "w")
            f.write(self.requirementsEdit.toPlainText())
            f.close()
        except (OSError, IOError) as err:
            E5MessageBox.critical(
                self,
                self.tr("Generate Requirements"),
                self.tr("""<p>The requirements could not be written"""
                        """ to <b>{0}</b>.</p><p>Reason: {1}</p>""")
                .format(fileName, str(err)))
    
    @pyqtSlot()
    def on_saveButton_clicked(self):
        """
        Private slot to save the requirements text to the requirements file.
        """
        fileName = self.requirementsFileEdit.text()
        self.__writeToFile(fileName)
    
    @pyqtSlot()
    def on_saveToButton_clicked(self):
        """
        Private slot to write the requirements text to a new file.
        """
        fileName, selectedFilter = E5FileDialog.getSaveFileNameAndFilter(
            self,
            self.tr("Generate Requirements"),
            os.path.expanduser("~"),
            self.tr("Text Files (*.txt);;All Files (*)"),
            None,
            E5FileDialog.Options(E5FileDialog.DontConfirmOverwrite)
        )
        if fileName:
            ext = os.path.splitext(fileName)[1]
            if not ext:
                ex = selectedFilter.split("(*")[1].split(")")[0]
                if ex:
                    fileName += ex
            self.__writeToFile(fileName)
    
    @pyqtSlot()
    def on_copyButton_clicked(self):
        """
        Private slot to copy the requirements text to the clipboard.
        """
        txt = self.requirementsEdit.toPlainText()
        cb = QApplication.clipboard()
        cb.setText(txt)
    
    @pyqtSlot()
    def on_insertButton_clicked(self):
        """
        Private slot to insert the requirements text at the cursor position
        of the current editor.
        """
        aw = e5App().getObject("ViewManager").activeWindow()
        if aw:
            aw.beginUndoAction()
            aw.insert(self.requirementsEdit.toPlainText())
            aw.endUndoAction()
    
    @pyqtSlot()
    def on_replaceSelectionButton_clicked(self):
        """
        Private slot to replace the selected text of the current editor
        with the requirements text.
        """
        aw = e5App().getObject("ViewManager").activeWindow()
        if aw:
            aw.beginUndoAction()
            aw.replaceSelectedText(self.requirementsEdit.toPlainText())
            aw.endUndoAction()
    
    @pyqtSlot()
    def on_replaceAllButton_clicked(self):
        """
        Private slot to replace the text of the current editor with the
        requirements text.
        """
        aw = e5App().getObject("ViewManager").activeWindow()
        if aw:
            aw.setText(self.requirementsEdit.toPlainText())

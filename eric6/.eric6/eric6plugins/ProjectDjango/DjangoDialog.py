# -*- coding: utf-8 -*-

# Copyright (c) 2013 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog starting a process and showing its output.
"""

from __future__ import unicode_literals
try:
    str = unicode    # __IGNORE_WARNING__
except NameError:
    pass

from PyQt5.QtCore import pyqtSlot, QProcess, QTimer, QFileInfo
from PyQt5.QtWidgets import QDialog, QDialogButtonBox, QAbstractButton, \
    QTextEdit

from E5Gui import E5MessageBox, E5FileDialog

from .Ui_DjangoDialog import Ui_DjangoDialog

import Preferences

from Globals import isWindowsPlatform


class DjangoDialog(QDialog, Ui_DjangoDialog):
    """
    Class implementing a dialog starting a process and showing its output.
    
    It starts a QProcess and displays a dialog that
    shows the output of the process. The dialog is modal,
    which causes a synchronized execution of the process.
    """
    def __init__(self, text, fixed=False, linewrap=True,
                 msgSuccess=None, msgError=None,
                 saveFilters=None,
                 parent=None):
        """
        Constructor
        
        @param text text to be shown by the label (string)
        @keyparam fixed flag indicating a fixed font should be used (boolean)
        @keyparam linewrap flag indicating to wrap long lines (boolean)
        @keyparam msgSuccess optional string to show upon successful execution
            (string)
        @keyparam msgError optional string to show upon unsuccessful execution
            (string)
        @keyparam saveFilters filename filter string (string)
        @keyparam parent parent widget (QWidget)
        """
        super(DjangoDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Cancel).setDefault(True)
        self.buttonBox.button(QDialogButtonBox.Save).setEnabled(False)
        if saveFilters is None:
            self.buttonBox.button(QDialogButtonBox.Save).setHidden(True)
        
        self.ioEncoding = Preferences.getSystem("IOEncoding")
        
        self.proc = None
        self.argsLists = []
        self.workingDir = None
        self.mergedOutput = False
        self.msgSuccess = msgSuccess
        self.msgError = msgError
        self.fileFilters = saveFilters
        
        self.outputGroup.setTitle(text)
        
        if fixed:
            if isWindowsPlatform():
                self.resultbox.setFontFamily("Lucida Console")
            else:
                self.resultbox.setFontFamily("Monospace")
        
        if not linewrap:
            self.resultbox.setLineWrapMode(QTextEdit.NoWrap)
    
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
        elif button == self.buttonBox.button(QDialogButtonBox.Save):
            self.__saveData()
    
    def __finish(self):
        """
        Private slot called when the process finished or the user pressed the
        button.
        """
        if self.proc is not None and \
           self.proc.state() != QProcess.NotRunning:
            self.proc.terminate()
            QTimer.singleShot(2000, self.proc.kill)
            self.proc.waitForFinished(3000)
        
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Close).setDefault(True)
        self.buttonBox.button(QDialogButtonBox.Save).setEnabled(True)
        
        self.proc = None
        
        if self.argsLists:
            args = self.argsLists[0][:]
            del self.argsLists[0]
            self.startProcess(args, self.workingDir,
                              mergedOutput=self.mergedOutput)
    
    def __procFinished(self, exitCode, exitStatus):
        """
        Private slot connected to the finished signal.
        
        @param exitCode exit code of the process (integer)
        @param exitStatus exit status of the process (QProcess.ExitStatus)
        """
        self.normal = (exitStatus == QProcess.NormalExit) and (exitCode == 0)
        self.__finish()
        
        if self.normal and self.msgSuccess:
            self.resultbox.insertPlainText(self.msgSuccess)
        elif not self.normal and self.msgError:
            self.resultbox.insertPlainText(self.msgError)
            self.errorGroup.show()
        self.resultbox.ensureCursorVisible()
    
    def startProcess(self, args, workingDir=None, showCommand=True,
                     mergedOutput=False):
        """
        Public slot used to start the process.
        
        @param args list of arguments for the process (list of strings)
        @param workingDir working directory for the process (string)
        @param showCommand flag indicating to show the command executed
            (boolean)
        @param mergedOutput flag indicating to merge the output of the process
            (boolean)
        @return flag indicating a successful start of the process (boolean)
        """
        self.errorGroup.hide()
        
        self.normal = False
        
        self.proc = QProcess()
        if mergedOutput:
            self.proc.setProcessChannelMode(QProcess.MergedChannels)
        
        if showCommand:
            self.resultbox.append(' '.join(args))
            self.resultbox.append('')
        
        self.proc.finished.connect(self.__procFinished)
        self.proc.readyReadStandardOutput.connect(self.__readStdout)
        self.proc.readyReadStandardError.connect(self.__readStderr)
        
        if workingDir:
            self.proc.setWorkingDirectory(workingDir)
            self.workingDir = workingDir
        else:
            self.workingDir = ""
        
        prog = args[0]
        del args[0]
        self.proc.start(prog, args)
        procStarted = self.proc.waitForStarted()
        if not procStarted:
            self.buttonBox.setFocus()
            E5MessageBox.critical(
                self,
                self.tr('Process Generation Error'),
                self.tr(
                    'The process {0} could not be started. '
                    'Ensure, that it is in the search path.'
                ).format(prog))
        return procStarted
    
    def startBatchProcesses(self, argsLists, workingDir=None,
                            mergedOutput=False):
        """
        Public slot used to start a batch of processes.
        
        @param argsLists list of lists of arguments for the processes
            (list of lists of strings)
        @param workingDir working directory for the process (string)
        @param mergedOutput flag indicating to merge the output of the process
            (boolean)
        @return flag indicating a successful start of the first process
            (boolean)
        """
        self.argsLists = argsLists[:]
        self.workingDir = workingDir
        self.mergedOutput = mergedOutput
        
        # start the first process
        args = self.argsLists[0][:]
        del self.argsLists[0]
        res = self.startProcess(args, self.workingDir,
                                mergedOutput=self.mergedOutput)
        if not res:
            self.argsLists = []
        
        return res
    
    def normalExit(self):
        """
        Public method to check for a normal process termination.
        
        @return flag indicating normal process termination (boolean)
        """
        return self.normal
    
    def normalExitWithoutErrors(self):
        """
        Public method to check for a normal process termination without
        error messages.
        
        @return flag indicating normal process termination (boolean)
        """
        return self.normal and self.errors.toPlainText() == ""
    
    def __readStdout(self):
        """
        Private slot to handle the readyReadStdout signal.
        
        It reads the output of the process, formats it and inserts it into
        the contents pane.
        """
        if self.proc is not None:
            s = str(self.proc.readAllStandardOutput(), self.ioEncoding,
                    'replace')
            self.resultbox.insertPlainText(s)
            self.resultbox.ensureCursorVisible()
    
    def __readStderr(self):
        """
        Private slot to handle the readyReadStderr signal.
        
        It reads the error output of the process and inserts it into the
        error pane.
        """
        if self.proc is not None:
            self.errorGroup.show()
            s = str(self.proc.readAllStandardError(), self.ioEncoding,
                    'replace')
            self.errors.insertPlainText(s)
            self.errors.ensureCursorVisible()
    
    def __saveData(self):
        """
        Private slot to save the output to a file.
        """
        fname, selectedFilter = E5FileDialog.getSaveFileNameAndFilter(
            self,
            self.tr("Select data file"),
            self.workingDir,
            self.fileFilters,
            None)
        
        if fname:
            ext = QFileInfo(fname).suffix()
            if not ext:
                ex = selectedFilter.split("(*")[1].split(")")[0]
                if ex:
                    fname += ex
            
            txt = self.resultbox.toPlainText()
            
            try:
                f = open(fname, "w", encoding="utf-8")
                f.write(txt)
                f.close()
            except IOError as err:
                E5MessageBox.critical(
                    self,
                    self.tr("Error saving data"),
                    self.tr("""<p>The data could not be written"""
                            """ to <b>{0}</b></p><p>Reason: {1}</p>""")
                    .format(fname, str(err)))

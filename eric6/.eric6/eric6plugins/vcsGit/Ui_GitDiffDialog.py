# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/vcsGit/GitDiffDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GitDiffDialog(object):
    def setupUi(self, GitDiffDialog):
        GitDiffDialog.setObjectName("GitDiffDialog")
        GitDiffDialog.resize(749, 646)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(GitDiffDialog)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.contentsGroup = QtWidgets.QGroupBox(GitDiffDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(3)
        sizePolicy.setHeightForWidth(self.contentsGroup.sizePolicy().hasHeightForWidth())
        self.contentsGroup.setSizePolicy(sizePolicy)
        self.contentsGroup.setObjectName("contentsGroup")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.contentsGroup)
        self.verticalLayout.setObjectName("verticalLayout")
        self.filesCombo = QtWidgets.QComboBox(self.contentsGroup)
        self.filesCombo.setObjectName("filesCombo")
        self.verticalLayout.addWidget(self.filesCombo)
        self.splitter = QtWidgets.QSplitter(self.contentsGroup)
        self.splitter.setOrientation(QtCore.Qt.Vertical)
        self.splitter.setObjectName("splitter")
        self.contents = QtWidgets.QTextEdit(self.splitter)
        self.contents.setLineWrapMode(QtWidgets.QTextEdit.NoWrap)
        self.contents.setReadOnly(True)
        self.contents.setTabStopWidth(8)
        self.contents.setAcceptRichText(False)
        self.contents.setObjectName("contents")
        self.contents2 = QtWidgets.QTextEdit(self.splitter)
        self.contents2.setLineWrapMode(QtWidgets.QTextEdit.NoWrap)
        self.contents2.setReadOnly(True)
        self.contents2.setTabStopWidth(8)
        self.contents2.setAcceptRichText(False)
        self.contents2.setObjectName("contents2")
        self.verticalLayout.addWidget(self.splitter)
        self.verticalLayout_2.addWidget(self.contentsGroup)
        self.errorGroup = QtWidgets.QGroupBox(GitDiffDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.errorGroup.sizePolicy().hasHeightForWidth())
        self.errorGroup.setSizePolicy(sizePolicy)
        self.errorGroup.setObjectName("errorGroup")
        self.vboxlayout = QtWidgets.QVBoxLayout(self.errorGroup)
        self.vboxlayout.setObjectName("vboxlayout")
        self.errors = QtWidgets.QTextEdit(self.errorGroup)
        self.errors.setReadOnly(True)
        self.errors.setAcceptRichText(False)
        self.errors.setObjectName("errors")
        self.vboxlayout.addWidget(self.errors)
        self.verticalLayout_2.addWidget(self.errorGroup)
        self.buttonBox = QtWidgets.QDialogButtonBox(GitDiffDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Close|QtWidgets.QDialogButtonBox.Save)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout_2.addWidget(self.buttonBox)

        self.retranslateUi(GitDiffDialog)
        self.buttonBox.rejected.connect(GitDiffDialog.close)
        QtCore.QMetaObject.connectSlotsByName(GitDiffDialog)
        GitDiffDialog.setTabOrder(self.filesCombo, self.contents)
        GitDiffDialog.setTabOrder(self.contents, self.contents2)
        GitDiffDialog.setTabOrder(self.contents2, self.errors)

    def retranslateUi(self, GitDiffDialog):
        _translate = QtCore.QCoreApplication.translate
        GitDiffDialog.setWindowTitle(_translate("GitDiffDialog", "Git Diff"))
        self.contentsGroup.setTitle(_translate("GitDiffDialog", "Difference"))
        self.contents.setWhatsThis(_translate("GitDiffDialog", "<b>Git Diff</b><p>This shows the output of the git diff command.</p>"))
        self.contents2.setWhatsThis(_translate("GitDiffDialog", "<b>Git Diff</b><p>This shows the output of the git diff command (stage to repo) if the dialog was asked to show separate diffs.</p>"))
        self.errorGroup.setTitle(_translate("GitDiffDialog", "Errors"))


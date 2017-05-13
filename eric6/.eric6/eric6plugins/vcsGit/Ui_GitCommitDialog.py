# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/vcsGit/GitCommitDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GitCommitDialog(object):
    def setupUi(self, GitCommitDialog):
        GitCommitDialog.setObjectName("GitCommitDialog")
        GitCommitDialog.resize(450, 400)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(GitCommitDialog)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.logGroup = QtWidgets.QGroupBox(GitCommitDialog)
        self.logGroup.setObjectName("logGroup")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.logGroup)
        self.verticalLayout.setObjectName("verticalLayout")
        self.logEdit = QtWidgets.QTextEdit(self.logGroup)
        self.logEdit.setTabChangesFocus(True)
        self.logEdit.setAcceptRichText(False)
        self.logEdit.setObjectName("logEdit")
        self.verticalLayout.addWidget(self.logEdit)
        self.label = QtWidgets.QLabel(self.logGroup)
        self.label.setObjectName("label")
        self.verticalLayout.addWidget(self.label)
        self.recentComboBox = QtWidgets.QComboBox(self.logGroup)
        self.recentComboBox.setObjectName("recentComboBox")
        self.verticalLayout.addWidget(self.recentComboBox)
        self.verticalLayout_2.addWidget(self.logGroup)
        self.stagedCheckBox = QtWidgets.QCheckBox(GitCommitDialog)
        self.stagedCheckBox.setObjectName("stagedCheckBox")
        self.verticalLayout_2.addWidget(self.stagedCheckBox)
        self.amendCheckBox = QtWidgets.QCheckBox(GitCommitDialog)
        self.amendCheckBox.setObjectName("amendCheckBox")
        self.verticalLayout_2.addWidget(self.amendCheckBox)
        self.resetAuthorCheckBox = QtWidgets.QCheckBox(GitCommitDialog)
        self.resetAuthorCheckBox.setObjectName("resetAuthorCheckBox")
        self.verticalLayout_2.addWidget(self.resetAuthorCheckBox)
        self.buttonBox = QtWidgets.QDialogButtonBox(GitCommitDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Close|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout_2.addWidget(self.buttonBox)

        self.retranslateUi(GitCommitDialog)
        QtCore.QMetaObject.connectSlotsByName(GitCommitDialog)
        GitCommitDialog.setTabOrder(self.logEdit, self.recentComboBox)
        GitCommitDialog.setTabOrder(self.recentComboBox, self.stagedCheckBox)
        GitCommitDialog.setTabOrder(self.stagedCheckBox, self.amendCheckBox)
        GitCommitDialog.setTabOrder(self.amendCheckBox, self.resetAuthorCheckBox)

    def retranslateUi(self, GitCommitDialog):
        _translate = QtCore.QCoreApplication.translate
        GitCommitDialog.setWindowTitle(_translate("GitCommitDialog", "Git"))
        self.logGroup.setTitle(_translate("GitCommitDialog", "Commit Message"))
        self.logEdit.setToolTip(_translate("GitCommitDialog", "Enter the log message."))
        self.logEdit.setWhatsThis(_translate("GitCommitDialog", "<b>Log Message</b>\n"
"<p>Enter the log message for the commit action.</p>"))
        self.label.setText(_translate("GitCommitDialog", "Recent commit messages"))
        self.recentComboBox.setToolTip(_translate("GitCommitDialog", "Select a recent commit message to use"))
        self.stagedCheckBox.setToolTip(_translate("GitCommitDialog", "Select to commit only staged changes"))
        self.stagedCheckBox.setText(_translate("GitCommitDialog", "Commit staged changes only"))
        self.amendCheckBox.setToolTip(_translate("GitCommitDialog", "Select to amend the last commit (leave message empty to keep it)"))
        self.amendCheckBox.setText(_translate("GitCommitDialog", "Amend the last commit"))
        self.resetAuthorCheckBox.setToolTip(_translate("GitCommitDialog", "Select to reset the author information"))
        self.resetAuthorCheckBox.setText(_translate("GitCommitDialog", "Reset Author Info"))


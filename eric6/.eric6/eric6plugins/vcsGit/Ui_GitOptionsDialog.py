# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/vcsGit/GitOptionsDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GitOptionsDialog(object):
    def setupUi(self, GitOptionsDialog):
        GitOptionsDialog.setObjectName("GitOptionsDialog")
        GitOptionsDialog.resize(565, 78)
        GitOptionsDialog.setSizeGripEnabled(True)
        self.verticalLayout = QtWidgets.QVBoxLayout(GitOptionsDialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.TextLabel5 = QtWidgets.QLabel(GitOptionsDialog)
        self.TextLabel5.setObjectName("TextLabel5")
        self.horizontalLayout.addWidget(self.TextLabel5)
        self.vcsLogEdit = QtWidgets.QLineEdit(GitOptionsDialog)
        self.vcsLogEdit.setObjectName("vcsLogEdit")
        self.horizontalLayout.addWidget(self.vcsLogEdit)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.buttonBox = QtWidgets.QDialogButtonBox(GitOptionsDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout.addWidget(self.buttonBox)
        self.TextLabel5.setBuddy(self.vcsLogEdit)

        self.retranslateUi(GitOptionsDialog)
        self.buttonBox.accepted.connect(GitOptionsDialog.accept)
        self.buttonBox.rejected.connect(GitOptionsDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(GitOptionsDialog)

    def retranslateUi(self, GitOptionsDialog):
        _translate = QtCore.QCoreApplication.translate
        GitOptionsDialog.setWindowTitle(_translate("GitOptionsDialog", "Initial Commit"))
        GitOptionsDialog.setWhatsThis(_translate("GitOptionsDialog", "<b>Initial Commit Dialog</b>\n"
"<p>Enter the message for the initial commit.</p>"))
        self.TextLabel5.setText(_translate("GitOptionsDialog", "Commit &Message:"))
        self.vcsLogEdit.setToolTip(_translate("GitOptionsDialog", "Enter the log message for the new project."))
        self.vcsLogEdit.setWhatsThis(_translate("GitOptionsDialog", "<b>Log Message</b>\n"
"<p>Enter the log message to be used for the new project.</p>"))
        self.vcsLogEdit.setText(_translate("GitOptionsDialog", "new project started"))


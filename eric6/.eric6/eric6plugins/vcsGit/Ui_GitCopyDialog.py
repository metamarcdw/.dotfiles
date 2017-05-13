# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/vcsGit/GitCopyDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GitCopyDialog(object):
    def setupUi(self, GitCopyDialog):
        GitCopyDialog.setObjectName("GitCopyDialog")
        GitCopyDialog.resize(409, 138)
        GitCopyDialog.setSizeGripEnabled(True)
        self.vboxlayout = QtWidgets.QVBoxLayout(GitCopyDialog)
        self.vboxlayout.setObjectName("vboxlayout")
        self.gridlayout = QtWidgets.QGridLayout()
        self.gridlayout.setObjectName("gridlayout")
        self.textLabel1 = QtWidgets.QLabel(GitCopyDialog)
        self.textLabel1.setObjectName("textLabel1")
        self.gridlayout.addWidget(self.textLabel1, 0, 0, 1, 1)
        self.sourceEdit = QtWidgets.QLineEdit(GitCopyDialog)
        self.sourceEdit.setReadOnly(True)
        self.sourceEdit.setObjectName("sourceEdit")
        self.gridlayout.addWidget(self.sourceEdit, 0, 1, 1, 1)
        self.targetEdit = QtWidgets.QLineEdit(GitCopyDialog)
        self.targetEdit.setObjectName("targetEdit")
        self.gridlayout.addWidget(self.targetEdit, 1, 1, 1, 1)
        self.textLabel2 = QtWidgets.QLabel(GitCopyDialog)
        self.textLabel2.setObjectName("textLabel2")
        self.gridlayout.addWidget(self.textLabel2, 1, 0, 1, 1)
        self.dirButton = QtWidgets.QToolButton(GitCopyDialog)
        self.dirButton.setObjectName("dirButton")
        self.gridlayout.addWidget(self.dirButton, 1, 2, 1, 1)
        self.vboxlayout.addLayout(self.gridlayout)
        self.forceCheckBox = QtWidgets.QCheckBox(GitCopyDialog)
        self.forceCheckBox.setObjectName("forceCheckBox")
        self.vboxlayout.addWidget(self.forceCheckBox)
        self.buttonBox = QtWidgets.QDialogButtonBox(GitCopyDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.vboxlayout.addWidget(self.buttonBox)

        self.retranslateUi(GitCopyDialog)
        self.buttonBox.accepted.connect(GitCopyDialog.accept)
        self.buttonBox.rejected.connect(GitCopyDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(GitCopyDialog)
        GitCopyDialog.setTabOrder(self.targetEdit, self.dirButton)
        GitCopyDialog.setTabOrder(self.dirButton, self.forceCheckBox)
        GitCopyDialog.setTabOrder(self.forceCheckBox, self.buttonBox)
        GitCopyDialog.setTabOrder(self.buttonBox, self.sourceEdit)

    def retranslateUi(self, GitCopyDialog):
        _translate = QtCore.QCoreApplication.translate
        GitCopyDialog.setWindowTitle(_translate("GitCopyDialog", "Git Copy"))
        self.textLabel1.setText(_translate("GitCopyDialog", "Source:"))
        self.sourceEdit.setToolTip(_translate("GitCopyDialog", "Shows the name of the source"))
        self.sourceEdit.setWhatsThis(_translate("GitCopyDialog", "<b>Source name</b>\n"
"<p>This field shows the name of the source.</p>"))
        self.targetEdit.setToolTip(_translate("GitCopyDialog", "Enter the target name"))
        self.targetEdit.setWhatsThis(_translate("GitCopyDialog", "<b>Target name</b>\n"
"<p>Enter the new name in this field. The target must be the new name or an absolute path.</p>"))
        self.textLabel2.setText(_translate("GitCopyDialog", "Target:"))
        self.dirButton.setToolTip(_translate("GitCopyDialog", "Press to open a selection dialog"))
        self.dirButton.setWhatsThis(_translate("GitCopyDialog", "<b>Target directory</b>\n"
"<p>Select the target name for the operation via a selection dialog.</p>"))
        self.forceCheckBox.setToolTip(_translate("GitCopyDialog", "Select to force the operation"))
        self.forceCheckBox.setText(_translate("GitCopyDialog", "Enforce operation"))

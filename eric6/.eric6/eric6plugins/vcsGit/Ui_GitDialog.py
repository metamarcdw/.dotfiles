# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/vcsGit/GitDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GitDialog(object):
    def setupUi(self, GitDialog):
        GitDialog.setObjectName("GitDialog")
        GitDialog.resize(593, 499)
        GitDialog.setSizeGripEnabled(True)
        self.vboxlayout = QtWidgets.QVBoxLayout(GitDialog)
        self.vboxlayout.setObjectName("vboxlayout")
        self.outputGroup = QtWidgets.QGroupBox(GitDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(2)
        sizePolicy.setHeightForWidth(self.outputGroup.sizePolicy().hasHeightForWidth())
        self.outputGroup.setSizePolicy(sizePolicy)
        self.outputGroup.setObjectName("outputGroup")
        self.vboxlayout1 = QtWidgets.QVBoxLayout(self.outputGroup)
        self.vboxlayout1.setObjectName("vboxlayout1")
        self.resultbox = QtWidgets.QTextEdit(self.outputGroup)
        self.resultbox.setReadOnly(True)
        self.resultbox.setAcceptRichText(False)
        self.resultbox.setObjectName("resultbox")
        self.vboxlayout1.addWidget(self.resultbox)
        self.vboxlayout.addWidget(self.outputGroup)
        self.statusLabel = QtWidgets.QLabel(GitDialog)
        self.statusLabel.setObjectName("statusLabel")
        self.vboxlayout.addWidget(self.statusLabel)
        self.errorGroup = QtWidgets.QGroupBox(GitDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.errorGroup.sizePolicy().hasHeightForWidth())
        self.errorGroup.setSizePolicy(sizePolicy)
        self.errorGroup.setObjectName("errorGroup")
        self.vboxlayout2 = QtWidgets.QVBoxLayout(self.errorGroup)
        self.vboxlayout2.setObjectName("vboxlayout2")
        self.errors = QtWidgets.QTextEdit(self.errorGroup)
        self.errors.setReadOnly(True)
        self.errors.setAcceptRichText(False)
        self.errors.setObjectName("errors")
        self.vboxlayout2.addWidget(self.errors)
        self.vboxlayout.addWidget(self.errorGroup)
        self.inputGroup = QtWidgets.QGroupBox(GitDialog)
        self.inputGroup.setObjectName("inputGroup")
        self.gridlayout = QtWidgets.QGridLayout(self.inputGroup)
        self.gridlayout.setObjectName("gridlayout")
        spacerItem = QtWidgets.QSpacerItem(327, 29, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridlayout.addItem(spacerItem, 1, 1, 1, 1)
        self.sendButton = QtWidgets.QPushButton(self.inputGroup)
        self.sendButton.setObjectName("sendButton")
        self.gridlayout.addWidget(self.sendButton, 1, 2, 1, 1)
        self.input = QtWidgets.QLineEdit(self.inputGroup)
        self.input.setObjectName("input")
        self.gridlayout.addWidget(self.input, 0, 0, 1, 3)
        self.passwordCheckBox = QtWidgets.QCheckBox(self.inputGroup)
        self.passwordCheckBox.setObjectName("passwordCheckBox")
        self.gridlayout.addWidget(self.passwordCheckBox, 1, 0, 1, 1)
        self.vboxlayout.addWidget(self.inputGroup)
        self.buttonBox = QtWidgets.QDialogButtonBox(GitDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Close)
        self.buttonBox.setObjectName("buttonBox")
        self.vboxlayout.addWidget(self.buttonBox)

        self.retranslateUi(GitDialog)
        QtCore.QMetaObject.connectSlotsByName(GitDialog)
        GitDialog.setTabOrder(self.resultbox, self.errors)
        GitDialog.setTabOrder(self.errors, self.input)
        GitDialog.setTabOrder(self.input, self.passwordCheckBox)
        GitDialog.setTabOrder(self.passwordCheckBox, self.sendButton)
        GitDialog.setTabOrder(self.sendButton, self.buttonBox)

    def retranslateUi(self, GitDialog):
        _translate = QtCore.QCoreApplication.translate
        GitDialog.setWindowTitle(_translate("GitDialog", "Git"))
        self.outputGroup.setTitle(_translate("GitDialog", "Output"))
        self.errorGroup.setTitle(_translate("GitDialog", "Errors"))
        self.inputGroup.setTitle(_translate("GitDialog", "Input"))
        self.sendButton.setToolTip(_translate("GitDialog", "Press to send the input to the git process"))
        self.sendButton.setText(_translate("GitDialog", "&Send"))
        self.sendButton.setShortcut(_translate("GitDialog", "Alt+S"))
        self.input.setToolTip(_translate("GitDialog", "Enter data to be sent to the git process"))
        self.passwordCheckBox.setToolTip(_translate("GitDialog", "Select to switch the input field to password mode"))
        self.passwordCheckBox.setText(_translate("GitDialog", "&Password Mode"))
        self.passwordCheckBox.setShortcut(_translate("GitDialog", "Alt+P"))


# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ToolPip/PipRequirementsSelectionDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_PipRequirementsSelectionDialog(object):
    def setupUi(self, PipRequirementsSelectionDialog):
        PipRequirementsSelectionDialog.setObjectName("PipRequirementsSelectionDialog")
        PipRequirementsSelectionDialog.resize(600, 143)
        PipRequirementsSelectionDialog.setSizeGripEnabled(True)
        self.verticalLayout = QtWidgets.QVBoxLayout(PipRequirementsSelectionDialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.label = QtWidgets.QLabel(PipRequirementsSelectionDialog)
        self.label.setObjectName("label")
        self.verticalLayout.addWidget(self.label)
        self.pipComboBox = QtWidgets.QComboBox(PipRequirementsSelectionDialog)
        self.pipComboBox.setObjectName("pipComboBox")
        self.verticalLayout.addWidget(self.pipComboBox)
        self.label_2 = QtWidgets.QLabel(PipRequirementsSelectionDialog)
        self.label_2.setObjectName("label_2")
        self.verticalLayout.addWidget(self.label_2)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.requirementsEdit = QtWidgets.QLineEdit(PipRequirementsSelectionDialog)
        self.requirementsEdit.setObjectName("requirementsEdit")
        self.horizontalLayout.addWidget(self.requirementsEdit)
        self.fileButton = QtWidgets.QToolButton(PipRequirementsSelectionDialog)
        self.fileButton.setText("")
        self.fileButton.setObjectName("fileButton")
        self.horizontalLayout.addWidget(self.fileButton)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.buttonBox = QtWidgets.QDialogButtonBox(PipRequirementsSelectionDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout.addWidget(self.buttonBox)

        self.retranslateUi(PipRequirementsSelectionDialog)
        self.buttonBox.accepted.connect(PipRequirementsSelectionDialog.accept)
        self.buttonBox.rejected.connect(PipRequirementsSelectionDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(PipRequirementsSelectionDialog)

    def retranslateUi(self, PipRequirementsSelectionDialog):
        _translate = QtCore.QCoreApplication.translate
        PipRequirementsSelectionDialog.setWindowTitle(_translate("PipRequirementsSelectionDialog", "Select Requirements"))
        self.label.setText(_translate("PipRequirementsSelectionDialog", "Select the pip executable to be used:"))
        self.pipComboBox.setToolTip(_translate("PipRequirementsSelectionDialog", "Select the pip command to use"))
        self.label_2.setText(_translate("PipRequirementsSelectionDialog", "Enter requirements file:"))
        self.fileButton.setToolTip(_translate("PipRequirementsSelectionDialog", "Select the requirements file through a file selection dialog"))


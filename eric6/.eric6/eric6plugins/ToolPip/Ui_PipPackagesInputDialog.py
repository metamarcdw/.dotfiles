# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ToolPip/PipPackagesInputDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_PipPackagesInputDialog(object):
    def setupUi(self, PipPackagesInputDialog):
        PipPackagesInputDialog.setObjectName("PipPackagesInputDialog")
        PipPackagesInputDialog.resize(600, 143)
        PipPackagesInputDialog.setSizeGripEnabled(True)
        self.verticalLayout = QtWidgets.QVBoxLayout(PipPackagesInputDialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.label = QtWidgets.QLabel(PipPackagesInputDialog)
        self.label.setObjectName("label")
        self.verticalLayout.addWidget(self.label)
        self.pipComboBox = QtWidgets.QComboBox(PipPackagesInputDialog)
        self.pipComboBox.setObjectName("pipComboBox")
        self.verticalLayout.addWidget(self.pipComboBox)
        self.label_2 = QtWidgets.QLabel(PipPackagesInputDialog)
        self.label_2.setObjectName("label_2")
        self.verticalLayout.addWidget(self.label_2)
        self.packagesEdit = QtWidgets.QLineEdit(PipPackagesInputDialog)
        self.packagesEdit.setObjectName("packagesEdit")
        self.verticalLayout.addWidget(self.packagesEdit)
        self.buttonBox = QtWidgets.QDialogButtonBox(PipPackagesInputDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout.addWidget(self.buttonBox)

        self.retranslateUi(PipPackagesInputDialog)
        self.buttonBox.accepted.connect(PipPackagesInputDialog.accept)
        self.buttonBox.rejected.connect(PipPackagesInputDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(PipPackagesInputDialog)

    def retranslateUi(self, PipPackagesInputDialog):
        _translate = QtCore.QCoreApplication.translate
        PipPackagesInputDialog.setWindowTitle(_translate("PipPackagesInputDialog", "Packages "))
        self.label.setText(_translate("PipPackagesInputDialog", "Select the pip executable to be used:"))
        self.pipComboBox.setToolTip(_translate("PipPackagesInputDialog", "Select the pip command to use"))
        self.label_2.setText(_translate("PipPackagesInputDialog", "Enter package specifications (separated by whitespace):"))


# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ProjectDjango/DjangoMakeMigrationsDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_DjangoMakeMigrationsDialog(object):
    def setupUi(self, DjangoMakeMigrationsDialog):
        DjangoMakeMigrationsDialog.setObjectName("DjangoMakeMigrationsDialog")
        DjangoMakeMigrationsDialog.resize(500, 140)
        DjangoMakeMigrationsDialog.setSizeGripEnabled(True)
        self.gridLayout = QtWidgets.QGridLayout(DjangoMakeMigrationsDialog)
        self.gridLayout.setObjectName("gridLayout")
        self.label = QtWidgets.QLabel(DjangoMakeMigrationsDialog)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 1)
        self.applicationsComboBox = QtWidgets.QComboBox(DjangoMakeMigrationsDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.applicationsComboBox.sizePolicy().hasHeightForWidth())
        self.applicationsComboBox.setSizePolicy(sizePolicy)
        self.applicationsComboBox.setEditable(True)
        self.applicationsComboBox.setObjectName("applicationsComboBox")
        self.gridLayout.addWidget(self.applicationsComboBox, 0, 1, 1, 1)
        self.label_2 = QtWidgets.QLabel(DjangoMakeMigrationsDialog)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 0, 1, 1)
        self.nameEdit = E5ClearableLineEdit(DjangoMakeMigrationsDialog)
        self.nameEdit.setObjectName("nameEdit")
        self.gridLayout.addWidget(self.nameEdit, 1, 1, 1, 1)
        self.dryrunCheckBox = QtWidgets.QCheckBox(DjangoMakeMigrationsDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.dryrunCheckBox.sizePolicy().hasHeightForWidth())
        self.dryrunCheckBox.setSizePolicy(sizePolicy)
        self.dryrunCheckBox.setObjectName("dryrunCheckBox")
        self.gridLayout.addWidget(self.dryrunCheckBox, 2, 0, 1, 2)
        self.buttonBox = QtWidgets.QDialogButtonBox(DjangoMakeMigrationsDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.gridLayout.addWidget(self.buttonBox, 3, 0, 1, 2)

        self.retranslateUi(DjangoMakeMigrationsDialog)
        self.buttonBox.accepted.connect(DjangoMakeMigrationsDialog.accept)
        self.buttonBox.rejected.connect(DjangoMakeMigrationsDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(DjangoMakeMigrationsDialog)

    def retranslateUi(self, DjangoMakeMigrationsDialog):
        _translate = QtCore.QCoreApplication.translate
        DjangoMakeMigrationsDialog.setWindowTitle(_translate("DjangoMakeMigrationsDialog", "Make Migrations"))
        self.label.setText(_translate("DjangoMakeMigrationsDialog", "Applications:"))
        self.applicationsComboBox.setToolTip(_translate("DjangoMakeMigrationsDialog", "Enter the list of applications separated by spaces."))
        self.label_2.setText(_translate("DjangoMakeMigrationsDialog", "Name:"))
        self.nameEdit.setToolTip(_translate("DjangoMakeMigrationsDialog", "Enter a name for the migration"))
        self.dryrunCheckBox.setToolTip(_translate("DjangoMakeMigrationsDialog", "Select to perform a dry-run"))
        self.dryrunCheckBox.setText(_translate("DjangoMakeMigrationsDialog", "Dry-Run only"))

from E5Gui.E5LineEdit import E5ClearableLineEdit

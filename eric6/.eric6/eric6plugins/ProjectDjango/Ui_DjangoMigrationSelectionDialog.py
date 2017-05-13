# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ProjectDjango/DjangoMigrationSelectionDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_DjangoMigrationSelectionDialog(object):
    def setupUi(self, DjangoMigrationSelectionDialog):
        DjangoMigrationSelectionDialog.setObjectName("DjangoMigrationSelectionDialog")
        DjangoMigrationSelectionDialog.resize(561, 110)
        DjangoMigrationSelectionDialog.setSizeGripEnabled(True)
        self.gridLayout = QtWidgets.QGridLayout(DjangoMigrationSelectionDialog)
        self.gridLayout.setObjectName("gridLayout")
        self.applicationComboBox = QtWidgets.QComboBox(DjangoMigrationSelectionDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.applicationComboBox.sizePolicy().hasHeightForWidth())
        self.applicationComboBox.setSizePolicy(sizePolicy)
        self.applicationComboBox.setObjectName("applicationComboBox")
        self.gridLayout.addWidget(self.applicationComboBox, 0, 1, 1, 1)
        self.migrationsComboBox = QtWidgets.QComboBox(DjangoMigrationSelectionDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.migrationsComboBox.sizePolicy().hasHeightForWidth())
        self.migrationsComboBox.setSizePolicy(sizePolicy)
        self.migrationsComboBox.setObjectName("migrationsComboBox")
        self.gridLayout.addWidget(self.migrationsComboBox, 1, 1, 1, 1)
        self.label_2 = QtWidgets.QLabel(DjangoMigrationSelectionDialog)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 0, 1, 1)
        self.label = QtWidgets.QLabel(DjangoMigrationSelectionDialog)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 1)
        self.buttonBox = QtWidgets.QDialogButtonBox(DjangoMigrationSelectionDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.gridLayout.addWidget(self.buttonBox, 2, 0, 1, 2)

        self.retranslateUi(DjangoMigrationSelectionDialog)
        self.buttonBox.accepted.connect(DjangoMigrationSelectionDialog.accept)
        self.buttonBox.rejected.connect(DjangoMigrationSelectionDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(DjangoMigrationSelectionDialog)

    def retranslateUi(self, DjangoMigrationSelectionDialog):
        _translate = QtCore.QCoreApplication.translate
        DjangoMigrationSelectionDialog.setWindowTitle(_translate("DjangoMigrationSelectionDialog", "Select Migration"))
        self.applicationComboBox.setToolTip(_translate("DjangoMigrationSelectionDialog", "Select the application"))
        self.migrationsComboBox.setToolTip(_translate("DjangoMigrationSelectionDialog", "Select a migration"))
        self.label_2.setText(_translate("DjangoMigrationSelectionDialog", "Migration:"))
        self.label.setText(_translate("DjangoMigrationSelectionDialog", "Application:"))


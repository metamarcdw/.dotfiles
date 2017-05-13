# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ProjectDjango/DjangoSquashMigrationSelectionDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_DjangoSquashMigrationSelectionDialog(object):
    def setupUi(self, DjangoSquashMigrationSelectionDialog):
        DjangoSquashMigrationSelectionDialog.setObjectName("DjangoSquashMigrationSelectionDialog")
        DjangoSquashMigrationSelectionDialog.resize(561, 172)
        DjangoSquashMigrationSelectionDialog.setSizeGripEnabled(True)
        self.gridLayout = QtWidgets.QGridLayout(DjangoSquashMigrationSelectionDialog)
        self.gridLayout.setObjectName("gridLayout")
        self.label = QtWidgets.QLabel(DjangoSquashMigrationSelectionDialog)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 1)
        self.applicationComboBox = QtWidgets.QComboBox(DjangoSquashMigrationSelectionDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.applicationComboBox.sizePolicy().hasHeightForWidth())
        self.applicationComboBox.setSizePolicy(sizePolicy)
        self.applicationComboBox.setObjectName("applicationComboBox")
        self.gridLayout.addWidget(self.applicationComboBox, 0, 1, 1, 1)
        self.startLabel = QtWidgets.QLabel(DjangoSquashMigrationSelectionDialog)
        self.startLabel.setObjectName("startLabel")
        self.gridLayout.addWidget(self.startLabel, 1, 0, 1, 1)
        self.startMigrationComboBox = QtWidgets.QComboBox(DjangoSquashMigrationSelectionDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.startMigrationComboBox.sizePolicy().hasHeightForWidth())
        self.startMigrationComboBox.setSizePolicy(sizePolicy)
        self.startMigrationComboBox.setObjectName("startMigrationComboBox")
        self.gridLayout.addWidget(self.startMigrationComboBox, 1, 1, 1, 1)
        self.label_2 = QtWidgets.QLabel(DjangoSquashMigrationSelectionDialog)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 2, 0, 1, 1)
        self.endMigrationComboBox = QtWidgets.QComboBox(DjangoSquashMigrationSelectionDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.endMigrationComboBox.sizePolicy().hasHeightForWidth())
        self.endMigrationComboBox.setSizePolicy(sizePolicy)
        self.endMigrationComboBox.setObjectName("endMigrationComboBox")
        self.gridLayout.addWidget(self.endMigrationComboBox, 2, 1, 1, 1)
        self.noOptimizeCheckBox = QtWidgets.QCheckBox(DjangoSquashMigrationSelectionDialog)
        self.noOptimizeCheckBox.setObjectName("noOptimizeCheckBox")
        self.gridLayout.addWidget(self.noOptimizeCheckBox, 3, 0, 1, 2)
        self.buttonBox = QtWidgets.QDialogButtonBox(DjangoSquashMigrationSelectionDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.gridLayout.addWidget(self.buttonBox, 4, 0, 1, 2)

        self.retranslateUi(DjangoSquashMigrationSelectionDialog)
        self.buttonBox.accepted.connect(DjangoSquashMigrationSelectionDialog.accept)
        self.buttonBox.rejected.connect(DjangoSquashMigrationSelectionDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(DjangoSquashMigrationSelectionDialog)
        DjangoSquashMigrationSelectionDialog.setTabOrder(self.applicationComboBox, self.startMigrationComboBox)
        DjangoSquashMigrationSelectionDialog.setTabOrder(self.startMigrationComboBox, self.endMigrationComboBox)
        DjangoSquashMigrationSelectionDialog.setTabOrder(self.endMigrationComboBox, self.noOptimizeCheckBox)

    def retranslateUi(self, DjangoSquashMigrationSelectionDialog):
        _translate = QtCore.QCoreApplication.translate
        DjangoSquashMigrationSelectionDialog.setWindowTitle(_translate("DjangoSquashMigrationSelectionDialog", "Squash Migrations"))
        self.label.setText(_translate("DjangoSquashMigrationSelectionDialog", "Application:"))
        self.applicationComboBox.setToolTip(_translate("DjangoSquashMigrationSelectionDialog", "Select the application"))
        self.startLabel.setText(_translate("DjangoSquashMigrationSelectionDialog", "Start Migration:"))
        self.startMigrationComboBox.setToolTip(_translate("DjangoSquashMigrationSelectionDialog", "Select a migration"))
        self.label_2.setText(_translate("DjangoSquashMigrationSelectionDialog", "End Migration:"))
        self.endMigrationComboBox.setToolTip(_translate("DjangoSquashMigrationSelectionDialog", "Select a migration"))
        self.noOptimizeCheckBox.setToolTip(_translate("DjangoSquashMigrationSelectionDialog", "Select to not optimize the squashed migration"))
        self.noOptimizeCheckBox.setText(_translate("DjangoSquashMigrationSelectionDialog", "Dont\' optimize"))


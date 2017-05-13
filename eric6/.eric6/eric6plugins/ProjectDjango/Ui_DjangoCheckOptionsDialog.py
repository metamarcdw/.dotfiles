# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ProjectDjango/DjangoCheckOptionsDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_DjangoCheckOptionsDialog(object):
    def setupUi(self, DjangoCheckOptionsDialog):
        DjangoCheckOptionsDialog.setObjectName("DjangoCheckOptionsDialog")
        DjangoCheckOptionsDialog.resize(500, 450)
        DjangoCheckOptionsDialog.setSizeGripEnabled(True)
        self.verticalLayout = QtWidgets.QVBoxLayout(DjangoCheckOptionsDialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.deployCheckBox = QtWidgets.QCheckBox(DjangoCheckOptionsDialog)
        self.deployCheckBox.setObjectName("deployCheckBox")
        self.verticalLayout.addWidget(self.deployCheckBox)
        self.label = QtWidgets.QLabel(DjangoCheckOptionsDialog)
        self.label.setWordWrap(True)
        self.label.setObjectName("label")
        self.verticalLayout.addWidget(self.label)
        self.tagsList = QtWidgets.QListWidget(DjangoCheckOptionsDialog)
        self.tagsList.setAlternatingRowColors(True)
        self.tagsList.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.tagsList.setObjectName("tagsList")
        self.verticalLayout.addWidget(self.tagsList)
        self.label_2 = QtWidgets.QLabel(DjangoCheckOptionsDialog)
        self.label_2.setWordWrap(True)
        self.label_2.setObjectName("label_2")
        self.verticalLayout.addWidget(self.label_2)
        self.appsComboBox = E5ClearableComboBox(DjangoCheckOptionsDialog)
        self.appsComboBox.setEditable(True)
        self.appsComboBox.setObjectName("appsComboBox")
        self.verticalLayout.addWidget(self.appsComboBox)
        self.settingsFileGroup = QtWidgets.QGroupBox(DjangoCheckOptionsDialog)
        self.settingsFileGroup.setObjectName("settingsFileGroup")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.settingsFileGroup)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.settingsFileEdit = E5ClearableLineEdit(self.settingsFileGroup)
        self.settingsFileEdit.setObjectName("settingsFileEdit")
        self.horizontalLayout.addWidget(self.settingsFileEdit)
        self.settingsFileButton = QtWidgets.QToolButton(self.settingsFileGroup)
        self.settingsFileButton.setObjectName("settingsFileButton")
        self.horizontalLayout.addWidget(self.settingsFileButton)
        self.verticalLayout.addWidget(self.settingsFileGroup)
        self.buttonBox = QtWidgets.QDialogButtonBox(DjangoCheckOptionsDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout.addWidget(self.buttonBox)

        self.retranslateUi(DjangoCheckOptionsDialog)
        self.buttonBox.accepted.connect(DjangoCheckOptionsDialog.accept)
        self.buttonBox.rejected.connect(DjangoCheckOptionsDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(DjangoCheckOptionsDialog)

    def retranslateUi(self, DjangoCheckOptionsDialog):
        _translate = QtCore.QCoreApplication.translate
        DjangoCheckOptionsDialog.setWindowTitle(_translate("DjangoCheckOptionsDialog", "Check Options"))
        self.deployCheckBox.setToolTip(_translate("DjangoCheckOptionsDialog", "Select to enable checks for deployment mode"))
        self.deployCheckBox.setText(_translate("DjangoCheckOptionsDialog", "Deployment Mode"))
        self.label.setText(_translate("DjangoCheckOptionsDialog", "Select type of checks (leave unselected for all checks):"))
        self.tagsList.setSortingEnabled(True)
        self.label_2.setText(_translate("DjangoCheckOptionsDialog", "Enter the list of applications separated by spaces (leave empty for all apps):"))
        self.settingsFileGroup.setTitle(_translate("DjangoCheckOptionsDialog", "Settings module for deployment mode"))
        self.settingsFileEdit.setToolTip(_translate("DjangoCheckOptionsDialog", "Enter the module name of the deployment settings"))
        self.settingsFileButton.setToolTip(_translate("DjangoCheckOptionsDialog", "Press to select the settings module file via a file selection dialog"))

from E5Gui.E5ComboBox import E5ClearableComboBox
from E5Gui.E5LineEdit import E5ClearableLineEdit

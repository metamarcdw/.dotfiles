# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ProjectDjango/DjangoLoaddataDataDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_DjangoLoaddataDataDialog(object):
    def setupUi(self, DjangoLoaddataDataDialog):
        DjangoLoaddataDataDialog.setObjectName("DjangoLoaddataDataDialog")
        DjangoLoaddataDataDialog.resize(600, 102)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(DjangoLoaddataDataDialog.sizePolicy().hasHeightForWidth())
        DjangoLoaddataDataDialog.setSizePolicy(sizePolicy)
        DjangoLoaddataDataDialog.setSizeGripEnabled(True)
        self.gridLayout = QtWidgets.QGridLayout(DjangoLoaddataDataDialog)
        self.gridLayout.setObjectName("gridLayout")
        self.label = QtWidgets.QLabel(DjangoLoaddataDataDialog)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 2)
        self.fixturesEdit = QtWidgets.QLineEdit(DjangoLoaddataDataDialog)
        self.fixturesEdit.setObjectName("fixturesEdit")
        self.gridLayout.addWidget(self.fixturesEdit, 1, 0, 1, 1)
        self.fixtureFileButton = QtWidgets.QToolButton(DjangoLoaddataDataDialog)
        self.fixtureFileButton.setObjectName("fixtureFileButton")
        self.gridLayout.addWidget(self.fixtureFileButton, 1, 1, 1, 1)
        self.buttonBox = QtWidgets.QDialogButtonBox(DjangoLoaddataDataDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.gridLayout.addWidget(self.buttonBox, 2, 0, 1, 2)

        self.retranslateUi(DjangoLoaddataDataDialog)
        self.buttonBox.accepted.connect(DjangoLoaddataDataDialog.accept)
        self.buttonBox.rejected.connect(DjangoLoaddataDataDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(DjangoLoaddataDataDialog)
        DjangoLoaddataDataDialog.setTabOrder(self.fixturesEdit, self.fixtureFileButton)
        DjangoLoaddataDataDialog.setTabOrder(self.fixtureFileButton, self.buttonBox)

    def retranslateUi(self, DjangoLoaddataDataDialog):
        _translate = QtCore.QCoreApplication.translate
        DjangoLoaddataDataDialog.setWindowTitle(_translate("DjangoLoaddataDataDialog", "loaddata Command Options"))
        self.label.setText(_translate("DjangoLoaddataDataDialog", "Enter the list of fixture patterns or the path of a fixture file."))
        self.fixtureFileButton.setToolTip(_translate("DjangoLoaddataDataDialog", "Select a fixture file via a file selection dialog"))


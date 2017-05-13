# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ProjectDjango/DjangoDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_DjangoDialog(object):
    def setupUi(self, DjangoDialog):
        DjangoDialog.setObjectName("DjangoDialog")
        DjangoDialog.resize(593, 499)
        DjangoDialog.setSizeGripEnabled(True)
        self.vboxlayout = QtWidgets.QVBoxLayout(DjangoDialog)
        self.vboxlayout.setContentsMargins(6, 6, 6, 6)
        self.vboxlayout.setSpacing(6)
        self.vboxlayout.setObjectName("vboxlayout")
        self.outputGroup = QtWidgets.QGroupBox(DjangoDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(3)
        sizePolicy.setHeightForWidth(self.outputGroup.sizePolicy().hasHeightForWidth())
        self.outputGroup.setSizePolicy(sizePolicy)
        self.outputGroup.setObjectName("outputGroup")
        self.vboxlayout1 = QtWidgets.QVBoxLayout(self.outputGroup)
        self.vboxlayout1.setContentsMargins(6, 6, 6, 6)
        self.vboxlayout1.setSpacing(6)
        self.vboxlayout1.setObjectName("vboxlayout1")
        self.resultbox = QtWidgets.QTextEdit(self.outputGroup)
        self.resultbox.setAcceptRichText(False)
        self.resultbox.setObjectName("resultbox")
        self.vboxlayout1.addWidget(self.resultbox)
        self.vboxlayout.addWidget(self.outputGroup)
        self.errorGroup = QtWidgets.QGroupBox(DjangoDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.errorGroup.sizePolicy().hasHeightForWidth())
        self.errorGroup.setSizePolicy(sizePolicy)
        self.errorGroup.setObjectName("errorGroup")
        self.vboxlayout2 = QtWidgets.QVBoxLayout(self.errorGroup)
        self.vboxlayout2.setContentsMargins(6, 6, 6, 6)
        self.vboxlayout2.setSpacing(6)
        self.vboxlayout2.setObjectName("vboxlayout2")
        self.errors = QtWidgets.QTextEdit(self.errorGroup)
        self.errors.setFocusPolicy(QtCore.Qt.NoFocus)
        self.errors.setReadOnly(True)
        self.errors.setAcceptRichText(False)
        self.errors.setObjectName("errors")
        self.vboxlayout2.addWidget(self.errors)
        self.vboxlayout.addWidget(self.errorGroup)
        self.buttonBox = QtWidgets.QDialogButtonBox(DjangoDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Close|QtWidgets.QDialogButtonBox.Save)
        self.buttonBox.setObjectName("buttonBox")
        self.vboxlayout.addWidget(self.buttonBox)

        self.retranslateUi(DjangoDialog)
        QtCore.QMetaObject.connectSlotsByName(DjangoDialog)

    def retranslateUi(self, DjangoDialog):
        _translate = QtCore.QCoreApplication.translate
        DjangoDialog.setWindowTitle(_translate("DjangoDialog", "Django"))
        self.outputGroup.setTitle(_translate("DjangoDialog", "Output"))
        self.errorGroup.setTitle(_translate("DjangoDialog", "Errors"))


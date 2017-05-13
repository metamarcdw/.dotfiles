# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ProjectDjango/DjangoMigrationsListDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_DjangoMigrationsListDialog(object):
    def setupUi(self, DjangoMigrationsListDialog):
        DjangoMigrationsListDialog.setObjectName("DjangoMigrationsListDialog")
        DjangoMigrationsListDialog.resize(550, 500)
        DjangoMigrationsListDialog.setSizeGripEnabled(True)
        self.verticalLayout = QtWidgets.QVBoxLayout(DjangoMigrationsListDialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.migrationsList = QtWidgets.QTreeWidget(DjangoMigrationsListDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(3)
        sizePolicy.setHeightForWidth(self.migrationsList.sizePolicy().hasHeightForWidth())
        self.migrationsList.setSizePolicy(sizePolicy)
        self.migrationsList.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.migrationsList.setAlternatingRowColors(True)
        self.migrationsList.setObjectName("migrationsList")
        self.migrationsList.headerItem().setText(0, "1")
        self.migrationsList.header().setStretchLastSection(False)
        self.verticalLayout.addWidget(self.migrationsList)
        self.errorGroup = QtWidgets.QGroupBox(DjangoMigrationsListDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.errorGroup.sizePolicy().hasHeightForWidth())
        self.errorGroup.setSizePolicy(sizePolicy)
        self.errorGroup.setObjectName("errorGroup")
        self.vboxlayout = QtWidgets.QVBoxLayout(self.errorGroup)
        self.vboxlayout.setContentsMargins(6, 6, 6, 6)
        self.vboxlayout.setSpacing(6)
        self.vboxlayout.setObjectName("vboxlayout")
        self.errors = QtWidgets.QTextEdit(self.errorGroup)
        self.errors.setFocusPolicy(QtCore.Qt.NoFocus)
        self.errors.setReadOnly(True)
        self.errors.setAcceptRichText(False)
        self.errors.setObjectName("errors")
        self.vboxlayout.addWidget(self.errors)
        self.verticalLayout.addWidget(self.errorGroup)
        self.buttonBox = QtWidgets.QDialogButtonBox(DjangoMigrationsListDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Close)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout.addWidget(self.buttonBox)

        self.retranslateUi(DjangoMigrationsListDialog)
        self.buttonBox.accepted.connect(DjangoMigrationsListDialog.accept)
        self.buttonBox.rejected.connect(DjangoMigrationsListDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(DjangoMigrationsListDialog)

    def retranslateUi(self, DjangoMigrationsListDialog):
        _translate = QtCore.QCoreApplication.translate
        self.errorGroup.setTitle(_translate("DjangoMigrationsListDialog", "Errors"))


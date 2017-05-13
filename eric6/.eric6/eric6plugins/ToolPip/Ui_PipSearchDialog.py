# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ToolPip/PipSearchDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_PipSearchDialog(object):
    def setupUi(self, PipSearchDialog):
        PipSearchDialog.setObjectName("PipSearchDialog")
        PipSearchDialog.resize(700, 600)
        PipSearchDialog.setSizeGripEnabled(True)
        self.verticalLayout = QtWidgets.QVBoxLayout(PipSearchDialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.pipComboBox = QtWidgets.QComboBox(PipSearchDialog)
        self.pipComboBox.setObjectName("pipComboBox")
        self.verticalLayout.addWidget(self.pipComboBox)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.label = QtWidgets.QLabel(PipSearchDialog)
        self.label.setObjectName("label")
        self.horizontalLayout.addWidget(self.label)
        self.searchEdit = QtWidgets.QLineEdit(PipSearchDialog)
        self.searchEdit.setObjectName("searchEdit")
        self.horizontalLayout.addWidget(self.searchEdit)
        self.searchButton = QtWidgets.QPushButton(PipSearchDialog)
        self.searchButton.setEnabled(False)
        self.searchButton.setObjectName("searchButton")
        self.horizontalLayout.addWidget(self.searchButton)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.resultList = QtWidgets.QTreeWidget(PipSearchDialog)
        self.resultList.setAlternatingRowColors(True)
        self.resultList.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.resultList.setRootIsDecorated(False)
        self.resultList.setItemsExpandable(False)
        self.resultList.setAllColumnsShowFocus(True)
        self.resultList.setWordWrap(True)
        self.resultList.setObjectName("resultList")
        self.verticalLayout.addWidget(self.resultList)
        self.infoLabel = QtWidgets.QLabel(PipSearchDialog)
        self.infoLabel.setObjectName("infoLabel")
        self.verticalLayout.addWidget(self.infoLabel)
        self.buttonBox = QtWidgets.QDialogButtonBox(PipSearchDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Close)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout.addWidget(self.buttonBox)

        self.retranslateUi(PipSearchDialog)
        QtCore.QMetaObject.connectSlotsByName(PipSearchDialog)

    def retranslateUi(self, PipSearchDialog):
        _translate = QtCore.QCoreApplication.translate
        PipSearchDialog.setWindowTitle(_translate("PipSearchDialog", "Search PyPI"))
        self.pipComboBox.setToolTip(_translate("PipSearchDialog", "Select the pip command to use for installing packages"))
        self.label.setText(_translate("PipSearchDialog", "Query:"))
        self.searchEdit.setToolTip(_translate("PipSearchDialog", "Enter the search term"))
        self.searchButton.setToolTip(_translate("PipSearchDialog", "Press to start the search"))
        self.searchButton.setText(_translate("PipSearchDialog", "Search"))
        self.resultList.setSortingEnabled(True)
        self.resultList.headerItem().setText(0, _translate("PipSearchDialog", "Package"))
        self.resultList.headerItem().setText(1, _translate("PipSearchDialog", "Score"))
        self.resultList.headerItem().setText(2, _translate("PipSearchDialog", "Description"))


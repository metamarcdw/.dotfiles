# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ToolPip/PipListDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_PipListDialog(object):
    def setupUi(self, PipListDialog):
        PipListDialog.setObjectName("PipListDialog")
        PipListDialog.resize(600, 550)
        PipListDialog.setSizeGripEnabled(True)
        self.verticalLayout = QtWidgets.QVBoxLayout(PipListDialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.pipComboBox = QtWidgets.QComboBox(PipListDialog)
        self.pipComboBox.setObjectName("pipComboBox")
        self.verticalLayout.addWidget(self.pipComboBox)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.infoLabel = QtWidgets.QLabel(PipListDialog)
        self.infoLabel.setText("TextLabel")
        self.infoLabel.setObjectName("infoLabel")
        self.horizontalLayout.addWidget(self.infoLabel)
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)
        self.localCheckBox = QtWidgets.QCheckBox(PipListDialog)
        self.localCheckBox.setChecked(True)
        self.localCheckBox.setObjectName("localCheckBox")
        self.horizontalLayout.addWidget(self.localCheckBox)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.splitter = QtWidgets.QSplitter(PipListDialog)
        self.splitter.setOrientation(QtCore.Qt.Vertical)
        self.splitter.setObjectName("splitter")
        self.packageList = QtWidgets.QTreeWidget(self.splitter)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(3)
        sizePolicy.setHeightForWidth(self.packageList.sizePolicy().hasHeightForWidth())
        self.packageList.setSizePolicy(sizePolicy)
        self.packageList.setAlternatingRowColors(True)
        self.packageList.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.packageList.setRootIsDecorated(False)
        self.packageList.setItemsExpandable(False)
        self.packageList.setObjectName("packageList")
        self.packageList.headerItem().setText(0, "1")
        self.infoWidget = QtWidgets.QTreeWidget(self.splitter)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.infoWidget.sizePolicy().hasHeightForWidth())
        self.infoWidget.setSizePolicy(sizePolicy)
        self.infoWidget.setAlternatingRowColors(True)
        self.infoWidget.setRootIsDecorated(False)
        self.infoWidget.setItemsExpandable(False)
        self.infoWidget.setAllColumnsShowFocus(True)
        self.infoWidget.setWordWrap(True)
        self.infoWidget.setColumnCount(2)
        self.infoWidget.setObjectName("infoWidget")
        self.infoWidget.headerItem().setText(0, "1")
        self.infoWidget.headerItem().setText(1, "2")
        self.infoWidget.header().setVisible(False)
        self.infoWidget.header().setStretchLastSection(False)
        self.verticalLayout.addWidget(self.splitter)
        self.buttonBox = QtWidgets.QDialogButtonBox(PipListDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Close)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout.addWidget(self.buttonBox)

        self.retranslateUi(PipListDialog)
        QtCore.QMetaObject.connectSlotsByName(PipListDialog)
        PipListDialog.setTabOrder(self.pipComboBox, self.localCheckBox)
        PipListDialog.setTabOrder(self.localCheckBox, self.packageList)
        PipListDialog.setTabOrder(self.packageList, self.infoWidget)

    def retranslateUi(self, PipListDialog):
        _translate = QtCore.QCoreApplication.translate
        PipListDialog.setWindowTitle(_translate("PipListDialog", "Package List"))
        self.pipComboBox.setToolTip(_translate("PipListDialog", "Select the pip command to use"))
        self.localCheckBox.setToolTip(_translate("PipListDialog", "Select to show only locally-installed packages"))
        self.localCheckBox.setText(_translate("PipListDialog", "Local packages only"))
        self.packageList.setSortingEnabled(True)


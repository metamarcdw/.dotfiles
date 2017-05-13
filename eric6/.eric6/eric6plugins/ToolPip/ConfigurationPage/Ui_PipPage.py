# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/ToolPip/ConfigurationPage/PipPage.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_PipPage(object):
    def setupUi(self, PipPage):
        PipPage.setObjectName("PipPage")
        PipPage.resize(602, 389)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(PipPage)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.headerLabel = QtWidgets.QLabel(PipPage)
        self.headerLabel.setObjectName("headerLabel")
        self.verticalLayout_2.addWidget(self.headerLabel)
        self.line9_3 = QtWidgets.QFrame(PipPage)
        self.line9_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line9_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line9_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line9_3.setObjectName("line9_3")
        self.verticalLayout_2.addWidget(self.line9_3)
        self.groupBox_2 = QtWidgets.QGroupBox(PipPage)
        self.groupBox_2.setObjectName("groupBox_2")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.groupBox_2)
        self.verticalLayout.setObjectName("verticalLayout")
        self.indexEdit = QtWidgets.QLineEdit(self.groupBox_2)
        self.indexEdit.setObjectName("indexEdit")
        self.verticalLayout.addWidget(self.indexEdit)
        self.indexLabel = QtWidgets.QLabel(self.groupBox_2)
        self.indexLabel.setText("")
        self.indexLabel.setOpenExternalLinks(True)
        self.indexLabel.setObjectName("indexLabel")
        self.verticalLayout.addWidget(self.indexLabel)
        self.verticalLayout_2.addWidget(self.groupBox_2)
        self.groupBox = QtWidgets.QGroupBox(PipPage)
        self.groupBox.setObjectName("groupBox")
        self.gridLayout = QtWidgets.QGridLayout(self.groupBox)
        self.gridLayout.setObjectName("gridLayout")
        self.stringList = E5ListView(self.groupBox)
        self.stringList.setAlternatingRowColors(True)
        self.stringList.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.stringList.setObjectName("stringList")
        self.gridLayout.addWidget(self.stringList, 0, 0, 7, 1)
        self.addButton = QtWidgets.QPushButton(self.groupBox)
        self.addButton.setAutoDefault(False)
        self.addButton.setObjectName("addButton")
        self.gridLayout.addWidget(self.addButton, 0, 1, 1, 1)
        self.line_3 = QtWidgets.QFrame(self.groupBox)
        self.line_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.gridLayout.addWidget(self.line_3, 1, 1, 1, 1)
        self.removeButton = QtWidgets.QPushButton(self.groupBox)
        self.removeButton.setAutoDefault(False)
        self.removeButton.setObjectName("removeButton")
        self.gridLayout.addWidget(self.removeButton, 2, 1, 1, 1)
        self.removeAllButton = QtWidgets.QPushButton(self.groupBox)
        self.removeAllButton.setAutoDefault(False)
        self.removeAllButton.setObjectName("removeAllButton")
        self.gridLayout.addWidget(self.removeAllButton, 3, 1, 1, 1)
        self.line_4 = QtWidgets.QFrame(self.groupBox)
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.gridLayout.addWidget(self.line_4, 4, 1, 1, 1)
        self.defaultListButton = QtWidgets.QPushButton(self.groupBox)
        self.defaultListButton.setObjectName("defaultListButton")
        self.gridLayout.addWidget(self.defaultListButton, 5, 1, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(20, 196, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout.addItem(spacerItem, 6, 1, 1, 1)
        self.verticalLayout_2.addWidget(self.groupBox)

        self.retranslateUi(PipPage)
        QtCore.QMetaObject.connectSlotsByName(PipPage)
        PipPage.setTabOrder(self.indexEdit, self.stringList)
        PipPage.setTabOrder(self.stringList, self.addButton)
        PipPage.setTabOrder(self.addButton, self.removeButton)
        PipPage.setTabOrder(self.removeButton, self.removeAllButton)

    def retranslateUi(self, PipPage):
        _translate = QtCore.QCoreApplication.translate
        self.headerLabel.setText(_translate("PipPage", "<b>Configure pip</b>"))
        self.groupBox_2.setTitle(_translate("PipPage", "Index URL"))
        self.indexEdit.setToolTip(_translate("PipPage", "Enter the URL of the package index or leave empty to use the default"))
        self.groupBox.setTitle(_translate("PipPage", "pip Executables"))
        self.addButton.setToolTip(_translate("PipPage", "Press to add an entry"))
        self.addButton.setText(_translate("PipPage", "&Add..."))
        self.removeButton.setToolTip(_translate("PipPage", "Press to remove the selected entries"))
        self.removeButton.setText(_translate("PipPage", "&Remove"))
        self.removeAllButton.setToolTip(_translate("PipPage", "Press to remove all entries"))
        self.removeAllButton.setText(_translate("PipPage", "R&emove All"))
        self.defaultListButton.setToolTip(_translate("PipPage", "Press to load the default list"))
        self.defaultListButton.setText(_translate("PipPage", "&Default"))

from E5Gui.E5ListView import E5ListView

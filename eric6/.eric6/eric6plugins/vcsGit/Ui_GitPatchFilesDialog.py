# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/vcsGit/GitPatchFilesDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GitPatchFilesDialog(object):
    def setupUi(self, GitPatchFilesDialog):
        GitPatchFilesDialog.setObjectName("GitPatchFilesDialog")
        GitPatchFilesDialog.resize(498, 411)
        GitPatchFilesDialog.setSizeGripEnabled(True)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(GitPatchFilesDialog)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.patchFilesList = QtWidgets.QListWidget(GitPatchFilesDialog)
        self.patchFilesList.setAlternatingRowColors(True)
        self.patchFilesList.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.patchFilesList.setObjectName("patchFilesList")
        self.horizontalLayout_2.addWidget(self.patchFilesList)
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.addButton = QtWidgets.QToolButton(GitPatchFilesDialog)
        self.addButton.setObjectName("addButton")
        self.verticalLayout.addWidget(self.addButton)
        self.deleteButton = QtWidgets.QToolButton(GitPatchFilesDialog)
        self.deleteButton.setObjectName("deleteButton")
        self.verticalLayout.addWidget(self.deleteButton)
        self.line = QtWidgets.QFrame(GitPatchFilesDialog)
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.verticalLayout.addWidget(self.line)
        self.upButton = QtWidgets.QToolButton(GitPatchFilesDialog)
        self.upButton.setObjectName("upButton")
        self.verticalLayout.addWidget(self.upButton)
        self.downButton = QtWidgets.QToolButton(GitPatchFilesDialog)
        self.downButton.setObjectName("downButton")
        self.verticalLayout.addWidget(self.downButton)
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout.addItem(spacerItem)
        self.horizontalLayout_2.addLayout(self.verticalLayout)
        self.verticalLayout_2.addLayout(self.horizontalLayout_2)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.label_4 = QtWidgets.QLabel(GitPatchFilesDialog)
        self.label_4.setObjectName("label_4")
        self.horizontalLayout.addWidget(self.label_4)
        self.stripSpinBox = QtWidgets.QSpinBox(GitPatchFilesDialog)
        self.stripSpinBox.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.stripSpinBox.setMaximum(9)
        self.stripSpinBox.setProperty("value", 1)
        self.stripSpinBox.setObjectName("stripSpinBox")
        self.horizontalLayout.addWidget(self.stripSpinBox)
        spacerItem1 = QtWidgets.QSpacerItem(118, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)
        self.verticalLayout_2.addLayout(self.horizontalLayout)
        self.eofCheckBox = QtWidgets.QCheckBox(GitPatchFilesDialog)
        self.eofCheckBox.setObjectName("eofCheckBox")
        self.verticalLayout_2.addWidget(self.eofCheckBox)
        self.lineCountsCheckBox = QtWidgets.QCheckBox(GitPatchFilesDialog)
        self.lineCountsCheckBox.setObjectName("lineCountsCheckBox")
        self.verticalLayout_2.addWidget(self.lineCountsCheckBox)
        self.buttonBox = QtWidgets.QDialogButtonBox(GitPatchFilesDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.verticalLayout_2.addWidget(self.buttonBox)

        self.retranslateUi(GitPatchFilesDialog)
        self.buttonBox.accepted.connect(GitPatchFilesDialog.accept)
        self.buttonBox.rejected.connect(GitPatchFilesDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(GitPatchFilesDialog)
        GitPatchFilesDialog.setTabOrder(self.patchFilesList, self.addButton)
        GitPatchFilesDialog.setTabOrder(self.addButton, self.deleteButton)
        GitPatchFilesDialog.setTabOrder(self.deleteButton, self.upButton)
        GitPatchFilesDialog.setTabOrder(self.upButton, self.downButton)
        GitPatchFilesDialog.setTabOrder(self.downButton, self.stripSpinBox)
        GitPatchFilesDialog.setTabOrder(self.stripSpinBox, self.eofCheckBox)
        GitPatchFilesDialog.setTabOrder(self.eofCheckBox, self.lineCountsCheckBox)

    def retranslateUi(self, GitPatchFilesDialog):
        _translate = QtCore.QCoreApplication.translate
        GitPatchFilesDialog.setWindowTitle(_translate("GitPatchFilesDialog", "Patch Files"))
        self.addButton.setToolTip(_translate("GitPatchFilesDialog", "Press to add patch files to the list"))
        self.deleteButton.setToolTip(_translate("GitPatchFilesDialog", "Press to delete the selected patch files from the list"))
        self.upButton.setToolTip(_translate("GitPatchFilesDialog", "Press to move the selected file up"))
        self.downButton.setToolTip(_translate("GitPatchFilesDialog", "Press to move the selected file down"))
        self.label_4.setText(_translate("GitPatchFilesDialog", "Strip Count:"))
        self.stripSpinBox.setToolTip(_translate("GitPatchFilesDialog", "Enter number of leading directories to strip off (default 1)"))
        self.eofCheckBox.setToolTip(_translate("GitPatchFilesDialog", "Select, if the patch has inaccurate end-of-file markers"))
        self.eofCheckBox.setText(_translate("GitPatchFilesDialog", "Patch has inaccurate end-of-file"))
        self.lineCountsCheckBox.setToolTip(_translate("GitPatchFilesDialog", "Select, if the line counts of the patch header may be wrong"))
        self.lineCountsCheckBox.setText(_translate("GitPatchFilesDialog", "Don\'t trust line counts"))


# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/cypher/.eric6/eric6plugins/vcsGit/GitNewProjectOptionsDialog.ui'
#
# Created by: PyQt5 UI code generator 5.8
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GitNewProjectOptionsDialog(object):
    def setupUi(self, GitNewProjectOptionsDialog):
        GitNewProjectOptionsDialog.setObjectName("GitNewProjectOptionsDialog")
        GitNewProjectOptionsDialog.resize(562, 110)
        GitNewProjectOptionsDialog.setSizeGripEnabled(True)
        self.gridLayout = QtWidgets.QGridLayout(GitNewProjectOptionsDialog)
        self.gridLayout.setObjectName("gridLayout")
        self.TextLabel2 = QtWidgets.QLabel(GitNewProjectOptionsDialog)
        self.TextLabel2.setObjectName("TextLabel2")
        self.gridLayout.addWidget(self.TextLabel2, 0, 0, 1, 1)
        self.vcsUrlCombo = QtWidgets.QComboBox(GitNewProjectOptionsDialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.vcsUrlCombo.sizePolicy().hasHeightForWidth())
        self.vcsUrlCombo.setSizePolicy(sizePolicy)
        self.vcsUrlCombo.setEditable(True)
        self.vcsUrlCombo.setInsertPolicy(QtWidgets.QComboBox.InsertAtTop)
        self.vcsUrlCombo.setSizeAdjustPolicy(QtWidgets.QComboBox.AdjustToMinimumContentsLength)
        self.vcsUrlCombo.setObjectName("vcsUrlCombo")
        self.gridLayout.addWidget(self.vcsUrlCombo, 0, 1, 1, 1)
        self.vcsUrlButton = QtWidgets.QToolButton(GitNewProjectOptionsDialog)
        self.vcsUrlButton.setObjectName("vcsUrlButton")
        self.gridLayout.addWidget(self.vcsUrlButton, 0, 2, 1, 1)
        self.vcsUrlClearHistoryButton = QtWidgets.QToolButton(GitNewProjectOptionsDialog)
        self.vcsUrlClearHistoryButton.setObjectName("vcsUrlClearHistoryButton")
        self.gridLayout.addWidget(self.vcsUrlClearHistoryButton, 0, 3, 1, 1)
        self.TextLabel4 = QtWidgets.QLabel(GitNewProjectOptionsDialog)
        self.TextLabel4.setObjectName("TextLabel4")
        self.gridLayout.addWidget(self.TextLabel4, 1, 0, 1, 1)
        self.vcsProjectDirEdit = QtWidgets.QLineEdit(GitNewProjectOptionsDialog)
        self.vcsProjectDirEdit.setObjectName("vcsProjectDirEdit")
        self.gridLayout.addWidget(self.vcsProjectDirEdit, 1, 1, 1, 1)
        self.projectDirButton = QtWidgets.QToolButton(GitNewProjectOptionsDialog)
        self.projectDirButton.setObjectName("projectDirButton")
        self.gridLayout.addWidget(self.projectDirButton, 1, 2, 1, 1)
        self.buttonBox = QtWidgets.QDialogButtonBox(GitNewProjectOptionsDialog)
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.gridLayout.addWidget(self.buttonBox, 2, 0, 1, 4)
        self.TextLabel2.setBuddy(self.vcsUrlCombo)
        self.TextLabel4.setBuddy(self.vcsProjectDirEdit)

        self.retranslateUi(GitNewProjectOptionsDialog)
        self.buttonBox.accepted.connect(GitNewProjectOptionsDialog.accept)
        self.buttonBox.rejected.connect(GitNewProjectOptionsDialog.reject)
        QtCore.QMetaObject.connectSlotsByName(GitNewProjectOptionsDialog)
        GitNewProjectOptionsDialog.setTabOrder(self.vcsUrlCombo, self.vcsUrlButton)
        GitNewProjectOptionsDialog.setTabOrder(self.vcsUrlButton, self.vcsProjectDirEdit)
        GitNewProjectOptionsDialog.setTabOrder(self.vcsProjectDirEdit, self.projectDirButton)

    def retranslateUi(self, GitNewProjectOptionsDialog):
        _translate = QtCore.QCoreApplication.translate
        GitNewProjectOptionsDialog.setWindowTitle(_translate("GitNewProjectOptionsDialog", "New Project from Repository"))
        GitNewProjectOptionsDialog.setWhatsThis(_translate("GitNewProjectOptionsDialog", "<b>New Project from Repository Dialog</b>\n"
"<p>Enter the various repository infos into the entry fields. These values are used, when the new project is retrieved from the repository.</p>\n"
"<p>For remote repositories the URL must contain the hostname.</p>"))
        self.TextLabel2.setText(_translate("GitNewProjectOptionsDialog", "&URL:"))
        self.vcsUrlCombo.setToolTip(_translate("GitNewProjectOptionsDialog", "Enter the URL of the repository"))
        self.vcsUrlButton.setToolTip(_translate("GitNewProjectOptionsDialog", "Select the repository url via a directory selection dialog"))
        self.vcsUrlClearHistoryButton.setToolTip(_translate("GitNewProjectOptionsDialog", "Press to clear the history of entered repository URLs"))
        self.TextLabel4.setText(_translate("GitNewProjectOptionsDialog", "Project &Directory:"))
        self.vcsProjectDirEdit.setToolTip(_translate("GitNewProjectOptionsDialog", "Enter the directory of the new project."))
        self.vcsProjectDirEdit.setWhatsThis(_translate("GitNewProjectOptionsDialog", "<b>Project Directory</b>\n"
"<p>Enter the directory of the new project. It will be retrieved from \n"
"the repository and be placed in this directory.</p>"))

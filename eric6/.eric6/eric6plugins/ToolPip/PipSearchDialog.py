# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to search PyPI.
"""

from __future__ import unicode_literals

import textwrap

from PyQt5.QtCore import pyqtSlot, Qt, QEventLoop, QRegExp
from PyQt5.QtWidgets import QDialog, QDialogButtonBox, QAbstractButton, \
    QApplication, QTreeWidgetItem, QHeaderView, QInputDialog

from E5Gui import E5MessageBox
try:
    from E5Network.E5XmlRpcClient import E5XmlRpcClient
except ImportError:
    from .E5XmlRpcClient import E5XmlRpcClient

from .Ui_PipSearchDialog import Ui_PipSearchDialog

from . import DefaultIndexUrl


class PipSearchDialog(QDialog, Ui_PipSearchDialog):
    """
    Class implementing a dialog to search PyPI.
    """
    VersionRole = Qt.UserRole + 1
    
    Stopwords = {
        "a", "and", "are", "as", "at", "be", "but", "by",
        "for", "if", "in", "into", "is", "it",
        "no", "not", "of", "on", "or", "such",
        "that", "the", "their", "then", "there", "these",
        "they", "this", "to", "was", "will",
    }
    
    def __init__(self, pip, plugin, parent=None):
        """
        Constructor
        
        @param pip reference to the master object (Pip)
        @param plugin reference to the plugin object (ToolPipPlugin)
        @param parent reference to the parent widget (QWidget)
        """
        super(PipSearchDialog, self).__init__(parent)
        self.setupUi(self)
        self.setWindowFlags(Qt.Window)
        
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(False)
        
        self.__installButton = self.buttonBox.addButton(
            self.tr("&Install"), QDialogButtonBox.ActionRole)
        self.__installButton.setEnabled(False)
        
        self.__showDetailsButton = self.buttonBox.addButton(
            self.tr("&Show Details..."), QDialogButtonBox.ActionRole)
        self.__showDetailsButton.setEnabled(False)
        
        self.__pip = pip
        self.__client = E5XmlRpcClient(
            plugin.getPreferences("PipSearchIndex") or DefaultIndexUrl,
            self)
        
        self.__default = self.tr("<Default>")
        pipExecutables = sorted(plugin.getPreferences("PipExecutables"))
        self.pipComboBox.addItem(self.__default)
        self.pipComboBox.addItems(pipExecutables)
        
        self.searchEdit.setFocus(Qt.OtherFocusReason)
        
        self.__canceled = False
        self.__detailsData = {}
        self.__query = []
    
    def closeEvent(self, e):
        """
        Protected slot implementing a close event handler.
        
        @param e close event (QCloseEvent)
        """
        QApplication.restoreOverrideCursor()
        e.accept()
    
    @pyqtSlot(str)
    def on_searchEdit_textChanged(self, txt):
        """
        Private slot handling a change of the search term.
        
        @param txt search term (string)
        """
        self.searchButton.setEnabled(bool(txt))
    
    @pyqtSlot()
    def on_searchButton_clicked(self):
        """
        Private slot handling a press of the search button.
        """
        self.__search()
    
    @pyqtSlot()
    def on_resultList_itemSelectionChanged(self):
        """
        Private slot handling changes of the selection.
        """
        self.__installButton.setEnabled(
            len(self.resultList.selectedItems()) > 0)
        self.__showDetailsButton.setEnabled(
            len(self.resultList.selectedItems()) == 1)
    
    @pyqtSlot(QAbstractButton)
    def on_buttonBox_clicked(self, button):
        """
        Private slot called by a button of the button box clicked.
        
        @param button button that was clicked (QAbstractButton)
        """
        if button == self.buttonBox.button(QDialogButtonBox.Close):
            self.close()
        elif button == self.buttonBox.button(QDialogButtonBox.Cancel):
            self.__client.abort()
            self.__canceled = True
        elif button == self.__installButton:
            self.__install()
        elif button == self.__showDetailsButton:
            self.__showDetails()
    
    def __search(self):
        """
        Private method to perform the search.
        """
        self.resultList.clear()
        self.infoLabel.clear()
        
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setDefault(True)
        self.searchButton.setEnabled(False)
        QApplication.processEvents(QEventLoop.ExcludeUserInputEvents)
        
        QApplication.setOverrideCursor(Qt.WaitCursor)
        QApplication.processEvents(QEventLoop.ExcludeUserInputEvents)
        
        self.__canceled = False
        
        self.__query = [term for term in self.searchEdit.text().strip().split()
                        if term not in PipSearchDialog.Stopwords]
        self.__client.call(
            "search",
            ({"name": self.__query, "summary": self.__query}, "or"),
            self.__processSearchResult,
            self.__searchError
        )
    
    def __processSearchResult(self, data):
        """
        Private method to process the search result data from PyPI.
        
        @param data result data (tuple) with hits in the first element
        """
        if data:
            packages = self.__transformHits(data[0])
            if packages:
                self.infoLabel.setText(self.tr("%n package(s) found.", "",
                                       len(packages)))
                wrapper = textwrap.TextWrapper(width=80)
                count = 0
                total = 0
                for package in packages:
                    if self.__canceled:
                        self.infoLabel.setText(
                            self.tr("Canceled - only {0} out of %n package(s)"
                                    " shown", "", len(packages)).format(total))
                        break
                    itm = QTreeWidgetItem(
                        self.resultList, [
                            package['name'].strip(),
                            "{0:4d}".format(package['score']),
                            "\n".join([
                                wrapper.fill(line) for line in
                                package['summary'].strip().splitlines()
                            ])
                        ])
                    itm.setData(0, self.VersionRole, package['version'])
                    count += 1
                    total += 1
                    if count == 100:
                        count = 0
                        QApplication.processEvents()
            else:
                QApplication.restoreOverrideCursor()
                E5MessageBox.warning(
                    self,
                    self.tr("Search PyPI"),
                    self.tr("""<p>The package search did not return"""
                            """ anything.</p>"""))
                self.infoLabel.setText(
                    self.tr("""<p>The package search did not return"""
                            """ anything.</p>"""))
        else:
            QApplication.restoreOverrideCursor()
            E5MessageBox.warning(
                self,
                self.tr("Search PyPI"),
                self.tr("""<p>The package search did not return anything."""
                        """</p>"""))
            self.infoLabel.setText(
                self.tr("""<p>The package search did not return anything."""
                        """</p>"""))
        
        header = self.resultList.header()
        self.resultList.sortItems(1, Qt.DescendingOrder)
        header.setStretchLastSection(False)
        header.resizeSections(QHeaderView.ResizeToContents)
        headerSize = 0
        for col in range(header.count()):
            headerSize += header.sectionSize(col)
        if headerSize < header.width():
            header.setStretchLastSection(True)
        
        self.__finish()
    
    def __finish(self):
        """
        Private slot performing the finishing actions.
        """
        QApplication.restoreOverrideCursor()
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(False)
        self.searchButton.setEnabled(True)
        self.searchButton.setDefault(True)
        self.searchEdit.setFocus(Qt.OtherFocusReason)
    
    def __searchError(self, errorCode, errorString):
        """
        Private method handling a search error.
        
        @param errorCode code of the error (integer)
        @param errorString error message (string)
        """
        self.__finish()
        E5MessageBox.warning(
            self,
            self.tr("Search PyPI"),
            self.tr("""<p>The package search failed.</p><p>Reason: {0}</p>""")
            .format(errorString))
        self.infoLabel.setText(self.tr("Error: {0}").format(errorString))
    
    def __transformHits(self, hits):
        """
        Private method to convert the list returned from pypi into a
        packages list.
        
        @param hits list returned from pypi (list of dict)
        @return list of packages (list of dict)
        """
        # we only include the record with the highest score
        packages = {}
        for hit in hits:
            name = hit['name'].strip()
            summary = (hit['summary'] or "").strip()
            version = hit['version'].strip()
            score = self.__score(name, summary)
            # cleanup the summary
            if summary in ["UNKNOWN", "."]:
                summary = ""

            if name not in packages:
                packages[name] = {
                    'name': name,
                    'summary': summary,
                    'version': [version.strip()],
                    'score': score}
            else:
                # TODO: allow for multiple versions using highest score
                if score > packages[name]['score']:
                    packages[name]['score'] = score
                    packages[name]['summary'] = summary
                    packages[name]['version'].append(version.strip())

        return list(packages.values())
    
    def __score(self, name, summary):
        """
        Private method to calculate some score for a search result.
        
        @param name name of the returned package
        @type str
        @param summary summary text for the package
        @type str
        @return score value
        @rtype int
        """
        score = 0
        for queryTerm in self.__query:
            if queryTerm.lower() in name.lower():
                score += 4
                if queryTerm.lower() == name.lower():
                    score += 4
            
            if queryTerm.lower() in summary.lower():
                if QRegExp(r'\b{0}\b'.format(QRegExp.escape(queryTerm)),
                           Qt.CaseInsensitive).indexIn(summary) != -1:
                    # word match gets even higher score
                    score += 2
                else:
                    score += 1
        
        return score
    
    def __install(self):
        """
        Private slot to install the selected packages.
        """
        command = self.pipComboBox.currentText()
        if command == self.__default:
            command = ""
        
        packages = []
        for itm in self.resultList.selectedItems():
            packages.append(itm.text(0).strip())
        if packages:
            self.__pip.installPackages(packages, cmd=command)
    
    def __showDetails(self):
        """
        Private slot to show details about the selected package.
        """
        self.buttonBox.button(QDialogButtonBox.Close).setEnabled(False)
        self.buttonBox.button(QDialogButtonBox.Cancel).setEnabled(True)
        self.buttonBox.button(QDialogButtonBox.Cancel).setDefault(True)
        self.__showDetailsButton.setEnabled(False)
        QApplication.setOverrideCursor(Qt.WaitCursor)
        QApplication.processEvents(QEventLoop.ExcludeUserInputEvents)
        
        self.__detailsData = {}
        
        itm = self.resultList.selectedItems()[0]
        packageVersions = itm.data(0, self.VersionRole)
        if len(packageVersions) == 1:
            packageVersion = packageVersions[0]
        elif len(packageVersions) == 0:
            packageVersion = ""
        else:
            packageVersion, ok = QInputDialog.getItem(
                self,
                self.tr("Show Package Details"),
                self.tr("Select the package version:"),
                packageVersions,
                0, False)
            if not ok:
                return
        
        packageName = itm.text(0)
        self.__client.call(
            "release_data",
            (packageName, packageVersion),
            lambda d: self.__getPackageDownloadsData(packageVersion, d),
            self.__detailsError
        )
    
    def __getPackageDownloadsData(self, packageVersion, data):
        """
        Private method to store the details data and get downloads
        information.
        
        @param packageVersion version info
        @type str
        @param data result data with package details in the first
            element
        @type tuple
        """
        if data and data[0]:
            self.__detailsData = data[0]
            itm = self.resultList.selectedItems()[0]
            packageName = itm.text(0)
            self.__client.call(
                "release_urls",
                (packageName, packageVersion),
                self.__displayPackageDetails,
                self.__detailsError
            )
        else:
            self.__finish()
            E5MessageBox.warning(
                self,
                self.tr("Search PyPI"),
                self.tr("""<p>No package details info available.</p>"""))
    
    def __displayPackageDetails(self, data):
        """
        Private method to display the returned package details.
        
        @param data result data (tuple) with downloads information in the first
            element
        """
        self.__finish()
        self.__showDetailsButton.setEnabled(True)
        from .PipPackageDetailsDialog import PipPackageDetailsDialog
        dlg = PipPackageDetailsDialog(self.__detailsData, data[0], self)
        dlg.exec_()
    
    def __detailsError(self, errorCode, errorString):
        """
        Private method handling a details error.
        
        @param errorCode code of the error (integer)
        @param errorString error message (string)
        """
        self.__finish()
        self.__showDetailsButton.setEnabled(True)
        E5MessageBox.warning(
            self,
            self.tr("Search PyPI"),
            self.tr("""<p>Package details info could not be retrieved.</p>"""
                    """<p>Reason: {0}</p>""")
            .format(errorString))
    
    @pyqtSlot(QTreeWidgetItem, int)
    def on_resultList_itemActivated(self, item, column):
        """
        Private slot reacting on an item activation.
        
        @param item reference to the activated item (QTreeWidgetItem)
        @param column activated column (integer)
        """
        self.__showDetails()

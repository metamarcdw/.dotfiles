# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a dialog to show details about a package.
"""

from __future__ import unicode_literals
try:
    basestring    # __IGNORE_WARNING__
except NameError:
    basestring = str

from PyQt5.QtCore import Qt, QLocale
from PyQt5.QtWidgets import QDialog, QDialogButtonBox, QTreeWidgetItem, \
    QLabel, QHeaderView

from .Ui_PipPackageDetailsDialog import Ui_PipPackageDetailsDialog


class PipPackageDetailsDialog(QDialog, Ui_PipPackageDetailsDialog):
    """
    Class documentation goes here.
    """
    def __init__(self, detailsData, downloadsData, parent=None):
        """
        Constructor
        
        @param detailsData package details (dict)
        @param downloadsData downloads information (dict)
        @param parent reference to the parent widget (QWidget)
        """
        super(PipPackageDetailsDialog, self).__init__(parent)
        self.setupUi(self)
        
        self.__locale = QLocale()
        self.__packageTypeMap = {
            "sdist": self.tr("Source"),
            "bdist_wheel": self.tr("Python Wheel"),
            "bdist_egg": self.tr("Python Egg"),
            "bdist_wininst": self.tr("MS Windows Installer"),
            "bdist_msi": self.tr("MS Windows Installer"),
            "bdist_rpm": self.tr("Unix Installer"),
            "bdist_deb": self.tr("Unix Installer"),
            "bdist_dumb": self.tr("Archive"),
        }
        
        self.__populateDetails(detailsData)
        self.__populateDownloadUrls(downloadsData)
        self.__populateRequiresProvides(detailsData)
    
    def __populateDetails(self, detailsData):
        """
        Private method to populate the details tab.
        
        @param detailsData package details (dict)
        """
        self.packageNameLabel.setText(
            "<h1>{0} {1}</h1".format(self.__sanitize(detailsData["name"]),
                                     self.__sanitize(detailsData["version"])))
        self.summaryLabel.setText(
            self.__sanitize(detailsData["summary"][:240]))
        self.descriptionEdit.setPlainText(
            self.__sanitize(detailsData["description"]))
        self.authorLabel.setText(self.__sanitize(detailsData["author"]))
        self.authorEmailLabel.setText(
            '<a href="mailto:{0}">{0}</a>'.format(
                self.__sanitize(detailsData["author_email"])))
        self.licenseLabel.setText(self.__sanitize(detailsData["license"]))
        self.platformLabel.setText(self.__sanitize(detailsData["platform"]))
        self.homePageLabel.setText(
            '<a href="{0}">{0}</a>'.format(
                self.__sanitize(detailsData["home_page"], forUrl=True)))
        self.packageUrlLabel.setText(
            '<a href="{0}">{0}</a>'.format(
                self.__sanitize(detailsData["package_url"], forUrl=True)))
        self.releaseUrlLabel.setText(
            '<a href="{0}">{0}</a>'.format(
                self.__sanitize(detailsData["release_url"], forUrl=True)))
        self.docsUrlLabel.setText(
            '<a href="{0}">{0}</a>'.format(
                self.__sanitize(detailsData["docs_url"], forUrl=True)))
        self.downloadsDayLabel.setText(self.__locale.toString(
            detailsData["downloads"]["last_day"]))
        self.downloadsWeekLabel.setText(self.__locale.toString(
            detailsData["downloads"]["last_week"]))
        self.downloadsMonthLabel.setText(self.__locale.toString(
            detailsData["downloads"]["last_month"]))
        self.classifiersList.addItems(detailsData["classifiers"])
        
        self.buttonBox.button(QDialogButtonBox.Close).setDefault(True)
        self.buttonBox.button(QDialogButtonBox.Close).setFocus(
            Qt.OtherFocusReason)
    
    def __populateDownloadUrls(self, downloadsData):
        """
        Private method to populate the download URLs tab.
        
        @param downloadsData downloads information (dict)
        """
        index = self.infoWidget.indexOf(self.urls)
        if downloadsData:
            self.infoWidget.setTabEnabled(index, True)
            for download in downloadsData:
                itm = QTreeWidgetItem(self.downloadUrlsList, [
                    "",
                    self.__packageTypeMap[download["packagetype"]]
                    if download["packagetype"] in self.__packageTypeMap
                    else "",
                    download["python_version"]
                    if download["python_version"] != "source"
                    else "",
                    self.__locale.toString(download["downloads"]),
                    self.__formatUploadDate(download["upload_time"]),
                    self.__formatSize(download["size"]),
                ])
                if download["has_sig"]:
                    pgpLink = ' (<a href="{0}">pgp</a>)'.format(
                        download["url"] + ".asc")
                else:
                    pgpLink = ""
                urlLabel = QLabel('<a href="{0}#md5={2}">{1}</a>{3}'.format(
                    download["url"], download["filename"],
                    download["md5_digest"], pgpLink))
                urlLabel.setTextInteractionFlags(Qt.LinksAccessibleByMouse)
                urlLabel.setOpenExternalLinks(True)
                self.downloadUrlsList.setItemWidget(itm, 0, urlLabel)
            header = self.downloadUrlsList.header()
            header.resizeSections(QHeaderView.ResizeToContents)
        else:
            self.infoWidget.setTabEnabled(index, False)
    
    def __populateRequiresProvides(self, detailsData):
        """
        Private method to populate the requires/provides tab.
        
        @param detailsData package details (dict)
        """
        populated = False
        
        if "requires" in detailsData:
            self.requiredPackagesList.addItems(detailsData["requires"])
            populated = True
        if "requires_dist" in detailsData:
            self.requiredDistributionsList.addItems(
                detailsData["requires_dist"])
            populated = True
        if "provides" in detailsData:
            self.providedPackagesList.addItems(detailsData["provides"])
            populated = True
        if "provides_dist" in detailsData:
            self.providedDistributionsList.addItems(
                detailsData["provides_dist"])
            populated = True
        
        index = self.infoWidget.indexOf(self.requires)
        self.infoWidget.setTabEnabled(index, populated)
    
    def __sanitize(self, text, forUrl=False):
        """
        Private method to clean-up the given text.
        
        @param text raw text (string)
        @param forUrl flag indicating to sanitize an URL text (boolean)
        @return processed text (string)
        """
        if text == "UNKNOWN":
            text = ""
        elif text == "any":
            text = self.tr("any")
        elif text is None:
            text = ""
        if forUrl:
            if not isinstance(text, basestring) or \
                    not text.startswith(("http://", "https://", "ftp://")):
                # ignore if the schema is not one of the listed ones
                text = ""
        
        return text
    
    def __formatUploadDate(self, datetime):
        """
        Private method to format the upload date.
        
        @param datetime upload date and time (xmlrpc.DateTime)
        @return formatted date string (string)
        """
        date = datetime.value.split("T")[0]
        return "{0}-{1}-{2}".format(date[:4], date[4:6], date[6:])
    
    def __formatSize(self, size):
        """
        Private slot to format the size.
        
        @param size size to be formatted (integer)
        @return formatted size (string)
        """
        unit = ""
        if size < 1024:
            unit = self.tr("B")
        elif size < 1024 * 1024:
            size /= 1024
            unit = self.tr("KB")
        elif size < 1024 * 1024 * 1024:
            size /= 1024 * 1024
            unit = self.tr("MB")
        else:
            size /= 1024 * 1024 * 1024
            unit = self.tr("GB")
        return self.tr("{0:.1f} {1}", "value, unit").format(size, unit)

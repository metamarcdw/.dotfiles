# -*- coding: utf-8 -*-

# Copyright (c) 2013 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing the APIs plugin.
"""

from __future__ import unicode_literals

import os
import glob

from PyQt5.QtCore import QObject

# Start-of-Header
name = "APIs Plugin"
author = "Detlev Offenbach <detlev@die-offenbachs.de>"
autoactivate = True
deactivateable = True
version = "2.0.1"
className = "PluginApis"
packageName = "APIs"
shortDescription = "API files for auto-completion and call tips."
longDescription = \
    """This plug-in provides API files for auto-completion""" \
    """ and call tips that are often missing from distribution packages."""
needsRestart = False
pyqtApi = 2
python2Compatible = True
# End-of-Header

error = ""


def apiFiles(language):
    """
    Module function to return the API files made available by this plugin.
    
    @param language language to get APIs for (string)
    @return list of API filenames (list of string)
    """
    if language in ["Python3",  "Python2", "Python"]:
        apisDir = \
            os.path.join(os.path.dirname(__file__), "APIs", "Python")
        apis = glob.glob(os.path.join(apisDir, '*.api'))
        if language == "Python3":
            apisDir = \
                os.path.join(os.path.dirname(__file__), "APIs", "Python3")
            apis.extend(glob.glob(os.path.join(apisDir, '*.api')))
        else:
            apisDir = \
                os.path.join(os.path.dirname(__file__), "APIs", "Python2")
            apis.extend(glob.glob(os.path.join(apisDir, '*.api')))
    else:
        apis = []
    return apis


class PluginApis(QObject):
    """
    Class implementing the Django project plugin.
    """
    def __init__(self, ui):
        """
        Constructor
        
        @param ui reference to the user interface object (UI.UserInterface)
        """
        super(PluginApis, self).__init__(ui)
        self.__ui = ui
    
    def activate(self):
        """
        Public method to activate this plugin.
        
        @return tuple of None and activation status (boolean)
        """
        return None, True
    
    def deactivate(self):
        """
        Public method to deactivate this plugin.
        """
        pass

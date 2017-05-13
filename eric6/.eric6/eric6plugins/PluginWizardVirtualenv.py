# -*- coding: utf-8 -*-

# Copyright (c) 2014 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing the virtualenv wizard plug-in.
"""

from __future__ import unicode_literals

import os

from PyQt5.QtCore import QObject, QTranslator
from PyQt5.QtWidgets import QDialog

from E5Gui.E5Application import e5App
from E5Gui.E5Action import E5Action

# Start-of-Header
name = "virtualenv Configurator Plug-in"
author = "Detlev Offenbach <detlev@die-offenbachs.de>"
autoactivate = True
deactivateable = True
version = "2.2.7"
className = "WizardVirtualenvPlugin"
packageName = "WizardVirtualenv"
shortDescription = "Configurator for Python virtual environments."
longDescription = \
    """This plug-in implements a configuration interface to create Python""" \
    """ virtual environments using 'virtualenv' or 'pyvenv."""
needsRestart = False
pyqtApi = 2
python2Compatible = True
# End-of-Header

error = ""


class WizardVirtualenvPlugin(QObject):
    """
    Class implementing the virtualenv wizard plug-in.
    """
    def __init__(self, ui):
        """
        Constructor
        
        @param ui reference to the user interface object (UI.UserInterface)
        """
        QObject.__init__(self, ui)
        self.__ui = ui
        self.__action = None
        
        self.__translator = None
        self.__loadTranslator()
        
        self.__initAction()
    
    def activate(self):
        """
        Public method to activate this plug-in.
        
        @return tuple of None and activation status (boolean)
        """
        e5App().getObject("ToolbarManager").addAction(self.__action, "Tools")
        
        menu = self.__ui.getMenu("extras")
        menu.addAction(self.__action)

        return None, True
    
    def deactivate(self):
        """
        Public method to deactivate this plug-in.
        """
        e5App().getObject("ToolbarManager").removeAction(self.__action)
        
        menu = self.__ui.getMenu("extras")
        menu.removeAction(self.__action)
    
    def __loadTranslator(self):
        """
        Private method to load the translation file.
        """
        if self.__ui is not None:
            loc = self.__ui.getLocale()
            if loc and loc != "C":
                locale_dir = os.path.join(
                    os.path.dirname(__file__), "WizardVirtualenv", "i18n")
                translation = "virtualenv_{0}".format(loc)
                translator = QTranslator(None)
                loaded = translator.load(translation, locale_dir)
                if loaded:
                    self.__translator = translator
                    e5App().installTranslator(self.__translator)
                else:
                    print("Warning: translation file '{0}' could not be"
                          " loaded.".format(translation))
                    print("Using default.")
    
    def __initAction(self):
        """
        Private method to initialize the action.
        """
        self.__action = E5Action(
            self.tr('Virtualenv Configurator'),
            self.tr('&Virtualenv Configurator...'),
            0, 0, self,
            'virtualenv_configurator')
        self.__action.setStatusTip(self.tr('Virtualenv Wizard'))
        self.__action.setWhatsThis(self.tr(
            """<b>Virtualenv Configurator</b>"""
            """<p>This opens a dialog for entering all the parameters"""
            """ needed to create a Python virtual environment using"""
            """ virtualenv or pyvenv.</p>"""
        ))
        self.__action.triggered.connect(self.__handle)
    
    def __handle(self):
        """
        Private method to handle the creation of a virtual environment.
        """
        from WizardVirtualenv.VirtualenvConfigurationDialog import \
            VirtualenvConfigurationDialog
        
        dlg = VirtualenvConfigurationDialog()
        if dlg.exec_() == QDialog.Accepted:
            (pyvenv, args, openTarget, createLog, createScript, targetDir,
             interpreter) = dlg.getData()
            
            # now do the call
            from WizardVirtualenv.VirtualenvExecDialog import \
                VirtualenvExecDialog
            dia = VirtualenvExecDialog(pyvenv, targetDir, openTarget,
                                       createLog, createScript, interpreter)
            dia.show()
            dia.start(args)
            dia.exec_()

#
# eflag: noqa = M801

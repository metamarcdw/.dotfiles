# -*- coding: utf-8 -*-

# Copyright (c) 2015 - 2017 Detlev Offenbach <detlev@die-offenbachs.de>
#

"""
Module implementing a syntax highlighter for diff outputs.
"""

from __future__ import unicode_literals

import re

from PyQt5.QtCore import Qt
from PyQt5.QtGui import QSyntaxHighlighter, QColor, QTextCharFormat, QFont

import Preferences

try:
    from E5Gui.E5GenericDiffHighlighter import TERMINAL, \
        E5GenericDiffHighlighter
except ImportError:
    def TERMINAL(pattern):
        """
        Function to mark a pattern as the final one to search for.
        
        @param pattern pattern to be marked (string)
        @return marked pattern (string)
        """
        return "__TERMINAL__:{0}".format(pattern)

    # Cache the results of re.compile for performance reasons
    _REGEX_CACHE = {}

    class E5GenericDiffHighlighter(QSyntaxHighlighter):
        """
        Class implementing a generic diff highlighter.
        """
        def __init__(self, doc):
            """
            Constructor
            
            @param doc reference to the text document (QTextDocument)
            """
            super(E5GenericDiffHighlighter, self).__init__(doc)
            
            self.textColor = QColor(0, 0, 0)
            self.addedColor = QColor(190, 237, 190)
            self.removedColor = QColor(237, 190, 190)
            self.replacedColor = QColor(190, 190, 237)
            self.contextColor = QColor(255, 220, 168)
            self.headerColor = QColor(237, 237, 190)
            
            self.normalFormat = self.makeFormat()
            
            self._rules = []
            self.generateRules()
        
        def generateRules(self):
            """
            Public method to generate the rule set.
            
            Note: This method must me implemented by derived syntax
            highlighters.
            """
            pass
        
        def createRules(self, *rules):
            """
            Public method to create the highlighting rules.
            
            @param rules set of highlighting rules (list of tuples of rule
                pattern (string) and highlighting format (QTextCharFormat))
            """
            for idx, ruleFormat in enumerate(rules):
                rule, formats = ruleFormat
                terminal = rule.startswith(TERMINAL(''))
                if terminal:
                    rule = rule[len(TERMINAL('')):]
                try:
                    regex = _REGEX_CACHE[rule]
                except KeyError:
                    regex = _REGEX_CACHE[rule] = re.compile(rule)
                self._rules.append((regex, formats, terminal))
        
        def formats(self, line):
            """
            Public method to determine the highlighting formats for a line of
            text.
            
            @param line text line to be highlighted (string)
            @return list of matched highlighting rules (list of tuples of match
                object and format (QTextCharFormat))
            """
            matched = []
            for rx, formats, terminal in self._rules:
                match = rx.match(line)
                if not match:
                    continue
                matched.append([match, formats])
                if terminal:
                    return matched
            
            return matched
        
        def makeFormat(self, fg=None, bg=None, bold=False):
            """
            Public method to generate a format definition.
            
            @param fg foreground color (QColor)
            @param bg background color (QColor)
            @param bold flag indicating bold text (boolean)
            @return format definiton (QTextCharFormat)
            """
            font = Preferences.getEditorOtherFonts("MonospacedFont")
            charFormat = QTextCharFormat()
            charFormat.setFontFamily(font.family())
            charFormat.setFontPointSize(font.pointSize())
            
            if fg:
                charFormat.setForeground(fg)
            
            if bg:
                charFormat.setBackground(bg)
            
            if bold:
                charFormat.setFontWeight(QFont.Bold)
            
            return charFormat
        
        def highlightBlock(self, text):
            """
            Public method to highlight a block of text.
            
            @param text text to be highlighted (string)
            """
            formats = self.formats(text)
            if not formats:
                # nothing matched
                self.setFormat(0, len(text), self.normalFormat)
                return
            
            for match, charFormat in formats:
                start = match.start()
                groups = match.groups()

                # No groups in the regex, assume this is a single rule
                # that spans the entire line
                if not groups:
                    self.setFormat(0, len(text), charFormat)
                    continue

                # Groups exist, rule is a tuple corresponding to group
                for groupIndex, group in enumerate(groups):
                    if not group:
                        # empty match
                        continue
                    
                    # allow None as a no-op format
                    length = len(group)
                    if charFormat[groupIndex]:
                        self.setFormat(start, start + length,
                                       charFormat[groupIndex])
                    start += length


class GitDiffHighlighter(E5GenericDiffHighlighter):
    """
    Class implementing a diff highlighter for Git.
    """
    def __init__(self, doc, whitespace=True):
        """
        Constructor
        
        @param doc reference to the text document (QTextDocument)
        @param whitespace flag indicating to highlight whitespace
            at the end of a line (boolean)
        """
        self.whitespace = whitespace
        
        super(GitDiffHighlighter, self).__init__(doc)

    def generateRules(self):
        """
        Public method to generate the rule set.
        """
        diffHeader = self.makeFormat(fg=self.textColor,
                                     bg=self.headerColor)
        diffHeaderBold = self.makeFormat(fg=self.textColor,
                                         bg=self.headerColor,
                                         bold=True)
        diffContext = self.makeFormat(fg=self.textColor,
                                      bg=self.contextColor)

        diffAdded = self.makeFormat(fg=self.textColor,
                                    bg=self.addedColor)
        diffRemoved = self.makeFormat(fg=self.textColor,
                                      bg=self.removedColor)

        if self.whitespace:
            badWhitespace = self.makeFormat(fg=Qt.black,
                                            bg=QColor(255, 0, 0, 192))

        # We specify the whitespace rule last so that it is
        # applied after the diff addition/removal rules.
        diffOldRegex = TERMINAL(r'^--- ')
        diffNewRegex = TERMINAL(r'^\+\+\+ ')
        diffContextRegex = TERMINAL(r'^@@ ')

        diffHeader1Regex = TERMINAL(r'^diff --git a/.*b/.*')
        diffHeader2Regex = TERMINAL(r'^index \S+\.\.\S+')
        diffHeader3Regex = TERMINAL(r'^new file mode')
        diffHeader4Regex = TERMINAL(r'^deleted file mode')
        
        diffAddedRegex = TERMINAL(r'^\+')
        diffRemovedRegex = TERMINAL(r'^-')
        diffBarRegex = TERMINAL(r'^([ ]+.*)(\|[ ]+\d+[ ]+[+-]+)$')
        diffStsRegex = (r'(.+\|.+?)(\d+)(.+?)([\+]*?)([-]*?)$')
        diffSummaryRegex = (r'(\s+\d+ files changed[^\d]*)'
                            r'(:?\d+ insertions[^\d]*)'
                            r'(:?\d+ deletions.*)$')

        self.createRules((diffOldRegex, diffRemoved),
                         (diffNewRegex, diffAdded),
                         (diffContextRegex, diffContext),
                         (diffBarRegex, (diffHeaderBold, diffHeader)),
                         (diffHeader1Regex, diffHeader),
                         (diffHeader2Regex, diffHeader),
                         (diffHeader3Regex, diffHeader),
                         (diffHeader4Regex, diffHeader),
                         (diffAddedRegex, diffAdded),
                         (diffRemovedRegex, diffRemoved),
                         (diffStsRegex, (None, diffHeader,
                                         None, diffHeader,
                                         diffHeader)),
                         (diffSummaryRegex, (diffHeader,
                                             diffHeader,
                                             diffHeader))
                         )
        if self.whitespace:
            self.createRules((r'(..*?)(\s+)$', (None, badWhitespace)))

# ===========================================================================
#
#   Library:  PyCTK
#   Filename: test_popupwidget.py
#
#   Copyright (c) 2015 Lamond Lab
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0.txt
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# ===========================================================================

from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *

from PyCTK.Widgets import ctkPopupWidget as PopupWidget

class Widget(QWidget):
    def __init__(self, parent=None, **kwargs):
        QWidget.__init__(self, parent, **kwargs)

        l=QVBoxLayout(self)
        spinBox=QSpinBox(self, maximumWidth=100)
        l.addWidget(spinBox)

        popup=PopupWidget(spinBox)
        pl=QHBoxLayout(popup)
        popupSlider=QSlider(Qt.Vertical, popup)

        pl.addWidget(popupSlider)

        popup.setAlignment(Qt.AlignRight|Qt.AlignTop)
        popup.setHorizontalDirection(Qt.LeftToRight)
        popup.setVerticalDirection(PopupWidget.TopToBottom)
        #popup.setAnimationEffect(PopupWidget.WindowOpacityFadeEffect)
        popup.setAnimationEffect(PopupWidget.ScrollEffect)
        popup.setEasingCurve(QEasingCurve.OutBack)
        popup.setOrientation(Qt.Horizontal)
        #popup.setEffectDuration(500)
        popup.setEffectDuration(255)
        popup.setAutoShow(True)
        popup.setAutoHide(True)
        popup.setEffectAlpha(0.25)

        popup.setAttribute(Qt.WA_TranslucentBackground, True)
        
        p=popup.palette()
        p.setColor(QPalette.Background, Qt.black)
        popup.setPalette(p)

        self.setFocus()

        spinBox.valueChanged.connect(popupSlider.setValue)
        popupSlider.valueChanged.connect(spinBox.setValue)

if __name__=="__main__":
    from sys import argv, exit
    a=QApplication(argv)
    w=Widget()
    w.show()
    w.raise_()

    exit(a.exec_())

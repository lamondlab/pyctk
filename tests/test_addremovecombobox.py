# ===========================================================================
#
#   Library:  PyCTK
#   Filename: test_addremovecombobox.py
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

from PyCTK.Widgets import ctkAddRemoveComboBox as ComboBox

class Widget(QWidget):
    def __init__(self, parent=None, **kwargs):
        QWidget.__init__(self, parent, **kwargs)

        l=QVBoxLayout(self)
        self._combo=ComboBox(self)
        l.addWidget(self._combo)

if __name__=="__main__":
    from sys import argv, exit
    a=QApplication(argv)
    w=Widget()
    w.show()
    w.raise_()

    exit(a.exec_())

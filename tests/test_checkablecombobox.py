# ===========================================================================
#
#   Library:  PyCTK
#   Filename: test_checkablecombobox.py
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

from PyCTK.Widgets import ctkCheckableComboBox

class Widget(QWidget):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent, **kwargs)

        l=QVBoxLayout(self)
        self._checkBox=ctkCheckableComboBox(self)
        for i in range(3):
            self._checkBox.addItem("Item {}".format(i), i)
        l.addWidget(self._checkBox)

if __name__=="__main__":
    from sys import argv, exit
    
    a=QApplication(argv)
    w=Widget()
    w.show()
    w.raise_()

    exit(a.exec_()) 
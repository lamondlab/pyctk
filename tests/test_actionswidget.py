# ===========================================================================
#
#   Library:  PyCTK
#   Filename: test_actionswidget.py
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

from PyCTK.Widgets import ctkActionsWidget

class Widget(QWidget):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent, **kwargs)

        self._actions=[
            QAction(
                "Action {}".format(i),
                self,
                shortcut="Ctrl+{}".format(i),
                toolTip="My action number {}".format(i)
            )
            for i in range(10)
        ]


        l=QVBoxLayout(self)
        self._actionsWidget=ctkActionsWidget(self)
        self._actionsWidget.addActions(self._actions)
        l.addWidget(self._actionsWidget)

if __name__=="__main__":
    from sys import argv, exit

    a=QApplication(argv)
    w=Widget()
    w.show()
    w.raise_()

    exit(a.exec_()) 
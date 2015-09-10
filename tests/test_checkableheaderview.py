# ===========================================================================
#
#   Library:  PyCTK
#   Filename: test_checkableheaderview.py
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

from PyCTK.Widgets import ctkCheckableHeaderView

class Model(QAbstractTableModel):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent, **kwargs)

        self._check=[[Qt.Checked]*5]*10

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid(): return None
        if role==Qt.DisplayRole:
            return "({},{})".format(index.row(), index.column())
        elif role==Qt.CheckStateRole: return self._check[index.row()][index.column()]
        return None

    def columnCount(self, parent=QModelIndex()): return 5

    def flags(self, index):
        if not index.isValid(): return None
        return super().flags(index)|Qt.ItemIsUserCheckable

    def rowCount(self, parent=QModelIndex()): return 10

    def setData(self, index, value, role):
        if not index.isValid() or role!=Qt.CheckStateRole: return False
        self._check[index.row()][index.column()]=value
        self.dataChanged.emit(index, index)
        return True

class Widget(QWidget):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent, **kwargs)

        self._model=Model(self)
        self._view=QTableView(self)
        self._view.setModel(self._model)

        self._horizontalHeader=ctkCheckableHeaderView(Qt.Horizontal, self._view)
        self._view.setHorizontalHeader(self._horizontalHeader)

        # self._verticalHeader=ctkCheckableHeaderView(Qt.Vertical, self._view)
        # self._view.setVerticalHeader(self._verticalHeader)

        QVBoxLayout(self).addWidget(self._view)

if __name__=="__main__":
    from sys import argv, exit
    
    a=QApplication(argv)
    w=Widget()
    w.show()
    w.raise_()

    exit(a.exec_()) 
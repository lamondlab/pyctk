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

if __name__=="__main__":
    from sys import argv, exit

    a=QApplication(argv)

    model=QStandardItemModel()
    row0=[QStandardItem("Not User Checkable")]
    model.appendRow(row0)

    row1=[QStandardItem("User Checkable")]
    row1[0].setCheckable(True)
    model.appendRow(row1)

    row2=[QStandardItem("User Checkable")]
    row2[0].setCheckable(True)
    model.appendRow(row2)

    table=QTableView()
    table.setModel(model)

    model.setHeaderData(0, Qt.Horizontal, Qt.Checked, Qt.CheckStateRole)

    previousHeaderView=table.horizontalHeader()
    oldClickable=previousHeaderView.sectionsClickable()

    headerView=ctkCheckableHeaderView(Qt.Horizontal, table)
    headerView.setSectionsClickable(oldClickable)
    headerView.setSectionsMovable(previousHeaderView.sectionsMovable())
    headerView.setHighlightSections(previousHeaderView.highlightSections())
    helper=headerView.checkableModelHelper()
    helper.setPropagateDepth(0)
    table.setHorizontalHeader(headerView)

    table.show()
    table.raise_()

    exit(a.exec_())
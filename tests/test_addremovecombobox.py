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

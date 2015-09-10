from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *

from PyCTK.Core import *
from PyCTK.Widgets import *

if __name__=="__main__":
    from sys import argv, exit

    a=QApplication(argv)

    topLevel=QWidget()
    topLevelLayout=QVBoxLayout(topLevel)

    buttons=ctkCollapsibleButton("Buttons")
    buttonsLayout=QFormLayout()
    buttonsLayout.setFieldGrowthPolicy(QFormLayout.AllNonFixedFieldsGrow)
    topLevelLayout.addWidget(buttons)

    checkablePushButton=ctkCheckablePushButton()
    checkablePushButton.setText("Checkable")
    buttonsLayout.addRow("ctkCheckablePushButton", checkablePushButton)

    colorPickerButton=ctkColorPickerButton()
    colorPickerButton.setColor(QColor("#9e1414"))
    buttonsLayout.addRow("ctkColorPickerButton", colorPickerButton)

    buttons.setLayout(buttonsLayout)

    sliders=ctkCollapsibleButton("Sliders")
    slidersLayout=QFormLayout()
    topLevelLayout.addWidget(sliders)

    rangeWidget=ctkRangeWidget()
    slidersLayout.addRow("ctkRangeWidget", rangeWidget)

    sliders.setLayout(slidersLayout)

    topLevel.setLayout(topLevelLayout)
    topLevel.show()
    topLevel.raise_()

    exit(a.exec_())
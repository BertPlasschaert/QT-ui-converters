from PySide2 import QtCore, QtGui, QtWidgets

import sys

#change this to the current path of the Project folder
sys.path.append('C\...\Project')

print(sys.path)

import UI.window as window


try:
    reload(window)
    import maya.OpenMayaUI as omui
    import shiboken2

except:
    pass


def getMayaWindow():
    # type: () -> shiboken2.wrapInstance()
    """
    Get the main Maya window as a QtGui.QMainWindow instance
    @return: QtGui.QMainWindow instance of the top level Maya windows
    """

    pointer = omui.MQtUtil.mainWindow()
    if pointer is not None:
        return shiboken2.wrapInstance(long(pointer), QtWidgets.QWidget)


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)

        self.ui = window.Ui_Form()
        self.ui.setupUi(self)


def runInMaya():
    mainWindow = MainWindow(getMayaWindow())
    mainWindow.show()


def runStandAlone():
    app = QtWidgets.QApplication(sys.argv)
    mainWindow = MainWindow()
    mainWindow.show()
    sys.exit(app.exec_())


runInMaya()
# runStandAlone()

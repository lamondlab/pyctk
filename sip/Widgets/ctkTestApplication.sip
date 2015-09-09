/*=========================================================================

  Library:  PyCTK
  Filename: ctkTestApplication.sip

  Copyright (c) 2015 Lamond Lab

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

=========================================================================*/

class ctkTestApplication : public QObject
{

%TypeHeaderCode
#include "ctkTestApplication.h"
%End
  
public:
  //ctkTestApplication(int _argc, char** _argv);
  ctkTestApplication(SIP_PYLIST argv /DocType="list-of-str"/) /PostHook=__pyQtQAppHook__/ [(int &argc, char **argv)];
%MethodCode
        // The Python interface is a list of argument strings that is modified.
        
        int argc;
        char **argv;
        
        // Convert the list.
        if ((argv = pyqt5_qtgui_from_argv_list(a0, argc)) == NULL)
            sipIsErr = 1;
        else
        {
            // Create it now the arguments are right.
            static int nargc;
            nargc = argc;
        
            Py_BEGIN_ALLOW_THREADS
            sipCpp = new sipctkTestApplication(nargc, argv);
            Py_END_ALLOW_THREADS
        
            // Now modify the original list.
            pyqt5_qtgui_update_argv_list(a0, argc, argv);
        }
%End  
  ~ctkTestApplication();

  virtual void runTest();
  static int exec(bool reportErrorsOnExit=false);

  static void messageHandler(QtMsgType type, const QMessageLogContext &context, const QString &msg);
  static void delay(int ms);
  static bool simulateEvent(QWidget* w, QEvent* e);
  static void keyUp(QWidget* w, Qt::Key key, Qt::KeyboardModifiers mod, int ms);
  static void keyDown(QWidget* w, Qt::Key key, Qt::KeyboardModifiers mod, int ms);
  static void keyClick(QWidget* w, Qt::Key key, Qt::KeyboardModifiers mod, int ms);
  static void mouseDown(QWidget* w, QPoint pos, Qt::MouseButton btn, 
                        Qt::KeyboardModifiers mod, int ms); 
  static void mouseUp(QWidget* w, QPoint pos, Qt::MouseButton btn, 
                      Qt::KeyboardModifiers mod, int ms); 
  static void mouseMove(QWidget* w, QPoint pos, Qt::MouseButton btn, 
                        Qt::KeyboardModifiers mod, int ms);
  static void mouseClick(QWidget* w, QPoint pos, Qt::MouseButton btn, 
                         Qt::KeyboardModifiers mod, int ms);
  static void mouseDClick(QWidget* w, QPoint pos, Qt::MouseButton btn, 
                          Qt::KeyboardModifiers mod, int ms);

public Q_SLOTS:
  void runTestSlot(); 
};

%ModuleHeaderCode
// Imports from QtCore.
typedef char **(*pyqt5_qtgui_from_argv_list_t)(PyObject *, int &);
extern pyqt5_qtgui_from_argv_list_t pyqt5_qtgui_from_argv_list;

typedef void (*pyqt5_qtgui_update_argv_list_t)(PyObject *, int, char **);
extern pyqt5_qtgui_update_argv_list_t pyqt5_qtgui_update_argv_list;
%End

%ModuleCode
// Imports from QtCore.
pyqt5_qtgui_from_argv_list_t pyqt5_qtgui_from_argv_list;
pyqt5_qtgui_update_argv_list_t pyqt5_qtgui_update_argv_list;
%End

// %InitialisationCode
// // Export our own helpers.
// sipExportSymbol("qtgui_wrap_ancestors", (void *)qtgui_wrap_ancestors);
// %End

%PostInitialisationCode
// Imports from QtCore.
pyqt5_qtgui_from_argv_list = (pyqt5_qtgui_from_argv_list_t)sipImportSymbol("pyqt5_from_argv_list");
pyqt5_qtgui_update_argv_list = (pyqt5_qtgui_update_argv_list_t)sipImportSymbol("pyqt5_update_argv_list");
%End
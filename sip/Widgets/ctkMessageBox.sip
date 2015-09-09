/*=========================================================================

  Library:  PyCTK
  Filename: ctkMessageBox.sip

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

class ctkMessageBox : public QMessageBox
{

%TypeHeaderCode
#include "ctkMessageBox.h"
%End

public:
  ctkMessageBox(QWidget* newParent /TransferThis/ = 0);
  ctkMessageBox(Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton,
                QWidget * parent /TransferThis/ = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint );
  virtual ~ctkMessageBox();

  bool dontShowAgain()const;
  void setDontShowAgainSettingsKey(const QString& key);
  QString dontShowAgainSettingsKey()const;
  void setDontShowAgainVisible(bool visible);
  bool isDontShowAgainVisible()const;
  static bool confirmExit(const QString& dontShowAgainKey = QString(),
                          QWidget* parentWidget = 0);
  virtual void setVisible(bool visible);
  virtual void done(int resultCode);

public Q_SLOTS:
  void setDontShowAgain(bool dontShow);

private:
  ctkMessageBox(const ctkMessageBox &);
  ctkMessageBox &operator=(const ctkMessageBox &);
};
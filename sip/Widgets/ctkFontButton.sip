/*=========================================================================

  Library:  PyCTK
  Filename: ctkFontButton.sip

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

class ctkFontButton : public QPushButton {

%TypeHeaderCode
#include "ctkFontButton.h"
%End

public:
  ctkFontButton(QWidget *parent /TransferThis/ = 0);
  ctkFontButton(const QFont &currentFont, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkFontButton();
  void setCurrentFont(const QFont &newFont);
  QFont currentFont() const;
  void setFontTextFormat(const QString &fontTextFormat);
  QString fontTextFormat() const;

public slots:
  void browseFont();

signals:
  void currentFontChanged(const QFont &);

private:
  ctkFontButton(const ctkFontButton &);
  ctkFontButton &operator=(const ctkFontButton &);

};


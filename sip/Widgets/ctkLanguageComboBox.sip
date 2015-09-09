/*=========================================================================

  Library:  PyCTK
  Filename: ctkLanguageComboBox.sip

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

class ctkLanguageComboBox : public QComboBox
{

%TypeHeaderCode
#include "ctkLanguageComboBox.h"
%End

public:
  ctkLanguageComboBox(QWidget *parent /TransferThis/ = 0);
  ctkLanguageComboBox(const QString& defaultLanguage, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkLanguageComboBox();

  QString defaultLanguage()const;
  void setDefaultLanguage(const QString& language);
  QString directory()const;
  void setDirectory(const QString& dir);
  QString currentLanguage()const;

public Q_SLOTS:
  void setCurrentLanguage(const QString& language);

protected slots:
  void onLanguageChanged(int index);

signals:
  void currentLanguageNameChanged(const QString&);

private:
  ctkLanguageComboBox(const ctkLanguageComboBox &);
  ctkLanguageComboBox &operator=(const ctkLanguageComboBox &);  
};
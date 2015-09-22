/*=========================================================================

  Library:  PyCTK
  Filename: ctkSettings.sip

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

class ctkSettings : public QSettings {

%TypeHeaderCode
#include "ctkSettings.h"
%End

public:
  ctkSettings(const QString &organization, const QString &application, QObject *parent /TransferThis/ = 0);
  ctkSettings(QSettings::Scope scope, const QString &organization, const QString &application = QString(), QObject *parent /TransferThis/ = 0);
  ctkSettings(QSettings::Format format, QSettings::Scope scope, const QString &organization, const QString &application = QString(), QObject *parent /TransferThis/ = 0);
  ctkSettings(const QString &fileName, QSettings::Format format, QObject *parent /TransferThis/ = 0);
  ctkSettings(QObject *parent /TransferThis/ = 0);
  void saveState(const QMainWindow &window, const QString &key);
  void saveState(const QDialog &dialog, const QString &key);
  void restoreState(const QString &key, QMainWindow &window);
  void restoreState(const QString &key, QDialog &dialog);
  void alertSettingsModified();

signals:
  void modified();


};


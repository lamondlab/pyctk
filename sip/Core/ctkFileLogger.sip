/*=========================================================================

  Library:  PyCTK
  Filename: ctkFileLogger.sip

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

class ctkFileLogger : public QObject
{

%TypeHeaderCode
#include "ctkFileLogger.h"
%End

public:
  explicit ctkFileLogger(QObject* parentObject /TransferThis/ = 0);
  virtual ~ctkFileLogger();

  bool enabled()const;
  void setEnabled(bool value);

  QString filePath()const;
  void setFilePath(const QString& filePath);

  int numberOfFilesToKeep()const;
  void setNumberOfFilesToKeep(int value);

public Q_SLOTS:
  void logMessage(const QString& msg);
};
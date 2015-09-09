/*=========================================================================

  Library:  PyCTK
  Filename: ctkLogger.sip

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

class ctkLogger : public QObject
{

%TypeHeaderCode
#include "ctkLogger.h"
%End

public:
  explicit ctkLogger(QString name, QObject* parent /TransferThis/ = 0);
  virtual ~ctkLogger ();

  void debug(const QString& s);
  void info(const QString& s);
  void trace(const QString& s);
  void warn(const QString& s);
  void error(const QString& s);
  void fatal(const QString& s);
};
/*=========================================================================

  Library:  PyCTK
  Filename: ctkErrorLogLevel.sip

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

class ctkErrorLogLevel : public QObject
{

%TypeHeaderCode
#include "ctkErrorLogLevel.h"
%End

public:
  ctkErrorLogLevel();

  enum LogLevel
    {
    None     = 0x0,
    Unknown  = 0x1,
    Status   = 0x2,
    Trace    = 0x4,
    Debug    = 0x8,
    Info     = 0x10,
    Warning  = 0x20,
    Error    = 0x40,
    Critical = 0x80,
    Fatal    = 0x100
  };
  typedef QFlags<ctkErrorLogLevel::LogLevel> LogLevels;

  QString operator ()(LogLevel logLevel);

  static QString logLevelAsString(ctkErrorLogLevel::LogLevel logLevel);
};
/*=========================================================================

  Library:  PyCTK
  Filename: ctkErrorLogTerminalOutput.sip

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

class ctkErrorLogTerminalOutput : public QObject
{

%TypeHeaderCode
#include "ctkErrorLogTerminalOutput.h"
%End

public:
  ctkErrorLogTerminalOutput();
  virtual ~ctkErrorLogTerminalOutput();

  enum TerminalOutput
    {
    None            = 0x0,
    StandardError   = 0x1,
    StandardOutput  = 0x2,
    All             = 0x3 // StandardError | StandardOutput
  };
  typedef QFlags<ctkErrorLogTerminalOutput::TerminalOutput> TerminalOutputs;

  bool enabled() const;
  void setEnabled(bool value);
  int fileDescriptor() const;
  void setFileDescriptor(int fd);
  void output(const QString& text);
};
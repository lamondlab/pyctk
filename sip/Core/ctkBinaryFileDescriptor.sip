/*=========================================================================

  Library:  PyCTK
  Filename: ctkBinaryFileDescriptor.sip

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

class ctkBinaryFileDescriptor
{

%TypeHeaderCode
#include "ctkBinaryFileDescriptor.h"
%End

public:
  ctkBinaryFileDescriptor();
  ctkBinaryFileDescriptor(const QString& _fileName);
  virtual ~ctkBinaryFileDescriptor();

  QString fileName()const;
  void setFileName(const QString& _fileName); 
  bool load();
  bool unload();
  bool isLoaded() const;
  void* resolve(const char * symbol);
};
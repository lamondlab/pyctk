/*=========================================================================

  Library:  PyCTK
  Filename: ctkTransferFunctionScene.sip

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

class ctkTransferFunctionScene: public QGraphicsScene
{

%TypeHeaderCode
#include "ctkTransferFunctionScene.h"
%End

public:
  ctkTransferFunctionScene(QObject* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionScene();

private:
  ctkTransferFunctionScene(const ctkTransferFunctionScene &);
  ctkTransferFunctionScene &operator=(const ctkTransferFunctionScene &); 
};
/*=========================================================================

  Library:  PyCTK
  Filename: ctkTransferFunctionNativeItem.sip

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

class ctkTransferFunctionNativeItem: public ctkTransferFunctionItem
{

%TypeHeaderCode
#include "ctkTransferFunctionNativeItem.h"
%End

public:
  ctkTransferFunctionNativeItem(QGraphicsItem* parent /TransferThis/ = 0);
  ctkTransferFunctionNativeItem(ctkTransferFunction* transferFunction, 
                                QGraphicsItem* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionNativeItem();

  virtual void paint(QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0);

private:
  ctkTransferFunctionNativeItem(const ctkTransferFunctionNativeItem &);
  ctkTransferFunctionNativeItem &operator=(const ctkTransferFunctionNativeItem &);  
};
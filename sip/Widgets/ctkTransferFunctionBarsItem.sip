/*=========================================================================

  Library:  PyCTK
  Filename: ctkTransferFunctionBarsItem.sip

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

%Include ctkTransferFunctionItem.sip

class ctkTransferFunctionBarsItem : public ctkTransferFunctionItem {

%TypeHeaderCode
#include "ctkTransferFunctionBarsItem.h"
%End

public:
  enum LogMode {
    NoLog=0,
    UseLog=1,
    AutoLog=2,
  };

  ctkTransferFunctionBarsItem(QGraphicsItem *parent /TransferThis/ = 0);
  ctkTransferFunctionBarsItem(ctkTransferFunction *transferFunc, QGraphicsItem *parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionBarsItem();
  void setBarWidth(qreal newBarWidth);
  qreal barWidth() const;
  void setBarColor(const QColor &newBarColor);
  QColor barColor() const;
  virtual void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0);

private:
  ctkTransferFunctionBarsItem(const ctkTransferFunctionBarsItem &);
  ctkTransferFunctionBarsItem &operator=(const ctkTransferFunctionBarsItem &);

};


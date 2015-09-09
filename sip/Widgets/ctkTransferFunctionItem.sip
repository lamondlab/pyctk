/*=========================================================================

  Library:  PyCTK
  Filename: ctkTransferFunctionItem.sip

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

class ctkTransferFunctionItem: public QGraphicsObject
{

%TypeHeaderCode
#include "ctkTransferFunctionItem.h"
%End

public:
  ctkTransferFunctionItem(QGraphicsItem* parent /TransferThis/ = 0);
  ctkTransferFunctionItem(ctkTransferFunction* transferFunction, 
                                  QGraphicsItem* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionItem();

  /*Q_INVOKABLE*/ void setTransferFunction(ctkTransferFunction* transferFunction);
  ctkTransferFunction* transferFunction()const;
  /*inline*/ void setRect(qreal x, qreal y, qreal width, qreal height);
  void setRect(const QRectF& rectangle);
  QRectF rect()const;
  virtual QRectF boundingRect()const;

protected:
  // QColor color(const QVariant& value)const;
  // /*inline*/ QColor color(const ctkPoint& point)const;
  virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value);

private:
  ctkTransferFunctionItem(const ctkTransferFunctionItem &);
  ctkTransferFunctionItem &operator=(const ctkTransferFunctionItem &); 
};
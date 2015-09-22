/*=========================================================================

  Library:  PyCTK
  Filename: ctkTransferFunctionControlPointsItem.sip

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

class ctkTransferFunctionControlPointsItem : public ctkTransferFunctionItem {

%TypeHeaderCode
#include "ctkTransferFunctionControlPointsItem.h"
%End

public:
  enum MOVE_TYPE {
    STOP_MOVE=0,
    SWITCH_MOVE=1,
    DRAW_MOVE=2,
    FUSION_MOVE=3,
  };

  explicit ctkTransferFunctionControlPointsItem(QGraphicsItem *parent /TransferThis/ = 0);
  ctkTransferFunctionControlPointsItem(ctkTransferFunction *transferFunction, QGraphicsItem *parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionControlPointsItem();
  virtual void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0);

protected:
  virtual void mousePressEvent(QGraphicsSceneMouseEvent *e);
  virtual void mouseMoveEvent(QGraphicsSceneMouseEvent *e);
  virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent *e);
  virtual void keyPressEvent(QKeyEvent *keyEvent);

private:
  ctkTransferFunctionControlPointsItem(const ctkTransferFunctionControlPointsItem &);
  ctkTransferFunctionControlPointsItem &operator=(const ctkTransferFunctionControlPointsItem &);

};


/*=========================================================================

  Library:  PyCTK
  Filename: ctkHistogram.sip

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

%Include ctkTransferFunction.sip
//%Include ctkControlPoint.sip

class ctkHistogram : public ctkTransferFunction {

%TypeHeaderCode
#include "ctkHistogram.h"
%End

public:
  ctkHistogram(QObject *parent /TransferThis/ = 0);
  virtual ~ctkHistogram();
  virtual bool isDiscrete() const;
  virtual bool isEditable() const;
  virtual int insertControlPoint(const ctkControlPoint &cp);
  virtual int insertControlPoint(qreal pos);
  virtual void setControlPointPos(int index, qreal pos);
  virtual void setControlPointValue(int index, const QVariant &value);
  virtual void build()=0;


};

struct ctkHistogramBar : public ctkControlPoint {

%TypeHeaderCode
#include "ctkHistogram.h"
%End

public:
  QColor Color;

};


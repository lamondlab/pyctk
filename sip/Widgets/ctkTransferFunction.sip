/*=========================================================================

  Library:  PyCTK
  Filename: ctkTransferFunction.sip

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


class ctkTransferFunction : public QObject {

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

public:
  ctkTransferFunction(QObject *parent /TransferThis/ = 0);
  virtual ~ctkTransferFunction();
  virtual ctkControlPoint *controlPoint(int index) const=0;
  //QVariant value(int index) const;
  virtual QVariant value(qreal pos) const=0;
  virtual int count() const=0;
  virtual bool isDiscrete() const=0;
  virtual bool isEditable() const=0;
  //void range(qreal rangeValues) const;
  virtual void range(qreal &minRange, qreal &maxRange) const=0;
  virtual QVariant minValue() const=0;
  virtual QVariant maxValue() const=0;
  //void valueRange(QVariant range) const;
  virtual int insertControlPoint(const ctkControlPoint &cp)=0;
  virtual int insertControlPoint(qreal pos)=0;
  virtual void removeControlPoint(qreal pos)=0;
  virtual void setControlPointPos(int index, qreal pos)=0;
  virtual void setControlPointValue(int index, const QVariant &value)=0;
  ctkTransferFunctionRepresentation *representation() const;

signals:
  void changed();

private:
  ctkTransferFunction(const ctkTransferFunction &);
  ctkTransferFunction &operator=(const ctkTransferFunction &);

};

struct ctkPoint  {

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

public:
  ctkPoint();
  ctkPoint(qreal x, const QVariant &v);


};

struct ctkControlPoint  {

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

public:
  virtual ~ctkControlPoint();
  const qreal & x() const;
  const QVariant & value() const;


};

struct ctkNonLinearControlPoint : public ctkControlPoint {

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

public:
  virtual ~ctkNonLinearControlPoint();


};

struct ctkBezierControlPoint : public ctkControlPoint {

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

public:
  virtual ~ctkBezierControlPoint();


};


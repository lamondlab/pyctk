/*=========================================================================

  Library:  PyCTK
  Filename: ctkTransferFunctionRepresentation.sip

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

class ctkTransferFunctionRepresentation: public QObject
{

%TypeHeaderCode
#include "ctkTransferFunctionRepresentation.h"
%End

public:
  ctkTransferFunctionRepresentation(QObject* parent /TransferThis/ = 0);
  ctkTransferFunctionRepresentation(ctkTransferFunction* transferFunction, QObject* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionRepresentation();

  void setTransferFunction(ctkTransferFunction* transferFunction);
  ctkTransferFunction* transferFunction()const;
  /*inline*/ qreal posX(const ctkControlPoint* cp)const;
  /*inline*/ qreal posY(const ctkControlPoint* cp)const;
  /*inline*/ QColor color(const ctkControlPoint* cp) const;
  /*inline*/ qreal posX(const ctkPoint& point)const;
  /*inline*/ qreal posY(const ctkPoint& point)const;
  /*inline*/ QColor color(const ctkPoint& point) const;
  qreal posX(const qreal& tfX)const;
  qreal posY(const QVariant& tfV)const;
  QColor color(const QVariant& tfV) const;
  QPointF mapPointToScene(const ctkControlPoint* cp)const;
  QPointF mapPointToScene(const ctkPoint& point)const;
  qreal mapXToScene(qreal posX)const;
  qreal mapYToScene(qreal posY)const;
  qreal mapXFromScene(qreal ScenePosX)const;
  qreal mapYFromScene(qreal ScenePosY)const;
  /*inline*/ QPointF mapPointFromScene(const QPointF& point)const;
  QList<ctkPoint> bezierParams(ctkControlPoint* start, ctkControlPoint* end) const;
  QList<ctkPoint> nonLinearPoints(ctkControlPoint* start, ctkControlPoint* end) const;
  const QPainterPath& curve()const;
  const QList<QPointF>& points()const;
  const QGradient& gradient()const;
  void computeCurve();
  void computeGradient();
  QColor verticalGradientColor()const;
  void setVerticalGradientColor(QColor verticalGradientColor);

protected Q_SLOTS:
  virtual void onTransferFunctionChanged();

protected:
  // qreal computeRangeXDiff(const QRectF& rect, qreal rangeX[2]);
  // qreal computeRangeXOffset(qreal rangeX[2]);
  // qreal computeRangeYDiff(const QRectF& rect, const QVariant rangeY[2]);
  // qreal computeRangeYOffset(const QVariant rangeY[2]);

private:
  ctkTransferFunctionRepresentation(const ctkTransferFunctionRepresentation &);
  ctkTransferFunctionRepresentation &operator=(const ctkTransferFunctionRepresentation &);
};
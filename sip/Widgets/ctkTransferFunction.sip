struct ctkPoint
{

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

  ctkPoint();
  ctkPoint(qreal x, const QVariant& v);
  qreal X;
  QVariant Value;
};

struct ctkControlPoint
{

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

  virtual ~ctkControlPoint();
  /*inline*/ const qreal& x() const;
  /*inline*/ const QVariant& value() const;
  ctkPoint P;
};

struct ctkBezierControlPoint : public ctkControlPoint
{

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

  virtual ~ctkBezierControlPoint();
  ctkPoint P1;
  ctkPoint P2;
};

struct ctkNonLinearControlPoint : public ctkControlPoint
{

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

  virtual ~ctkNonLinearControlPoint();
  QList<ctkPoint> SubPoints;
};

class ctkTransferFunction: public QObject
{

%TypeHeaderCode
#include "ctkTransferFunction.h"
%End

public:
  ctkTransferFunction(QObject* parent /TransferThis/);
  virtual ~ctkTransferFunction();

  virtual ctkControlPoint* controlPoint(int index) const = 0;
  // /*inline*/ QVariant value(int index) const;
  virtual QVariant value(qreal pos) const = 0;
  virtual int count() const = 0;
  virtual bool isDiscrete() const = 0;
  virtual bool isEditable() const = 0;
  // /*inline*/ void range(qreal rangeValues[2]) const;
  virtual void range(qreal& minRange, qreal& maxRange) const = 0;
  virtual QVariant minValue() const = 0;
  virtual QVariant maxValue() const = 0;
  // /*inline*/ void valueRange(QVariant range[2]) const;
  virtual int insertControlPoint(const ctkControlPoint& cp) = 0;
  virtual int insertControlPoint(qreal pos) = 0;
  virtual void removeControlPoint( qreal pos ) = 0;
  virtual void setControlPointPos(int index, qreal pos) = 0;
  virtual void setControlPointValue(int index, const QVariant& value) = 0;
  ctkTransferFunctionRepresentation* representation() const;

Q_SIGNALS:
  void changed();

private:
  ctkTransferFunction(const ctkTransferFunction &);
  ctkTransferFunction &operator=(const ctkTransferFunction &); 
};
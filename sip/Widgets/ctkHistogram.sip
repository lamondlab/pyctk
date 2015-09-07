struct ctkHistogramBar : public ctkControlPoint
{

%TypeHeaderCode
#include "ctkHistogram.h"
%End

  QColor Color;
};

class ctkHistogram: public ctkTransferFunction
{

%TypeHeaderCode
#include "ctkHistogram.h"
%End

public:
  ctkHistogram(QObject* parent /TransferThis/ = 0);
  virtual ~ctkHistogram();
  
  virtual bool isDiscrete()const;
  virtual bool isEditable()const;
  virtual int insertControlPoint(const ctkControlPoint& cp);
  virtual int insertControlPoint(qreal pos);
  virtual void setControlPointPos(int index, qreal pos);
  virtual void setControlPointValue(int index, const QVariant& value);
  virtual void build()=0; 
};
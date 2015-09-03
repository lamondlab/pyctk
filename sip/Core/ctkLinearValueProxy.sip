class ctkLinearValueProxy : public ctkValueProxy
{

%TypeHeaderCode
#include "ctkLinearValueProxy.h"
%End

public:
  explicit ctkLinearValueProxy(QObject* parent /TransferThis/ = 0);
  virtual ~ctkLinearValueProxy();

  virtual double proxyValueFromValue(double value) const;

  virtual double valueFromProxyValue(double proxyValue) const;

  virtual double coefficient() const;
  virtual double offset() const;

public Q_SLOTS:
  virtual void setCoefficient(double newCoeff);
  virtual void setOffset(double newOffset);
};
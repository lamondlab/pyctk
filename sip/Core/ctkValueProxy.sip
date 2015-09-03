class ctkValueProxy : public QObject
{

%TypeHeaderCode
#include "ctkValueProxy.h"
%End

public:
  explicit ctkValueProxy(QObject* parent /TransferThis/ = 0);
  virtual ~ctkValueProxy();

  virtual double proxyValueFromValue(double value) const = 0;
  virtual double valueFromProxyValue(double proxyValue) const = 0;

  double value() const;
  virtual double proxyValue() const;

public Q_SLOTS:
  void setValue(double newValue);
  void setProxyValue(double newProxyValue);

Q_SIGNALS:
  void valueChanged(double);
  void proxyValueChanged(double);

  void proxyAboutToBeModified();
  void proxyModified();

protected:
  void updateProxyValue();
  void updateValue();
};
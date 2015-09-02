class ctkBooleanMapper : public QObject
{

%TypeHeaderCode
#include "ctkBooleanMapper.h"
%End

public:
  ctkBooleanMapper(QObject* targetObject, const QByteArray& propertyName, const char* signal);
  virtual ~ctkBooleanMapper();

  QByteArray propertyName()const;
  QObject* targetObject()const;
  bool value()const;
  bool complement()const;
  int valueAsInt()const;
  QString valueAsString()const;
  QVariant trueValue()const;
  QVariant falseValue()const;
  void setTrueValue(const QVariant& value);
  void setFalseValue(const QVariant& value);

public Q_SLOTS:
  void setValue(bool value);
  void setComplement(bool complement);
  void setValueAsInt(int value);
  void setValueAsString(const QString& value);

  void toggle();

Q_SIGNALS:
  void valueChanged(bool value);
  void complementChanged(bool complement);
  void valueAsIntChanged(int value);
  void valueAsStringChanged(const QString& value);

protected Q_SLOTS:
  void emitValueChanged();
  void emitValueAsChanged();
};
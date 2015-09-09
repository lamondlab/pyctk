/*=========================================================================

  Library:  PyCTK
  Filename: ctkBooleanMapper.sip

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
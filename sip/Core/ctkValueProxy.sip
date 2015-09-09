/*=========================================================================

  Library:  PyCTK
  Filename: ctkValueProxy.sip

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
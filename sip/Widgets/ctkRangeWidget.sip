/*=========================================================================

  Library:  PyCTK
  Filename: ctkRangeWidget.sip

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

class ctkRangeWidget : public QWidget {

%TypeHeaderCode
#include "ctkRangeWidget.h"
%End

public:
  explicit ctkRangeWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkRangeWidget();
  virtual double minimum() const;
  virtual void setMinimum(double minimum);
  virtual double maximum() const;
  virtual void setMaximum(double maximum);
  virtual void setRange(double min, double max);
  //virtual void range(double minimumAndMaximum) const;
  virtual double minimumValue() const;
  virtual double maximumValue() const;
  virtual void values(double &minValue, double &maxValue) const;
  virtual double singleStep() const;
  virtual void setSingleStep(double step);
  virtual int decimals() const;
  virtual QString prefix() const;
  virtual void setPrefix(const QString &prefix);
  virtual QString suffix() const;
  virtual void setSuffix(const QString &suffix);
  virtual double tickInterval() const;
  virtual void setTickInterval(double ti);
  virtual void setSpinBoxAlignment(Qt::Alignment alignment);
  virtual Qt::Alignment spinBoxAlignment() const;
  virtual void setSpinBoxTextAlignment(Qt::Alignment alignment);
  virtual Qt::Alignment spinBoxTextAlignment() const;
  virtual void setTracking(bool enable);
  virtual bool hasTracking() const;
  virtual bool isAutoSpinBoxWidth() const;
  virtual void setAutoSpinBoxWidth(bool autoWidth);
  virtual bool symmetricMoves() const;
  virtual void setSymmetricMoves(bool symmetry);
  virtual ctkDoubleRangeSlider *slider() const;
  virtual ctkDoubleSpinBox *minimumSpinBox() const;
  virtual ctkDoubleSpinBox *maximumSpinBox() const;
  virtual void setValueProxy(ctkValueProxy *proxy);
  virtual ctkValueProxy *valueProxy() const;

public slots:
  virtual void reset();
  virtual void setMinimumValue(double value);
  virtual void setMaximumValue(double value);
  virtual void setValues(double minValue, double maxValue);
  virtual void setDecimals(int decimals);

protected:
  virtual bool eventFilter(QObject *obj, QEvent *event);
  virtual void setSlider(ctkDoubleRangeSlider *slider);

protected slots:
  virtual void startChanging();
  virtual void stopChanging();
  virtual void changeValues(double newMinValue, double newMaxValue);
  virtual void changeMinimumValue(double value);
  virtual void changeMaximumValue(double value);
  virtual void setSliderValues();
  virtual void setMinimumToMaximumSpinBox(double minimum);
  virtual void setMaximumToMinimumSpinBox(double maximum);
  virtual void onSliderRangeChanged(double min, double max);
  virtual void onValueProxyAboutToBeModified();
  virtual void onValueProxyModified();

signals:
  void minimumValueChanged(double value);
  void minimumValueIsChanging(double value);
  void maximumValueChanged(double value);
  void maximumValueIsChanging(double value);
  void valuesChanged(double minValue, double maxValue);
  void rangeChanged(double min, double max);

private:
  ctkRangeWidget(const ctkRangeWidget &);
  ctkRangeWidget &operator=(const ctkRangeWidget &);

};


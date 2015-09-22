/*=========================================================================

  Library:  PyCTK
  Filename: ctkDoubleRangeSlider.sip

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

class ctkDoubleRangeSlider : public QWidget {

%TypeHeaderCode
#include "ctkDoubleRangeSlider.h"
%End

public:
  ctkDoubleRangeSlider(Qt::Orientation o, QWidget *par = 0);
  ctkDoubleRangeSlider(QWidget *par = 0);
  virtual ~ctkDoubleRangeSlider();
  void setSingleStep(double ss);
  double singleStep() const;
  bool isValidStep(double step) const;
  void setTickInterval(double ti);
  double tickInterval() const;
  void setTickPosition(QSlider::TickPosition position);
  QSlider::TickPosition tickPosition() const;
  double minimum() const;
  void setMinimum(double min);
  double maximum() const;
  void setMaximum(double max);
  void setRange(double min, double max);
  double minimumValue() const;
  double maximumValue() const;
  double minimumPosition() const;
  void setMinimumPosition(double minPos);
  double maximumPosition() const;
  void setMaximumPosition(double maxPos);
  void setPositions(double minPos, double maxPos);
  void setTracking(bool enable);
  bool hasTracking() const;
  void triggerAction(QAbstractSlider::SliderAction action);
  Qt::Orientation orientation() const;
  void setOrientation(Qt::Orientation orientation);
  bool symmetricMoves() const;
  void setSymmetricMoves(bool symmetry);
  void setValueProxy(ctkValueProxy *proxy);
  ctkValueProxy *valueProxy() const;

public slots:
  void setMinimumValue(double minVal);
  void setMaximumValue(double maxVal);
  void setValues(double minVal, double maxVal);

protected:
  ctkRangeSlider *slider() const;
  void setSlider(ctkRangeSlider *slider);

protected slots:
  void onValuesChanged(int min, int max);
  void onMinPosChanged(int value);
  void onMaxPosChanged(int value);
  void onPositionsChanged(int min, int max);
  void onRangeChanged(int min, int max);
  void onValueProxyAboutToBeModified();
  void onValueProxyModified();

signals:
  void minimumValueChanged(double minVal);
  void maximumValueChanged(double maxVal);
  void valuesChanged(double minVal, double maxVal);
  void minimumPositionChanged(double minPos);
  void maximumPositionChanged(double maxPos);
  void positionsChanged(double minPos, double maxPos);
  void sliderPressed();
  void sliderReleased();
  void rangeChanged(double min, double max);

private:
  ctkDoubleRangeSlider(const ctkDoubleRangeSlider &);
  ctkDoubleRangeSlider &operator=(const ctkDoubleRangeSlider &);

};


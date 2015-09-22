/*=========================================================================

  Library:  PyCTK
  Filename: ctkDoubleSlider.sip

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

class ctkDoubleSlider : public QWidget {

%TypeHeaderCode
#include "ctkDoubleSlider.h"
%End

public:
  explicit ctkDoubleSlider(QWidget *parent /TransferThis/ = 0);
  explicit ctkDoubleSlider(Qt::Orientation orient, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkDoubleSlider();
  void setMinimum(double min);
  double minimum() const;
  void setMaximum(double max);
  double maximum() const;
  void setRange(double min, double max);
  double value() const;
  void setSingleStep(double step);
  double singleStep() const;
  bool isValidStep(double step) const;
  void setPageStep(double step);
  double pageStep() const;
  void setTickInterval(double ti);
  double tickInterval() const;
  void setTickPosition(QSlider::TickPosition position);
  QSlider::TickPosition tickPosition() const;
  double sliderPosition() const;
  void setSliderPosition(double );
  void setTracking(bool enable);
  bool hasTracking() const;
  void triggerAction(QAbstractSlider::SliderAction action);
  Qt::Orientation orientation() const;
  void setInvertedAppearance(bool invertedAppearance);
  bool invertedAppearance() const;
  void setInvertedControls(bool invertedControls);
  bool invertedControls() const;
  QString handleToolTip() const;
  void setHandleToolTip(const QString &toolTip);
  virtual bool eventFilter(QObject *, QEvent *);
  QSlider *slider() const;
  void setValueProxy(ctkValueProxy *proxy);
  ctkValueProxy *valueProxy() const;

public slots:
  void setValue(double value);
  void setOrientation(Qt::Orientation orientation);

protected slots:
  void onValueChanged(int value);
  void onSliderMoved(int position);
  void onRangeChanged(int min, int max);
  void onValueProxyAboutToBeModified();
  void onValueProxyModified();

signals:
  void valueChanged(double value);
  void sliderMoved(double position);
  void sliderPressed();
  void sliderReleased();
  void rangeChanged(double min, double max);

private:
  ctkDoubleSlider(const ctkDoubleSlider &);
  ctkDoubleSlider &operator=(const ctkDoubleSlider &);

};


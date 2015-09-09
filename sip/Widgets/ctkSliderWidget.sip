/*=========================================================================

  Library:  PyCTK
  Filename: ctkSliderWidget.sip

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

class ctkSliderWidget : public QWidget
{

%TypeHeaderCode
#include "ctkSliderWidget.h"
%End

public:
  enum SynchronizeSibling
    {
    NoSynchronize = 0x000,
    SynchronizeWidth = 0x001,
    SynchronizeDecimals = 0x002,
  };
  //Q_DECLARE_FLAGS(SynchronizeSiblings, SynchronizeSibling)
  typedef QFlags<ctkSliderWidget::SynchronizeSibling> SynchronizeSiblings;

  explicit ctkSliderWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkSliderWidget();

  virtual double minimum()const;
  virtual void setMinimum(double minimum);
  virtual double maximum()const;
  virtual void setMaximum(double maximum);
  virtual void setRange(double min, double max);
  virtual double value()const;
  virtual double singleStep()const;
  virtual void setSingleStep(double step);
  virtual double pageStep()const;
  virtual void setPageStep(double step);
  virtual int decimals()const;
  virtual QString prefix()const;
  virtual void setPrefix(const QString& prefix);
  virtual QString suffix()const;
  virtual void setSuffix(const QString& suffix);
  virtual double tickInterval()const;
  virtual void setTickInterval(double tick);
  virtual void setTickPosition(QSlider::TickPosition position);
  virtual QSlider::TickPosition tickPosition()const;
  virtual void setSpinBoxAlignment(Qt::Alignment alignment);
  virtual Qt::Alignment spinBoxAlignment()const;
  virtual void setTracking(bool enable);
  virtual bool hasTracking()const;
  virtual ctkSliderWidget::SynchronizeSiblings synchronizeSiblings() const;
  virtual void setSynchronizeSiblings(ctkSliderWidget::SynchronizeSiblings options);
  virtual void setInvertedAppearance(bool invertedAppearance);
  virtual bool invertedAppearance()const;
  virtual void setInvertedControls(bool invertedControls);
  virtual bool invertedControls()const;
  virtual bool isSpinBoxVisible()const;
  virtual bool hasPopupSlider()const;
  virtual void setPopupSlider(bool popup);
  virtual ctkPopupWidget* popup()const;
  virtual ctkDoubleSpinBox* spinBox();
  virtual ctkDoubleSlider* slider();
  virtual void setValueProxy(ctkValueProxy* proxy);
  virtual ctkValueProxy* valueProxy() const;

public Q_SLOTS:
  virtual void reset();
  virtual void setValue(double value);
  virtual void setSpinBoxVisible(bool);
  virtual void setDecimals(int decimals);

Q_SIGNALS:
  void valueChanged(double value);
  void valueIsChanging(double value);
  void decimalsChanged(int decimals);

protected Q_SLOTS:
  virtual void startChanging();
  virtual void stopChanging();
  virtual void setSpinBoxValue(double sliderValue);
  virtual void setSliderValue(double spinBoxValue);
  virtual void onValueProxyAboutToBeModified();
  virtual void onValueProxyModified();

protected:
  virtual bool eventFilter(QObject *obj, QEvent *event);
  
private:
  ctkSliderWidget(const ctkSliderWidget &);
  ctkSliderWidget &operator=(const ctkSliderWidget &); 

};
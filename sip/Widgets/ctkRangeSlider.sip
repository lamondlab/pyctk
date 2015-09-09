/*=========================================================================

  Library:  PyCTK
  Filename: ctkRangeSlider.sip

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

class ctkRangeSlider : public QSlider
{

%TypeHeaderCode
#include "ctkRangeSlider.h"
%End

public:
  explicit ctkRangeSlider(Qt::Orientation o, QWidget* par /TransferThis/ = 0 );
  explicit ctkRangeSlider(QWidget* par /TransferThis/ = 0 );
  virtual ~ctkRangeSlider();

  int minimumValue() const;
  int maximumValue() const;
  int minimumPosition() const;
  void setMinimumPosition(int min);
  int maximumPosition() const;
  void setMaximumPosition(int max);
  void setPositions(int min, int max);
  bool symmetricMoves()const; 
  void setSymmetricMoves(bool symmetry);
  QString handleToolTip()const;
  void setHandleToolTip(const QString& toolTip);
  bool isMinimumSliderDown()const;
  bool isMaximumSliderDown()const;

Q_SIGNALS:
  void minimumValueChanged(int min);
  void maximumValueChanged(int max);
  void valuesChanged(int min, int max);
  void minimumPositionChanged(int min);
  void maximumPositionChanged(int max);
  void positionsChanged(int min, int max);

public Q_SLOTS:
  void setMinimumValue(int min);
  void setMaximumValue(int max);
  void setValues(int min, int max);

protected Q_SLOTS:
  void onRangeChanged(int minimum, int maximum);

protected:
  //ctkRangeSlider(ctkRangeSliderPrivate* impl, Qt::Orientation o, QWidget* par /TransferThis/ = 0 );
  //ctkRangeSlider(ctkRangeSliderPrivate* impl, QWidget* par /TransferThis/ = 0 );
  virtual void mousePressEvent(QMouseEvent* ev);
  virtual void mouseMoveEvent(QMouseEvent* ev);
  virtual void mouseReleaseEvent(QMouseEvent* ev);
  virtual void paintEvent(QPaintEvent* ev);
  virtual void initMinimumSliderStyleOption(QStyleOptionSlider* option) const;
  virtual void initMaximumSliderStyleOption(QStyleOptionSlider* option) const;
  virtual bool event(QEvent* event);

private:
  ctkRangeSlider(const ctkRangeSlider &);
  ctkRangeSlider &operator=(const ctkRangeSlider &);  
};
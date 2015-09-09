/*=========================================================================

  Library:  PyCTK
  Filename: ctkAxesWidget.sip

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

class ctkAxesWidget : public QWidget
{
  
%TypeHeaderCode
#include "ctkAxesWidget.h"
%End

public : 

  enum Axis
    {
    None=0,
    Right,
    Left,
    Superior,
    Inferior,
    Anterior,
    Posterior,
    };
  
  ctkAxesWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkAxesWidget();

  Axis currentAxis() const;
  bool autoReset() const;

Q_SIGNALS:
  void currentAxisChanged(ctkAxesWidget::Axis axis);

public slots :
  void setCurrentAxis(Axis axis);
  void setCurrentAxisToNone();
  void setAutoReset(bool reset);
  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;
  virtual bool hasHeightForWidth()const;
  virtual int heightForWidth(int width)const;

protected: 
  void paintEvent(QPaintEvent *);
  void mousePressEvent(QMouseEvent *mouseEvent);
  void mouseMoveEvent(QMouseEvent *mouseEvent);
  void mouseReleaseEvent(QMouseEvent *mouseEvent);

private :
  ctkAxesWidget(const ctkAxesWidget &);
  ctkAxesWidget &operator=(const ctkAxesWidget &);
};
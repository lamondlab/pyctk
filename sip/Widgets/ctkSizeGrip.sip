/*=========================================================================

  Library:  PyCTK
  Filename: ctkSizeGrip.sip

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

class ctkSizeGrip : public QWidget {

%TypeHeaderCode
#include "ctkSizeGrip.h"
%End

public:
  explicit ctkSizeGrip(QWidget *parent /TransferThis/);
  explicit ctkSizeGrip(QWidget *widgetToResize, QWidget *parent /TransferThis/);
  virtual ~ctkSizeGrip();
  void setOrientations(Qt::Orientations orientations);
  Qt::Orientations orientations() const;
  QWidget *widgetToResize() const;
  void setWidgetToResize(QWidget *target);
  QSize widgetSizeHint() const;
  void setResizeWidget(bool resize);
  bool resizeWidget() const;
  virtual QSize sizeHint() const;

public slots:
  void setWidgetSizeHint(QSize sizeHint);

protected:
  virtual void paintEvent(QPaintEvent *paintEvent);
  virtual bool event(QEvent *event);
  virtual void mousePressEvent(QMouseEvent *mouseEvent);
  virtual void mouseMoveEvent(QMouseEvent *mouseEvent);
  virtual void mouseReleaseEvent(QMouseEvent *mouseEvent);
  virtual void mouseDoubleClickEvent(QMouseEvent *mouseEvent);

signals:
  void widgetSizeHintChanged(QSize sizeHint);

private:
  ctkSizeGrip(const ctkSizeGrip &);
  ctkSizeGrip &operator=(const ctkSizeGrip &);

};


/*=========================================================================

  Library:  PyCTK
  Filename: ctkCollapsibleButton.sip

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

class ctkCollapsibleButton : public QAbstractButton {

%TypeHeaderCode
#include "ctkCollapsibleButton.h"
%End

public:
  ctkCollapsibleButton(QWidget *parent /TransferThis/ = 0);
  ctkCollapsibleButton(const QString &text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCollapsibleButton();
  void setCollapsed(bool );
  bool collapsed() const;
  void setCollapsedHeight(int heightInPixels);
  int collapsedHeight() const;
  void setFlat(bool flat);
  bool isFlat() const;
  QFrame::Shape contentsFrameShape() const;
  void setContentsFrameShape(QFrame:: Shape);
  QFrame::Shadow contentsFrameShadow() const;
  void setContentsFrameShadow(QFrame:: Shadow);
  int contentsLineWidth() const;
  void setContentsLineWidth(int );
  int contentsMidLineWidth() const;
  void setContentsMidLineWidth(int );
  void setButtonTextAlignment(Qt::Alignment textAlignment);
  Qt::Alignment buttonTextAlignment() const;
  void setIndicatorAlignment(Qt::Alignment indicatorAlignment);
  Qt::Alignment indicatorAlignment() const;
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;
  virtual bool event(QEvent *event);
  virtual bool eventFilter(QObject *child, QEvent *e);
  virtual void setVisible(bool );

protected:
  virtual void paintEvent(QPaintEvent *);
  virtual void childEvent(QChildEvent *c);
  virtual bool hitButton(const QPoint &pos) const;
  virtual QSize buttonSizeHint() const;
  virtual void initStyleOption(QStyleOptionButton *option) const;

protected slots:
  virtual void collapse(bool c);
  virtual void onToggled(bool clicked = false);

signals:
  void contentsCollapsed(bool );

private:
  ctkCollapsibleButton(const ctkCollapsibleButton &);
  ctkCollapsibleButton &operator=(const ctkCollapsibleButton &);

};


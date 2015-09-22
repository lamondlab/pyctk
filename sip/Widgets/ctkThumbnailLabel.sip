/*=========================================================================

  Library:  PyCTK
  Filename: ctkThumbnailLabel.sip

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

class ctkThumbnailLabel : public QWidget {

%TypeHeaderCode
#include "ctkThumbnailLabel.h"
%End

public:
  explicit ctkThumbnailLabel(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkThumbnailLabel();
  void setText(const QString &text);
  QString text() const;
  void setTextPosition(const Qt::Alignment &alignment);
  Qt::Alignment textPosition() const;
  void setPixmap(const QPixmap &pixmap);
  const QPixmap *pixmap() const;
  Qt::TransformationMode transformationMode() const;
  void setTransformationMode(Qt::TransformationMode mode);
  void setSelected(bool selected);
  bool isSelected() const;
  void setSelectedColor(const QColor &color);
  QColor selectedColor() const;
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;
  virtual int heightForWidth(int width) const;

protected:
  virtual void paintEvent(QPaintEvent *event);
  virtual void mousePressEvent(QMouseEvent *event);
  virtual void mouseDoubleClickEvent(QMouseEvent *event);
  virtual void resizeEvent(QResizeEvent *event);

signals:
  void selected(const ctkThumbnailLabel &widget);
  void doubleClicked(const ctkThumbnailLabel &widget);

private:
  ctkThumbnailLabel(const ctkThumbnailLabel &);
  ctkThumbnailLabel &operator=(const ctkThumbnailLabel &);

};


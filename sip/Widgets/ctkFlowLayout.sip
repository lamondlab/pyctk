/*=========================================================================

  Library:  PyCTK
  Filename: ctkFlowLayout.sip

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

class ctkFlowLayout : public QLayout {

%TypeHeaderCode
#include "ctkFlowLayout.h"
%End

public:
  explicit ctkFlowLayout(Qt::Orientation orientation, QWidget *parent /TransferThis/ = 0);
  explicit ctkFlowLayout(QWidget *parent /TransferThis/);
  explicit ctkFlowLayout();
  virtual ~ctkFlowLayout();
  void setOrientation(Qt::Orientation orientation);
  Qt::Orientation orientation() const;
  void setPreferredExpandingDirections(Qt::Orientations directions);
  Qt::Orientations preferredExpandingDirections() const;
  int horizontalSpacing() const;
  void setHorizontalSpacing(int );
  int verticalSpacing() const;
  void setVerticalSpacing(int );
  bool alignItems() const;
  void setAlignItems(bool );
  static ctkFlowLayout *replaceLayout(QWidget *widget);
  virtual bool hasWidthForHeight() const;
  virtual int widthForHeight(int ) const;
  virtual void addItem(QLayoutItem *item);
  virtual Qt::Orientations expandingDirections() const;
  virtual bool hasHeightForWidth() const;
  virtual int heightForWidth(int ) const;
  virtual int count() const;
  virtual QLayoutItem *itemAt(int index) const;
  virtual QSize minimumSize() const;
  virtual void setGeometry(const QRect &rect);
  virtual QSize sizeHint() const;
  virtual QLayoutItem *takeAt(int index);

private:
  ctkFlowLayout(const ctkFlowLayout &);
  ctkFlowLayout &operator=(const ctkFlowLayout &);

};


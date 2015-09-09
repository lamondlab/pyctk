/*=========================================================================

  Library:  PyCTK
  Filename: ctkMenuButton.sip

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

class ctkMenuButton : public QPushButton
{
  
%TypeHeaderCode
#include "ctkMenuButton.h"
%End

public:
  ctkMenuButton(QWidget *parent /TransferThis/ = 0);
  ctkMenuButton(const QString& text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkMenuButton();

  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;

protected:
  virtual void paintEvent(QPaintEvent*);
  virtual void mousePressEvent(QMouseEvent* event);
  virtual bool hitButton(const QPoint & pos) const;
  virtual void initStyleOption ( QStyleOptionButton * option ) const;

private:
  ctkMenuButton(const ctkMenuButton &);
  ctkMenuButton &operator=(const ctkMenuButton &); 
};
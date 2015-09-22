/*=========================================================================

  Library:  PyCTK
  Filename: ctkSearchBox.sip

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

class ctkSearchBox : public QLineEdit {

%TypeHeaderCode
#include "ctkSearchBox.h"
%End

public:
  ctkSearchBox(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkSearchBox();
  void setShowSearchIcon(bool show);
  bool showSearchIcon() const;
  void setAlwaysShowClearIcon(bool show);
  bool alwaysShowClearIcon() const;
  void setSearchIcon(const QIcon &icon);
  QIcon searchIcon() const;
  void setClearIcon(const QIcon &icon);
  QIcon clearIcon() const;

protected:
  virtual void paintEvent(QPaintEvent *);
  virtual void mousePressEvent(QMouseEvent *event);
  virtual void mouseMoveEvent(QMouseEvent *event);
  virtual void resizeEvent(QResizeEvent *event);

protected slots:
  void updateClearButtonState();

private:
  ctkSearchBox(const ctkSearchBox &);
  ctkSearchBox &operator=(const ctkSearchBox &);

};


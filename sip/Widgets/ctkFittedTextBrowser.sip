/*=========================================================================

  Library:  PyCTK
  Filename: ctkFittedTextBrowser.sip

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

class ctkFittedTextBrowser : public QTextBrowser
{

%TypeHeaderCode
#include "ctkFittedTextBrowser.h"
%End

public:
  ctkFittedTextBrowser(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkFittedTextBrowser();

  virtual QSize sizeHint() const;
  virtual QSize minimumSizeHint() const;
  virtual int heightForWidth(int width) const;

protected Q_SLOTS:
  void heightForWidthMayHaveChanged();

protected:
  virtual void resizeEvent(QResizeEvent* e);
};
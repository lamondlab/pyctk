/*=========================================================================

  Library:  PyCTK
  Filename: ctkScreenshotDialog.sip

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

class ctkScreenshotDialog : public QDialog
{

%TypeHeaderCode
#include "ctkScreenshotDialog.h"
%End

public:
  ctkScreenshotDialog(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkScreenshotDialog();

  void setWidgetToGrab(QWidget* newWidgetToGrab);
  QWidget* widgetToGrab()const;
  void setBaseFileName(const QString& newImageName);
  QString baseFileName() const;
  void setDirectory(const QString& path);
  QString directory()const;
  void setDelay(int seconds);
  int delay()const;
  void enforceResolution(int width = 300, int height = 300);
  //void enforceResolution(QSize size = QSize(300,300));
  QSize widgetSize();
  void enableTransparency(bool enable = true);

public Q_SLOTS:
  void instantScreenshot();
  void saveScreenshot();

private:
  ctkScreenshotDialog(const ctkScreenshotDialog &);
  ctkScreenshotDialog &operator=(const ctkScreenshotDialog &);  
};
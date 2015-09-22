/*=========================================================================

  Library:  PyCTK
  Filename: ctkCrosshairLabel.sip

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

class ctkCrosshairLabel : public QLabel {

%TypeHeaderCode
#include "ctkCrosshairLabel.h"
%End

public:
  enum CrosshairType {
    SimpleCrosshair=0,
    BullsEyeCrosshair=1,
  };
  typedef QFlags<ctkCrosshairLabel::CrosshairType> CrosshairTypes;

  explicit ctkCrosshairLabel(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCrosshairLabel();
  bool showCrosshair() const;
  void setShowCrosshair(bool newShow);
  QPen crosshairPen() const;
  void setCrosshairPen(const QPen &newPen);
  QColor crosshairColor() const;
  void setCrosshairColor(const QColor &newColor);
  int lineWidth() const;
  void setLineWidth(int newWidth);
  CrosshairTypes crosshairType() const;
  void setCrosshairType(const CrosshairTypes &newType);
  QColor marginColor() const;
  void setMarginColor(const QColor &newColor);
  int bullsEyeWidth() const;
  void setBullsEyeWidth(int newWidth);
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;
  virtual bool hasHeightForWidth() const;
  virtual int heightForWidth(int width) const;

protected:
  virtual void paintEvent(QPaintEvent *event);

private:
  ctkCrosshairLabel(const ctkCrosshairLabel &);
  ctkCrosshairLabel &operator=(const ctkCrosshairLabel &);

};


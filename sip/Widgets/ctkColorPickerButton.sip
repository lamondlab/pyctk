/*=========================================================================

  Library:  PyCTK
  Filename: ctkColorPickerButton.sip

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

class ctkColorPickerButton : public QPushButton {

%TypeHeaderCode
#include "ctkColorPickerButton.h"
%End

public:
  enum ColorDialogOption {
    ShowAlphaChannel=1,
    NoButtons=2,
    DontUseNativeDialog=4,
    UseCTKColorDialog=12,
  };
  typedef QFlags<ctkColorPickerButton::ColorDialogOption> ColorDialogOptions;

  explicit ctkColorPickerButton(QWidget *parent /TransferThis/ = 0);
  explicit ctkColorPickerButton(const QString &text, QWidget *parent /TransferThis/ = 0);
  explicit ctkColorPickerButton(const QColor &color, const QString &text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkColorPickerButton();
  QColor color() const;
  QString colorName() const;
  void setColorName(const QString &name);
  bool displayColorName() const;
  void setDialogOptions(const ColorDialogOptions &options);
  const ColorDialogOptions & dialogOptions() const;
  virtual QSize sizeHint() const;

public slots:
  void setColor(const QColor &color);
  void changeColor();
  void setDisplayColorName(bool displayColorName);

protected:
  virtual void paintEvent(QPaintEvent *event);

protected slots:
  void onToggled(bool change = true);

signals:
  void colorChanged(QColor );
  void colorNameChanged(QString );

private:
  ctkColorPickerButton(const ctkColorPickerButton &);
  ctkColorPickerButton &operator=(const ctkColorPickerButton &);

};


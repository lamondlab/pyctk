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

class ctkColorPickerButton : public QPushButton
{
  
%TypeHeaderCode
#include "ctkColorPickerButton.h"
%End

public:
  enum ColorDialogOption {
    ShowAlphaChannel    = 0x00000001,
    NoButtons           = 0x00000002,
    DontUseNativeDialog = 0x00000004,
    UseCTKColorDialog   = 0x0000000C
  };
  //Q_DECLARE_FLAGS(ColorDialogOptions, ColorDialogOption)
  typedef QFlags<ctkColorPickerButton::ColorDialogOption> ColorDialogOptions;

  explicit ctkColorPickerButton(QWidget* parent /TransferThis/ = 0);
  explicit ctkColorPickerButton(const QString& text, QWidget* parent /TransferThis/ = 0 );
  explicit ctkColorPickerButton(const QColor& color, const QString & text, QWidget* parent /TransferThis/ = 0 );
  virtual ~ctkColorPickerButton();

  QColor color()const;
  QString colorName()const;
  void setColorName(const QString& name);
  bool displayColorName()const;
  void setDialogOptions(const ColorDialogOptions& options);
  const ColorDialogOptions& dialogOptions() const;
  virtual QSize sizeHint()const;

public Q_SLOTS:
  void setColor(const QColor& color);
  void changeColor();
  void setDisplayColorName(bool displayColorName);

Q_SIGNALS:
  void colorChanged(QColor);
  void colorNameChanged(QString);

protected Q_SLOTS:
  void onToggled(bool change = true);

protected:
  virtual void paintEvent(QPaintEvent* event);

private:
  ctkColorPickerButton(const ctkColorPickerButton &);
  ctkColorPickerButton &operator=(const ctkColorPickerButton &); 
};
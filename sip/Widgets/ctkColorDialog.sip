/*=========================================================================

  Library:  PyCTK
  Filename: ctkColorDialog.sip

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

class ctkColorDialog : public QColorDialog {

%TypeHeaderCode
#include "ctkColorDialog.h"
%End

public:
  explicit ctkColorDialog(QWidget *parent /TransferThis/ = 0);
  explicit ctkColorDialog(const QColor &initial, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkColorDialog();
  void addTab(QWidget *widget, const QString &label);
  void insertTab(int tabIndex, QWidget *widget, const QString &label);
  void removeTab(int index);
  void setCurrentTab(int index);
  QWidget *widget(int index) const;
  int indexOf(QWidget *widget) const;
  QString colorName() const;
  static QColor getColor(const QColor &initial, QWidget *parent, const QString &title, ColorDialogOptions options = 0);
  static QString getColorName();
  static void addDefaultTab(QWidget *widget, const QString &label, const char *colorSignal = 0, const char *nameSignal = 0);
  static void insertDefaultTab(int tabIndex, QWidget *widget, const QString &label, const char *colorSignal = 0, const char *nameSignal = 0);
  static void setDefaultTab(int index);

public slots:
  void setColor(const QColor &color);
  void setColorName(const QString &name);

protected slots:
  void resetColorName();

signals:
  void currentColorNameChanged(const QString &colorName);

private:
  ctkColorDialog(const ctkColorDialog &);
  ctkColorDialog &operator=(const ctkColorDialog &);

};


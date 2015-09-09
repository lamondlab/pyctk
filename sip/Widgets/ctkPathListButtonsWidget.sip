/*=========================================================================

  Library:  PyCTK
  Filename: ctkPathListButtonsWidget.sip

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

class ctkPathListButtonsWidget : public QWidget
{

%TypeHeaderCode
#include "ctkPathListButtonsWidget.h"
%End

public:
  ctkPathListButtonsWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkPathListButtonsWidget();

  void init(ctkPathListWidget* pathListWidget);
  bool isAddFilesButtonVisible() const;
  void setAddFilesButtonVisible(bool visible);
  bool isAddDirectoryButtonVisible() const;
  void setAddDirectoryButtonVisible(bool visible);
  bool isRemoveButtonVisible() const;
  void setRemoveButtonVisible(bool visible);
  bool isEditButtonVisible() const;
  void setEditButtonVisible(bool visible);
  QString textAddFilesButton() const;
  QString textAddDirectoryButton() const;
  QString textRemoveButton() const;
  QString textEditButton() const;
  void setTextAddFilesButton(const QString& text);
  void setTextAddDirectoryButton(const QString& text);
  void setTextRemoveButton(const QString& text);
  void setTextEditButton(const QString& text);
  QString toolTipAddFilesButton() const;
  QString toolTipAddDirectoryButton() const;
  QString toolTipRemoveButton() const;
  QString toolTipEditButton() const;
  void setToolTipAddFilesButton(const QString& toolTip);
  void setToolTipAddDirectoryButton(const QString& toolTip);
  void setToolTipRemoveButton(const QString& toolTip);
  void setToolTipEditButton(const QString& toolTip);
  QIcon iconAddFilesButton() const;
  QIcon iconAddDirectoryButton() const;
  QIcon iconRemoveButton() const;
  QIcon iconEditButton() const;
  void setIconAddFilesButton(const QIcon& icon);
  void setIconAddDirectoryButton(const QIcon& icon);
  void setIconRemoveButton(const QIcon& icon);
  void setIconEditButton(const QIcon& icon);
  void unsetIconAddFilesButton();
  void unsetIconAddDirectoryButton();
  void unsetIconRemoveButton();
  void unsetIconEditButton();
  bool isButtonsAutoRaise() const;
  void setButtonsAutoRaise(bool autoRaise);
  int buttonSpacing() const;
  void setButtonSpacing(int spacing);
  Qt::Orientation orientation() const;
  void setOrientation(Qt::Orientation orientation);
  QToolButton* buttonAddFiles() const;
  QToolButton* buttonAddDirectory() const;
  QToolButton* buttonEdit() const;
  QToolButton* buttonRemove() const;

private:
  ctkPathListButtonsWidget(const ctkPathListButtonsWidget &);
  ctkPathListButtonsWidget &operator=(const ctkPathListButtonsWidget &); 
};
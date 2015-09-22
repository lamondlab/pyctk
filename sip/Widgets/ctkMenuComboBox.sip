/*=========================================================================

  Library:  PyCTK
  Filename: ctkMenuComboBox.sip

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

class ctkMenuComboBox : public QWidget {

%TypeHeaderCode
#include "ctkMenuComboBox.h"
%End

public:
  enum EditableBehavior {
    NotEditable=0,
    Editable=1,
    EditableOnFocus=2,
    EditableOnPopup=3,
  };

  ctkMenuComboBox(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkMenuComboBox();
  void setMenu(QMenu *menu);
  QMenu *menu() const;
  void setDefaultText(const QString &);
  QString defaultText() const;
  void setDefaultIcon(const QIcon &);
  QIcon defaultIcon() const;
  void setEditableBehavior(EditableBehavior editBehavior);
  EditableBehavior editableBehavior() const;
  void setSearchIconVisible(bool state);
  bool isSearchIconVisible() const;
  Qt::ToolButtonStyle toolButtonStyle() const;
  void setMinimumContentsLength(int characters);
  QComboBox *menuComboBoxInternal() const;
  QToolButton *toolButtonInternal() const;
  ctkCompleter *searchCompleter() const;

public slots:
  void clearActiveAction();
  void setToolButtonStyle(Qt::ToolButtonStyle style);

protected:
  virtual bool eventFilter(QObject *target, QEvent *event);

protected slots:
  void onActionSelected(QAction *action);
  void onEditingFinished();

signals:
  void actionChanged(QAction *action);
  void popupShown();

private:
  ctkMenuComboBox(const ctkMenuComboBox &);
  ctkMenuComboBox &operator=(const ctkMenuComboBox &);

};


/*=========================================================================

  Library:  PyCTK
  Filename: ctkActionsWidget.sip

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

class ctkActionsWidget : public QWidget {

%TypeHeaderCode
#include "ctkActionsWidget.h"
%End

public:
  explicit ctkActionsWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkActionsWidget();
  void addAction(QAction *action, const QString &group = QString());
  void addActions(QList<QAction *> actions, const QString &group = QString());
  void clear();
  QStandardItem *groupItem(const QString &category);
  void setActionsWithNoShortcutVisible(bool show);
  bool areActionsWithNoShortcutVisible() const;
  void setMenuActionsVisible(bool show);
  bool areMenuActionsVisible() const;
  void setSortColumn(int column);
  int sortColumn() const;
  QStandardItemModel *model() const;
  QTreeView *view() const;

protected:
  enum ActionColumn {
    NameColumn=0,
    ShortcutColumn=1,
    ContextColumn=2,
    DetailsColumn=3,
  };


protected slots:
  void updateAction();

private:
  ctkActionsWidget(const ctkActionsWidget &);
  ctkActionsWidget &operator=(const ctkActionsWidget &);

};


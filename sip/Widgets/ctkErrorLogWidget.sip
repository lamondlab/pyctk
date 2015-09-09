/*=========================================================================

  Library:  PyCTK
  Filename: ctkErrorLogWidget.sip

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

class ctkErrorLogWidget : public QWidget
{

%TypeHeaderCode
#include "ctkErrorLogWidget.h"
%End

public:
  explicit ctkErrorLogWidget(QWidget* parentWidget /TransferThis/ = 0);
  virtual ~ctkErrorLogWidget();

  ctkErrorLogModel* errorLogModel() const;
  void setErrorLogModel(ctkErrorLogModel * newErrorLogModel);
  /*Q_INVOKABLE*/ void setColumnHidden(int columnId, bool hidden) const;

public Q_SLOTS:
  void setAllEntriesVisible(bool visibility = true);
  void setErrorEntriesVisible(bool visibility);
  void setWarningEntriesVisible(bool visibility);
  void setInfoEntriesVisible(bool visibility);
  void setUnknownEntriesVisible(bool visibility);

protected Q_SLOTS:
  void onRowsInserted(const QModelIndex &parent, int first, int last);
  void onLogLevelFilterChanged();
  void removeEntries();
  void onSelectionChanged(const QItemSelection & selected, const QItemSelection & deselected);

private:
  ctkErrorLogWidget(const ctkErrorLogWidget &);
  ctkErrorLogWidget &operator=(const ctkErrorLogWidget &);  
};
/*=========================================================================

  Library:  PyCTK
  Filename: ctkModalityWidget.sip

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

class ctkModalityWidget : public QWidget {

%TypeHeaderCode
#include "ctkModalityWidget.h"
%End

public:
  explicit ctkModalityWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkModalityWidget();
  QStringList selectedModalities() const;
  void setSelectedModalities(const QStringList &modalities);
  QStringList visibleModalities() const;
  void setVisibleModalities(const QStringList &modalities);
  void selectModality(const QString &modality, bool select = true);
  void showModality(const QString &modality, bool show = true);
  void showAll();
  void hideAll();
  bool areAllModalitiesSelected() const;
  bool areAllModalitiesVisible() const;
  QStringList modalities() const;

public slots:
  void selectAll();
  void unselectAll();

protected slots:
  void onAnyChanged(int state);
  void onModalityChecked(bool );

signals:
  void selectedModalitiesChanged(const QStringList modalities);

private:
  ctkModalityWidget(const ctkModalityWidget &);
  ctkModalityWidget &operator=(const ctkModalityWidget &);

};


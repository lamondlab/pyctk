/*=========================================================================

  Library:  PyCTK
  Filename: ctkSettingsDialog.sip

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

class ctkSettingsDialog : public QDialog {

%TypeHeaderCode
#include "ctkSettingsDialog.h"
%End

public:
  explicit ctkSettingsDialog(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkSettingsDialog();
  QSettings *settings() const;
  void setSettings(QSettings *settings);
  ctkSettingsPanel *panel(const QString &panel) const;
  ctkSettingsPanel *currentPanel() const;
  void addPanel(ctkSettingsPanel *panel, ctkSettingsPanel *parentPanel = 0);
  void addPanel(const QString &label, ctkSettingsPanel *panel, ctkSettingsPanel *parentPanel = 0);
  void addPanel(const QString &label, const QIcon &icon, ctkSettingsPanel *panel, ctkSettingsPanel *parentPanel = 0);
  bool resetButton() const;
  void setResetButton(bool show);
  bool isRestartRequired() const;

public slots:
  void setCurrentPanel(ctkSettingsPanel *panel);
  void setCurrentPanel(const QString &label);
  void applySettings();
  void resetSettings();
  void restoreDefaultSettings();
  void reloadSettings();
  virtual void accept();
  virtual void reject();
  void adjustTreeWidgetToContents();

protected:
  virtual bool event(QEvent *);

protected slots:
  void onSettingChanged(const QString &key, const QVariant &newVal);
  void onCurrentItemChanged(QTreeWidgetItem *currentItem, QTreeWidgetItem *previous);
  void onDialogButtonClicked(QAbstractButton *button);

signals:
  void settingChanged(const QString &key, const QVariant &value);
  void restartRequested();

private:
  ctkSettingsDialog(const ctkSettingsDialog &);
  ctkSettingsDialog &operator=(const ctkSettingsDialog &);

};


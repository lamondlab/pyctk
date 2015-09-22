/*=========================================================================

  Library:  PyCTK
  Filename: ctkSettingsPanel.sip

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

class ctkSettingsPanel : public QWidget {

%TypeHeaderCode
#include "ctkSettingsPanel.h"
%End

public:
  enum SettingOption {
    OptionNone=0,
    OptionRequireRestart=1,
    OptionAll_Mask=~0,
  };
  typedef QFlags<ctkSettingsPanel::SettingOption> SettingOptions;

  explicit ctkSettingsPanel(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkSettingsPanel();
  QSettings *settings() const;
  void setSettings(QSettings *settings);
  void registerProperty(const QString &settingKey, QObject *object, const QString &objectProperty, const QByteArray &propertySignal, const QString &settingLabel = QString(), SettingOptions options = OptionNone, QSettings *settings = 0);
  void setSetting(const QString &key, const QVariant &newVal);
  QStringList changedSettings() const;
  QString settingLabel(const QString &settingKey) const;
  SettingOptions settingOptions(const QString &settingKey) const;

public slots:
  virtual void applySettings();
  virtual void resetSettings();
  virtual void restoreDefaultSettings();
  virtual void reloadSettings();

protected:
  QVariant defaultPropertyValue(const QString &key) const;
  QVariant previousPropertyValue(const QString &key) const;
  QVariant propertyValue(const QString &key) const;

protected slots:
  void updateSetting(const QString &key);

signals:
  void settingChanged(const QString &key, const QVariant &value);

private:
  ctkSettingsPanel(const ctkSettingsPanel &);
  ctkSettingsPanel &operator=(const ctkSettingsPanel &);

};


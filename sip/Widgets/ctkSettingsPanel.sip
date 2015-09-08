class ctkSettingsPanel : public QWidget
{

%TypeHeaderCode
#include "ctkSettingsPanel.h"
%End

public:
  explicit ctkSettingsPanel(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkSettingsPanel();

  QSettings* settings()const;
  void setSettings(QSettings* settings);

  enum SettingOption{
    OptionNone = 0x0000,
    OptionRequireRestart = 0x0001,
    OptionAll_Mask = ~0
  };
  //Q_DECLARE_FLAGS(SettingOptions, SettingOption)
  typedef QFlags<ctkSettingsPanel::SettingOption> SettingOptions;
  void registerProperty(const QString& settingKey,
                        QObject* object,
                        const QString& objectProperty,
                        const char* propertySignal,
                        const QString& settingLabel = QString(),
                        SettingOptions options = OptionNone,
                        QSettings * settings = 0);
  /*Q_INVOKABLE*/ void registerProperty(const QString& settingKey, QObject* object,
                                    const QString& objectProperty,
                                    const QByteArray& propertySignal,
                                    const QString& settingLabel = QString(),
                                    SettingOptions options = OptionNone,
                                    QSettings * settings = 0);
  void setSetting(const QString& key, const QVariant& newVal);
  QStringList changedSettings()const;
  QString settingLabel(const QString& settingKey)const;
  SettingOptions settingOptions(const QString& settingKey)const;

public Q_SLOTS:
  virtual void applySettings();
  virtual void resetSettings();
  virtual void restoreDefaultSettings();
  virtual void reloadSettings();

Q_SIGNALS:
  void settingChanged(const QString& key, const QVariant& value);

protected:
  QVariant defaultPropertyValue(const QString& key) const;
  QVariant previousPropertyValue(const QString& key) const;
  QVariant propertyValue(const QString& key) const;

protected Q_SLOTS:
  void updateSetting(const QString& key);

private:
  ctkSettingsPanel(const ctkSettingsPanel &);
  ctkSettingsPanel &operator=(const ctkSettingsPanel &);
};
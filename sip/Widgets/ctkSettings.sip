class ctkSettings : public QSettings
{
  
%TypeHeaderCode
#include "ctkSettings.h"
%End  

public:
  ctkSettings(
    const QString& organization,
    const QString& application,
    QObject* parent /TransferThis/ = 0);
  ctkSettings(
    QSettings::Scope scope,
    const QString& organization,
    const QString& application = QString(),
    QObject* parent /TransferThis/ = 0);
  ctkSettings(
    QSettings::Format format,
    QSettings::Scope scope,
    const QString& organization,
    const QString& application = QString(),
    QObject* parent /TransferThis/ = 0);
  ctkSettings(const QString& fileName, QSettings::Format format, QObject* parent /TransferThis/ = 0);
  ctkSettings(QObject* parent /TransferThis/ = 0);

  void saveState(const QMainWindow& window, const QString& key);
  void saveState(const QDialog& dialog, const QString& key);
  void restoreState(const QString& key, QMainWindow& window);
  void restoreState(const QString& key, QDialog& dialog);
  void alertSettingsModified();

Q_SIGNALS:
  void modified();
};
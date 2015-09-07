class ctkLanguageComboBox : public QComboBox
{

%TypeHeaderCode
#include "ctkLanguageComboBox.h"
%End

public:
  ctkLanguageComboBox(QWidget *parent /TransferThis/ = 0);
  ctkLanguageComboBox(const QString& defaultLanguage, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkLanguageComboBox();

  QString defaultLanguage()const;
  void setDefaultLanguage(const QString& language);
  QString directory()const;
  void setDirectory(const QString& dir);
  QString currentLanguage()const;

public Q_SLOTS:
  void setCurrentLanguage(const QString& language);

protected slots:
  void onLanguageChanged(int index);

signals:
  void currentLanguageNameChanged(const QString&);

private:
  ctkLanguageComboBox(const ctkLanguageComboBox &);
  ctkLanguageComboBox &operator=(const ctkLanguageComboBox &);  
};
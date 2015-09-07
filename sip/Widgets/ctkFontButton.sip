class ctkFontButton: public QPushButton
{

%TypeHeaderCode
#include "ctkFontButton.h"
%End

public:
  ctkFontButton(QWidget * parent /TransferThis/ = 0);
  ctkFontButton(const QFont& currentFont, QWidget * parent /TransferThis/ = 0);
  virtual ~ctkFontButton();

  void setCurrentFont(const QFont& newFont);
  QFont currentFont()const;
  void setFontTextFormat(const QString& fontTextFormat);
  QString fontTextFormat()const;

public Q_SLOTS:
  void browseFont();

Q_SIGNALS:
  void currentFontChanged(const QFont&);

private:
  ctkFontButton(const ctkFontButton &);
  ctkFontButton &operator=(const ctkFontButton &); 
};
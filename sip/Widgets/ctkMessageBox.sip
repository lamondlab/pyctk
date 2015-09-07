class ctkMessageBox : public QMessageBox
{

%TypeHeaderCode
#include "ctkMessageBox.h"
%End

public:
  ctkMessageBox(QWidget* newParent /TransferThis/ = 0);
  ctkMessageBox(Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton,
                QWidget * parent /TransferThis/ = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint );
  virtual ~ctkMessageBox();

  bool dontShowAgain()const;
  void setDontShowAgainSettingsKey(const QString& key);
  QString dontShowAgainSettingsKey()const;
  void setDontShowAgainVisible(bool visible);
  bool isDontShowAgainVisible()const;
  static bool confirmExit(const QString& dontShowAgainKey = QString(),
                          QWidget* parentWidget = 0);
  virtual void setVisible(bool visible);
  virtual void done(int resultCode);

public Q_SLOTS:
  void setDontShowAgain(bool dontShow);

private:
  ctkMessageBox(const ctkMessageBox &);
  ctkMessageBox &operator=(const ctkMessageBox &);
};
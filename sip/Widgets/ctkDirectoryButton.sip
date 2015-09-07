class ctkDirectoryButton: public QWidget
{

%TypeHeaderCode
#include "ctkDirectoryButton.h"
%End

public:
  ctkDirectoryButton(QWidget * parent /TransferThis/ = 0);
  ctkDirectoryButton(const QString& directory, QWidget * parent /TransferThis/ = 0);
  ctkDirectoryButton(const QIcon& icon, const QString& directory, QWidget * parent /TransferThis/ = 0);
  virtual ~ctkDirectoryButton();

  void setDirectory(const QString& path);
  QString directory()const;
  void setCaption(const QString& caption);
  const QString& caption()const;
  void setText(const QString& text);
  const QString& text()const;
  void setIcon(const QIcon& icon);
  QIcon icon()const;

  void setOptions(const QFileDialog::Options& options);
  const QFileDialog::Options& options()const;
  QFileDialog::AcceptMode acceptMode() const;

public Q_SLOTS:
  void browse();

Q_SIGNALS:
  void directoryChanged(const QString&);
  void directorySelected(const QString&);

private:
  ctkDirectoryButton(const ctkDirectoryButton &);
  ctkDirectoryButton &operator=(const ctkDirectoryButton &);
};
class ctkFileDialog : public QFileDialog
{

%TypeHeaderCode
#include "ctkFileDialog.h"
%End

public:
  explicit ctkFileDialog(QWidget *parent /TransferThis/ = 0,
              const QString &caption = QString(),
              const QString &directory = QString(),
              const QString &filter = QString());
  virtual ~ctkFileDialog();
  
  /*Q_INVOKABLE*/ void setBottomWidget(QWidget* widget, const QString& label=QString());
  /*Q_INVOKABLE*/ QWidget* bottomWidget()const;
  bool eventFilter(QObject *obj, QEvent *event);

public Q_SLOTS:
  void setAcceptButtonEnable(bool enable);

Q_SIGNALS:
  void fileSelectionChanged(const QStringList& selected);

protected Q_SLOTS:
  void onSelectionChanged();

protected:
  virtual void accept();

private:
  ctkFileDialog(const ctkFileDialog &);
  ctkFileDialog &operator=(const ctkFileDialog &);
};
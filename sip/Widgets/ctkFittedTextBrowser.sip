class ctkFittedTextBrowser : public QTextBrowser
{

%TypeHeaderCode
#include "ctkFittedTextBrowser.h"
%End

public:
  ctkFittedTextBrowser(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkFittedTextBrowser();

  virtual QSize sizeHint() const;
  virtual QSize minimumSizeHint() const;
  virtual int heightForWidth(int width) const;

protected Q_SLOTS:
  void heightForWidthMayHaveChanged();

protected:
  virtual void resizeEvent(QResizeEvent* e);
};
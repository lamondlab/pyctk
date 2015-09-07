class ctkSearchBox : public QLineEdit
{

%TypeHeaderCode
#include "ctkSearchBox.h"
%End

public:
  ctkSearchBox(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkSearchBox();

  void setShowSearchIcon(bool show);
  bool showSearchIcon()const;
  void setAlwaysShowClearIcon(bool show);
  bool alwaysShowClearIcon()const;
  void setSearchIcon(const QIcon& icon);
  QIcon searchIcon()const;
  void setClearIcon(const QIcon& icon);
  QIcon clearIcon()const;

protected Q_SLOTS:
  void updateClearButtonState();

protected:
  virtual void paintEvent(QPaintEvent*);
  virtual void mousePressEvent(QMouseEvent* event);
  virtual void mouseMoveEvent(QMouseEvent *event);
  virtual void resizeEvent(QResizeEvent * event);

private:
  ctkSearchBox(const ctkSearchBox &);
  ctkSearchBox &operator=(const ctkSearchBox &);
};
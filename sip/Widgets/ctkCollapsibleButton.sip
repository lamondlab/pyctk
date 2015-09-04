class ctkCollapsibleButton : public QAbstractButton
{

%TypeHeaderCode
#include "ctkCollapsibleButton.h"
%End

public:
  ctkCollapsibleButton(QWidget *parent /TransferThis/ = 0);
  ctkCollapsibleButton(const QString& text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCollapsibleButton();

  void setCollapsed(bool);
  bool collapsed() const;
  void setCollapsedHeight(int heightInPixels);
  int collapsedHeight() const;
  void setFlat(bool flat);
  bool isFlat() const;
  QFrame::Shape contentsFrameShape() const;
  void setContentsFrameShape(QFrame::Shape);
  QFrame::Shadow contentsFrameShadow() const;
  void setContentsFrameShadow(QFrame::Shadow);
  int contentsLineWidth() const;
  void setContentsLineWidth(int);
  int contentsMidLineWidth() const;
  void setContentsMidLineWidth(int);
  void setButtonTextAlignment(Qt::Alignment textAlignment);
  Qt::Alignment buttonTextAlignment() const;
  void setIndicatorAlignment(Qt::Alignment indicatorAlignment);
  Qt::Alignment indicatorAlignment() const;
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;
  virtual bool event(QEvent* event);
  virtual bool eventFilter(QObject* child, QEvent* e);
  virtual void setVisible(bool);

Q_SIGNALS:
  void contentsCollapsed(bool);

protected Q_SLOTS:
  virtual void collapse(bool c);
  virtual void onToggled(bool clicked = false);

protected:
  virtual void paintEvent(QPaintEvent*);
  virtual void childEvent(QChildEvent* c);
  virtual bool hitButton(const QPoint & pos) const;
  virtual QSize buttonSizeHint() const;
  virtual void initStyleOption(QStyleOptionButton* option) const;

private:
  ctkCollapsibleButton(const ctkCollapsibleButton &);
  ctkCollapsibleButton &operator=(const ctkCollapsibleButton &);
};
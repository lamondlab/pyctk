class ctkSizeGrip : public QWidget
{

%TypeHeaderCode
#include "ctkSizeGrip.h"
%End

public:
  explicit ctkSizeGrip(QWidget *parent /TransferThis/ );
  explicit ctkSizeGrip(QWidget* widgetToResize, QWidget *parent /TransferThis/);
  virtual ~ctkSizeGrip();

  void setOrientations(Qt::Orientations orientations);
  Qt::Orientations orientations()const;
  QWidget* widgetToResize()const;
  void setWidgetToResize(QWidget* target);
  QSize widgetSizeHint()const;
  void setResizeWidget(bool resize);
  bool resizeWidget()const;
  virtual QSize sizeHint() const;

public Q_SLOTS:
  void setWidgetSizeHint(QSize sizeHint);

Q_SIGNALS:
  void widgetSizeHintChanged(QSize sizeHint);

protected:
  virtual void paintEvent(QPaintEvent* paintEvent);
  virtual bool event(QEvent* event);
  virtual void mousePressEvent(QMouseEvent* mouseEvent);
  virtual void mouseMoveEvent(QMouseEvent* mouseEvent);
  virtual void mouseReleaseEvent(QMouseEvent* mouseEvent);
  virtual void mouseDoubleClickEvent(QMouseEvent* mouseEvent);

private:
  ctkSizeGrip(const ctkSizeGrip &);
  ctkSizeGrip &operator=(const ctkSizeGrip &); 
};
class ctkThumbnailListWidget : public QWidget
{

%TypeHeaderCode
#include "ctkThumbnailListWidget.h"
%End

public:
  explicit ctkThumbnailListWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkThumbnailListWidget();

  void addThumbnail(const QPixmap& thumbnail, const QString& label = QString());
  void addThumbnails(const QList<QPixmap>& thumbnails);
  void setCurrentThumbnail(int index);
  int currentThumbnail();
  void clearThumbnails();
  void setFlow(Qt::Orientation orientation);
  Qt::Orientation flow()const;
  QSize thumbnailSize()const;
  virtual bool eventFilter(QObject* watched, QEvent* event);

public Q_SLOTS:
  void setThumbnailSize(QSize size);

Q_SIGNALS:
  void selected(const ctkThumbnailLabel& widget);
  void doubleClicked(const ctkThumbnailLabel& widget);

protected Q_SLOTS:
  void onThumbnailSelected(const ctkThumbnailLabel& widget);
  void updateLayout();

protected:
  virtual void resizeEvent(QResizeEvent* event);

private:
  ctkThumbnailListWidget(const ctkThumbnailListWidget &);
  ctkThumbnailListWidget &operator=(const ctkThumbnailListWidget &);

};
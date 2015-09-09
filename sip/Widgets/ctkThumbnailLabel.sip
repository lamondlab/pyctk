class ctkThumbnailLabel : public QWidget
{

%TypeHeaderCode
#include "ctkThumbnailLabel.h"
%End

public:
  explicit ctkThumbnailLabel(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkThumbnailLabel();

  void setText(const QString& text);
  QString text() const;
  void setTextPosition(const Qt::Alignment& alignment);
  Qt::Alignment textPosition() const;
  void setPixmap(const QPixmap& pixmap);
  const QPixmap* pixmap() const;
  Qt::TransformationMode transformationMode() const;
  void setTransformationMode(Qt::TransformationMode mode);
  void setSelected(bool selected);
  bool isSelected() const;
  void setSelectedColor(const QColor& color);
  QColor selectedColor() const;
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;
  virtual int heightForWidth(int width) const;

protected:
  virtual void paintEvent(QPaintEvent* event);
  virtual void mousePressEvent(QMouseEvent* event);
  virtual void mouseDoubleClickEvent(QMouseEvent* event);
  virtual void resizeEvent(QResizeEvent* event);

private:
  ctkThumbnailLabel(const ctkThumbnailLabel &);
  ctkThumbnailLabel &operator=(const ctkThumbnailLabel &);

Q_SIGNALS:
  void selected(const ctkThumbnailLabel& widget);
  void doubleClicked(const ctkThumbnailLabel& widget);
};
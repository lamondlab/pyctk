class ctkFlowLayout : public QLayout
{

%TypeHeaderCode
#include "ctkFlowLayout.h"
%End

public:
  explicit ctkFlowLayout(Qt::Orientation orientation, QWidget* parent /TransferThis/ = 0);
  explicit ctkFlowLayout(QWidget* parent /TransferThis/);
  explicit ctkFlowLayout();
  virtual ~ctkFlowLayout();

  void setOrientation(Qt::Orientation orientation);
  Qt::Orientation orientation()const;
  void setPreferredExpandingDirections(Qt::Orientations directions);
  Qt::Orientations preferredExpandingDirections()const;
  int horizontalSpacing() const;
  void setHorizontalSpacing(int);
  int verticalSpacing() const;
  void setVerticalSpacing(int);
  bool alignItems()const;
  void setAlignItems(bool);
  static ctkFlowLayout* replaceLayout(QWidget* widget);
  virtual bool hasWidthForHeight() const;
  virtual int widthForHeight(int) const;
  virtual void addItem(QLayoutItem *item);
  virtual Qt::Orientations expandingDirections() const;
  virtual bool hasHeightForWidth() const;
  virtual int heightForWidth(int) const;
  virtual int count() const;
  virtual QLayoutItem *itemAt(int index) const;
  virtual QSize minimumSize() const;
  virtual void setGeometry(const QRect &rect);
  virtual QSize sizeHint() const;
  virtual QLayoutItem *takeAt(int index);

private:
  ctkFlowLayout(const ctkFlowLayout &);
  ctkFlowLayout &operator=(const ctkFlowLayout &); 
};
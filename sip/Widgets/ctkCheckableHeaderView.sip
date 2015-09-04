class ctkCheckableHeaderView : public QHeaderView
{

%TypeHeaderCode
#include "ctkCheckableHeaderView.h"
%End

public:
  ctkCheckableHeaderView(Qt::Orientation orient, QWidget *parent /TransferThis/ =0);
  virtual ~ctkCheckableHeaderView();

  virtual void setModel(QAbstractItemModel *model);
  virtual void setRootIndex(const QModelIndex &index);
  virtual bool eventFilter(QObject *object, QEvent *e);
  Qt::CheckState checkState(int section)const;
  //bool checkState(int section,Qt::CheckState& checkState )const; 
  ctkCheckableModelHelper* checkableModelHelper()const;

public Q_SLOTS:
  void setCheckState(int section, Qt::CheckState checkState);

private Q_SLOTS:
  void onHeaderDataChanged(Qt::Orientation orient, int first, int last);
  void onHeaderSectionInserted();
  void updateHeaderPixmaps();
  
protected:
  virtual void updateHeaderPixmaps(int first, int last);
  virtual void initStyleSectionOption(QStyleOptionHeader *option, int section, QRect rect)const;
  virtual void mousePressEvent(QMouseEvent *e);
  virtual void mouseReleaseEvent(QMouseEvent *e);
  bool isPointInCheckBox(int section, QPoint pos)const;

private:
  ctkCheckableHeaderView(const ctkCheckableHeaderView &);
  ctkCheckableHeaderView &operator=(const ctkCheckableHeaderView &);
};
class ctkFlatProxyModel : public QAbstractProxyModel
{
  
%TypeHeaderCode
#include "ctkFlatProxyModel.h"
%End  

public:
  ctkFlatProxyModel(QObject *parentObject /TransferThis/ = 0);
  virtual ~ctkFlatProxyModel();

  void setStartFlattenLevel(int level);
  int startFlattenLevel() const;
  void setEndFlattenLevel(int level);
  int endFlattenLevel() const;
  void setHideLevel(int level);
  int hideLevel() const;
  virtual QModelIndex mapFromSource( const QModelIndex& sourceIndex ) const;
  virtual QModelIndex mapToSource( const QModelIndex& sourceIndex ) const;
  virtual QModelIndex index(int row, int column, const QModelIndex &parent) const;
  virtual QModelIndex parent(const QModelIndex &child) const;
  virtual int rowCount(const QModelIndex &parent) const;
  virtual int columnCount(const QModelIndex &parent) const;

private:
  ctkFlatProxyModel(const ctkFlatProxyModel &);
  ctkFlatProxyModel &operator=(const ctkFlatProxyModel &);  
};
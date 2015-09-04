%Include ctkCheckableModelHelper.sip

class ctkCheckableComboBox : public QComboBox
{

%TypeHeaderCode
#include "ctkCheckableComboBox.h"
#include "ctkCheckableModelHelper.h"
%End

public:
  ctkCheckableComboBox(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCheckableComboBox();
  
  QAbstractItemModel* checkableModel() const;
  void setCheckableModel(QAbstractItemModel *model);
  QModelIndexList checkedIndexes() const;
  bool allChecked() const;
  bool noneChecked() const;
  void setCheckState(const QModelIndex& index, Qt::CheckState check);
  Qt::CheckState checkState(const QModelIndex& index) const;
  //ctkCheckableModelHelper* checkableModelHelper() const;
  bool eventFilter(QObject *o, QEvent *e);
  
Q_SIGNALS:
  void checkedIndexesChanged();

protected Q_SLOTS:
  void onDataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight);

protected:
  virtual void paintEvent(QPaintEvent*);

private:
  ctkCheckableComboBox(const ctkCheckableComboBox &);
  ctkCheckableComboBox &operator=(const ctkCheckableComboBox &); 
};
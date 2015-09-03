class ctkAddRemoveComboBox : public QWidget
{
 
%TypeHeaderCode
#include "ctkAddRemoveComboBox.h"
%End

public:
  explicit ctkAddRemoveComboBox(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkAddRemoveComboBox();

  virtual void printAdditionalInfo();
  void setEmptyText(const QString& text); 
  QString emptyText()const;
  void setComboBoxEnabled(bool enable);
  bool comboBoxEnabled()const; 
  void setAddEnabled(bool enable);
  bool addEnabled()const; 
  void setRemoveEnabled(bool enable);
  bool removeEnabled()const;
  void setEditEnabled(bool enable); 
  bool editEnabled()const;
  
  void addItem(const QString &text, const QVariant &userDataVariable = QVariant());
  void addItem(const QIcon &icon, const QString &text, const QVariant &userDataVariable = QVariant());
  void addItems(const QStringList &texts );
    
  void insertItem(int index, const QString &text, const QVariant &userDataVariable = QVariant() );
  void insertItem(int index, const QIcon &icon, const QString &text, const QVariant &userDataVariable = QVariant() );
  void insertItems(int index, const QStringList &texts);  
  int count()const;
  bool empty()const;
  int findText(const QString& text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const;
  int findData(const QVariant & data, int role = Qt::UserRole, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const;
  QString itemText(int index) const;
  QVariant itemData(int index, int role = Qt::UserRole) const;
  void setItemText(int index, const QString& text);
  void setItemData(int index, const QVariant& data, int role = Qt::UserRole);
  int currentIndex() const;
  
  QString currentText() const;
  QVariant currentData(int role = Qt::UserRole) const;

  void removeItem(int index);
  void removeCurrentItem();

  void clear();

Q_SIGNALS:
  void currentIndexChanged(int index);
  void activated(int index);
  void itemAdded(int index);
  void itemAboutToBeRemoved(int index);
  void itemRemoved(int index);
    
public Q_SLOTS:
  void setCurrentIndex(int index);

protected Q_SLOTS:
  virtual void onAdd();
  virtual void onRemove();
  virtual void onEdit();

protected:
  void setComboBox(QComboBox* comboBox);
  QModelIndex rootModelIndex()const;
  void setRootModelIndex(const QModelIndex& root);
  int modelColumn()const;
  QAbstractItemModel* model()const;

private Q_SLOTS:
  void onRowsAboutToBeRemoved(const QModelIndex & parent, int start, int end);
  void onRowsInserted(const QModelIndex & parent, int start, int end);
  void onRowsRemoved(const QModelIndex & parent, int start, int end);

private:
  ctkAddRemoveComboBox(const ctkAddRemoveComboBox &);
  ctkAddRemoveComboBox &operator=(const ctkAddRemoveComboBox &);
};
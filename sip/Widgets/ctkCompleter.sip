class ctkCompleter: public QCompleter
{

%TypeHeaderCode
#include "ctkCompleter.h"
%End

public:
  ctkCompleter(QObject* parent /TransferThis/ = 0);
  ctkCompleter(QAbstractItemModel* model, QObject* parent /TransferThis/ = 0);
  ctkCompleter(const QStringList& list, QObject* parent /TransferThis/ = 0 );
  virtual ~ctkCompleter();

  enum ModelFiltering
    {
    FilterStartsWith=0,
    FilterContains,
    FilterWordStartsWith
    };

  ModelFiltering modelFiltering()const;
  void setModelFiltering(ModelFiltering filter);
  virtual QStringList splitPath(const QString& s)const;
  QAbstractItemModel* sourceModel()const;
  void setSourceModel(QAbstractItemModel* model);

private:
  ctkCompleter(const ctkCompleter &);
  ctkCompleter &operator=(const ctkCompleter &);  
};
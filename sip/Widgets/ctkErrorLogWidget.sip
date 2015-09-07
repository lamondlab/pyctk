class ctkErrorLogWidget : public QWidget
{

%TypeHeaderCode
#include "ctkErrorLogWidget.h"
%End

public:
  explicit ctkErrorLogWidget(QWidget* parentWidget /TransferThis/ = 0);
  virtual ~ctkErrorLogWidget();

  ctkErrorLogModel* errorLogModel() const;
  void setErrorLogModel(ctkErrorLogModel * newErrorLogModel);
  /*Q_INVOKABLE*/ void setColumnHidden(int columnId, bool hidden) const;

public Q_SLOTS:
  void setAllEntriesVisible(bool visibility = true);
  void setErrorEntriesVisible(bool visibility);
  void setWarningEntriesVisible(bool visibility);
  void setInfoEntriesVisible(bool visibility);
  void setUnknownEntriesVisible(bool visibility);

protected Q_SLOTS:
  void onRowsInserted(const QModelIndex &parent, int first, int last);
  void onLogLevelFilterChanged();
  void removeEntries();
  void onSelectionChanged(const QItemSelection & selected, const QItemSelection & deselected);

private:
  ctkErrorLogWidget(const ctkErrorLogWidget &);
  ctkErrorLogWidget &operator=(const ctkErrorLogWidget &);  
};
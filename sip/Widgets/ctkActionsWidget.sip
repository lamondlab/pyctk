class ctkActionsWidget : public QWidget
{
  %TypeHeaderCode
  #include "ctkActionsWidget.h"
  %End

public:
  ctkActionsWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkActionsWidget();

  void addAction(QAction* action, const QString& group = QString());
  void addActions(QList<QAction*> actions, const QString& group = QString());
  void clear();
  QStandardItem* groupItem(const QString& category);
  void setActionsWithNoShortcutVisible(bool show);
  bool areActionsWithNoShortcutVisible()const;
  void setMenuActionsVisible(bool show);
  bool areMenuActionsVisible()const;
  void setSortColumn(int column);
  int sortColumn()const;
  QStandardItemModel* model()const;
  QTreeView* view()const;

protected:
  enum ActionColumn{
    NameColumn = 0,
    ShortcutColumn,
    ContextColumn,
    DetailsColumn
  };
};
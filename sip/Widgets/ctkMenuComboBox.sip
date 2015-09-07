class ctkMenuComboBox : public QWidget
{

%TypeHeaderCode
#include "ctkMenuComboBox.h"
%End

public:
  enum EditableBehavior{
    NotEditable = 0,
    Editable,
    EditableOnFocus,
    EditableOnPopup
  };

  ctkMenuComboBox(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkMenuComboBox();

  void setMenu(QMenu* menu);
  QMenu* menu()const;
  void setDefaultText(const QString&);
  QString defaultText()const;
  void setDefaultIcon(const QIcon&);
  QIcon defaultIcon()const;
  void setEditableBehavior(EditableBehavior editBehavior);
  EditableBehavior editableBehavior()const;
  void setSearchIconVisible(bool state);
  bool isSearchIconVisible() const;
  Qt::ToolButtonStyle toolButtonStyle() const;
  void setMinimumContentsLength(int characters);
  QComboBox* menuComboBoxInternal() const;
  QToolButton* toolButtonInternal() const;
  ctkCompleter* searchCompleter() const;

protected:
  virtual bool eventFilter(QObject* target, QEvent* event);

public Q_SLOTS:
  void clearActiveAction();
  void setToolButtonStyle(Qt::ToolButtonStyle style);

Q_SIGNALS:
  void actionChanged(QAction* action);
  void popupShown();

protected Q_SLOTS:
  void onActionSelected(QAction* action);
  void onEditingFinished();

private:
  ctkMenuComboBox(const ctkMenuComboBox &);
  ctkMenuComboBox &operator=(const ctkMenuComboBox &);  
};
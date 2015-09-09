class ctkTreeComboBox : public QComboBox
{

%TypeHeaderCode
#include "ctkTreeComboBox.h"
%End

public:
  explicit ctkTreeComboBox(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkTreeComboBox();

  int visibleModelColumn()const;
  void setVisibleModelColumn(int index);
  virtual bool eventFilter(QObject* object, QEvent* event);
  virtual void showPopup();
  virtual void hidePopup();
  QTreeView* treeView()const;

protected:
  virtual void paintEvent(QPaintEvent*);
  
protected Q_SLOTS:
  void resizePopup();
  
signals:
  void popupShow();
  void popupHide();

private:
  ctkTreeComboBox(const ctkTreeComboBox &);
  ctkTreeComboBox &operator=(const ctkTreeComboBox &); 
};
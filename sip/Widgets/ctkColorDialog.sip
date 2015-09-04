class ctkColorDialog : public QColorDialog
{

%TypeHeaderCode
#include "ctkColorDialog.h"
%End

public:
  explicit ctkColorDialog(QWidget* parent /TransferThis/ = 0);
  explicit ctkColorDialog(const QColor& initial, QWidget* parent /TransferThis/ = 0);
  virtual ~ctkColorDialog();

  /*inline*/ void addTab(QWidget* widget, const QString& label);
  void insertTab(int tabIndex, QWidget* widget, const QString& label);
  void removeTab(int index);
  void setCurrentTab(int index);
  QWidget* widget(int index)const;
  int indexOf(QWidget* widget)const;
  QString colorName()const;
  static QColor getColor(const QColor &initial, QWidget *parent,
                         const QString &title, ColorDialogOptions options = 0);    
  static QString getColorName();
  static /*inline*/ void addDefaultTab(QWidget* widget, const QString& label,
                                   const char* colorSignal = 0,
                                   const char* nameSignal = 0);
  static void insertDefaultTab(int tabIndex, QWidget* widget, const QString& label,
                               const char* colorSignal = 0,
                               const char* nameSignal = 0);
  static void setDefaultTab(int index);

public Q_SLOTS:
  void setColor(const QColor& color);
  void setColorName(const QString& name);

Q_SIGNALS:
  void currentColorNameChanged(const QString& colorName);

protected Q_SLOTS:
  void resetColorName();

private:
  ctkColorDialog(const ctkColorDialog &);
  ctkColorDialog &operator=(const ctkColorDialog &); 
};

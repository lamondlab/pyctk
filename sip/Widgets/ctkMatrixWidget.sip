class ctkMatrixWidget: public QWidget
{

%TypeHeaderCode
#include "ctkMatrixWidget.h"
%End

public:
  explicit ctkMatrixWidget(QWidget* parent /TransferThis/ = 0);
  explicit ctkMatrixWidget(int rows, int columns, QWidget* parent /TransferThis/ = 0);
  virtual ~ctkMatrixWidget();

  int columnCount()const;
  virtual void setColumnCount(int newColumnCount);
  int rowCount()const;
  virtual void setRowCount(int newRowCount);
  /*Q_INVOKABLE*/ double value(int i, int j)const;
  /*Q_INVOKABLE*/ void setValue(int i, int j, double value);
  QVector<double> values()const;
  void setValues(const QVector<double> & vector);
  bool isEditable()const;
  void setEditable(bool newEditable);
  double minimum()const;
  void setMinimum(double newMinimum);
  double maximum()const;
  void setMaximum(double newMaximum);
  void setRange(double newMinimum, double newMaximum);
  double singleStep()const;
  void setSingleStep(double step);
  int decimals()const;
  ctkDoubleSpinBox::DecimalsOptions decimalsOption()const;
  void setDecimalsOption(ctkDoubleSpinBox::DecimalsOptions option);
  virtual QSize minimumSizeHint () const;
  virtual QSize sizeHint () const;

public Q_SLOTS:
  void identity();
  void setDecimals(int decimals);

Q_SIGNALS:
  void matrixChanged();
  void decimalsChanged(int);

protected:
  virtual void resizeEvent(QResizeEvent* event);
  //ctkMatrixWidget(ctkMatrixWidgetPrivate& pvt, QWidget* parent=0);

private:
  ctkMatrixWidget(const ctkMatrixWidget &);
  ctkMatrixWidget &operator=(const ctkMatrixWidget &);  
};
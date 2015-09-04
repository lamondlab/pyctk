class ctkCoordinatesWidget : public QWidget
{

%TypeHeaderCode
#include "ctkCoordinatesWidget.h"
%End

public:
  explicit ctkCoordinatesWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkCoordinatesWidget();

  void setDimension(int dim);
  int dimension() const;
  int decimals() const;
  ctkDoubleSpinBox::DecimalsOptions decimalsOption()const;
  void setDecimalsOption(ctkDoubleSpinBox::DecimalsOptions option);
  void setSingleStep(double step);
  double singleStep() const;
  void setMinimum(double minimum);
  double minimum() const;
  void setMaximum(double minimum);
  double maximum() const;
  void setRange(double minimum, double maximum);
  void setNormalized(bool normalize);
  bool isNormalized()const;
  double norm()const;
  double squaredNorm()const;
  void setCoordinatesAsString(QString pos);
  QString coordinatesAsString()const;
  void setCoordinates(double* pos);
  //double const * coordinates()const;
  void setCoordinates(double x, double y = 0., double z = 0., double w = 0.);
  void setSizeHintPolicy(ctkDoubleSpinBox::SizeHintPolicy newSizeHintPolicy);
  ctkDoubleSpinBox::SizeHintPolicy sizeHintPolicy()const;
  void setValueProxy(ctkValueProxy* proxy);
  ctkValueProxy* valueProxy() const;
  ctkDoubleSpinBox* spinBox(int id);

public Q_SLOTS:
  void normalize();
  void setDecimals(int decimals);

Q_SIGNALS:
  //void coordinatesChanged(double* pos);

protected Q_SLOTS:
  void updateCoordinates();
  void updateCoordinate(double coordinate);

private:
  ctkCoordinatesWidget(const ctkCoordinatesWidget &);
  ctkCoordinatesWidget &operator=(const ctkCoordinatesWidget &);  
};
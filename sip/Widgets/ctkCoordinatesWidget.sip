/*=========================================================================

  Library:  PyCTK
  Filename: ctkCoordinatesWidget.sip

  Copyright (c) 2015 Lamond Lab

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

=========================================================================*/

class ctkCoordinatesWidget : public QWidget {

%TypeHeaderCode
#include "ctkCoordinatesWidget.h"
%End

public:
  explicit ctkCoordinatesWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCoordinatesWidget();
  void setDimension(int dim);
  int dimension() const;
  int decimals() const;
  ctkDoubleSpinBox::DecimalsOptions decimalsOption() const;
  void setDecimalsOption(ctkDoubleSpinBox::DecimalsOptions option);
  void setSingleStep(double step);
  double singleStep() const;
  void setMinimum(double minimum);
  double minimum() const;
  void setMaximum(double minimum);
  double maximum() const;
  void setRange(double minimum, double maximum);
  void setNormalized(bool normalize);
  bool isNormalized() const;
  double norm() const;
  double squaredNorm() const;
  void setCoordinatesAsString(QString pos);
  QString coordinatesAsString() const;
  void setCoordinates(double *pos);
  //double const *coordinates() const;
  void setCoordinates(double x, double y = 0, double z = 0, double w = 0);
  void setSizeHintPolicy(ctkDoubleSpinBox::SizeHintPolicy newSizeHintPolicy);
  ctkDoubleSpinBox::SizeHintPolicy sizeHintPolicy() const;
  void setValueProxy(ctkValueProxy *proxy);
  ctkValueProxy *valueProxy() const;
  ctkDoubleSpinBox *spinBox(int id);

public slots:
  void normalize();
  void setDecimals(int decimals);

protected slots:
  void updateCoordinates();
  void updateCoordinate(double coordinate);

signals:
  //void coordinatesChanged(double *pos);

private:
  ctkCoordinatesWidget(const ctkCoordinatesWidget &);
  ctkCoordinatesWidget &operator=(const ctkCoordinatesWidget &);

};


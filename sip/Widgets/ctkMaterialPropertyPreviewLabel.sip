/*=========================================================================

  Library:  PyCTK
  Filename: ctkMaterialPropertyPreviewLabel.sip

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

class ctkMaterialPropertyPreviewLabel : public QFrame {

%TypeHeaderCode
#include "ctkMaterialPropertyPreviewLabel.h"
%End

public:
  ctkMaterialPropertyPreviewLabel(QWidget *parent /TransferThis/ = 0);
  ctkMaterialPropertyPreviewLabel(const QColor &color, double opacity, double ambient, double diffuse, double specular, double specularPower, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkMaterialPropertyPreviewLabel();
  double ambient() const;
  double diffuse() const;
  double specular() const;
  double specularPower() const;
  QColor color() const;
  double opacity() const;
  double gridOpacity() const;
  virtual int heightForWidth(int w) const;
  virtual QSize sizeHint() const;

public slots:
  void setAmbient(double newAbient);
  void setDiffuse(double newDiffuse);
  void setSpecular(double newSpecular);
  void setSpecularPower(double newSpecularPower);
  void setColor(const QColor &newColor);
  void setOpacity(double newOpacity);
  void setGridOpacity(double newGridOpacity);

protected:
  void paintEvent(QPaintEvent *);
  void draw(QImage &image);

private:
  ctkMaterialPropertyPreviewLabel(const ctkMaterialPropertyPreviewLabel &);
  ctkMaterialPropertyPreviewLabel &operator=(const ctkMaterialPropertyPreviewLabel &);

};


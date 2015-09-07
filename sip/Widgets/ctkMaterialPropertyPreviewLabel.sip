class ctkMaterialPropertyPreviewLabel : public QFrame
{

%TypeHeaderCode
#include "ctkMaterialPropertyPreviewLabel.h"
%End

public : 

  ctkMaterialPropertyPreviewLabel(QWidget *parent /TransferThis/ = 0);
  ctkMaterialPropertyPreviewLabel(const QColor& color, double opacity,
    double ambient, double diffuse, double specular, double specularPower,
    QWidget *parent /TransferThis/ = 0);
  virtual ~ctkMaterialPropertyPreviewLabel();
  
  double ambient()const;
  double diffuse()const;
  double specular()const;
  double specularPower()const;  
  QColor color()const;
  double opacity()const;
  double gridOpacity()const;
  virtual int heightForWidth(int w)const; 
  virtual QSize sizeHint()const;

public Q_SLOTS:
  void setAmbient(double newAbient);
  void setDiffuse(double newDiffuse);
  void setSpecular(double newSpecular);
  void setSpecularPower(double newSpecularPower);  
  void setColor(const QColor& newColor);
  void setOpacity(double newOpacity);
  void setGridOpacity(double newGridOpacity);

protected: 
  void paintEvent(QPaintEvent *);
  void draw(QImage& image);

private :
  ctkMaterialPropertyPreviewLabel(const ctkMaterialPropertyPreviewLabel &);
  ctkMaterialPropertyPreviewLabel &operator=(const ctkMaterialPropertyPreviewLabel &);
};
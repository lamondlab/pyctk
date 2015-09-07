class ctkMaterialPropertyWidget : public QWidget
{

%TypeHeaderCode
#include "ctkMaterialPropertyWidget.h"
%End
  
public:
  explicit ctkMaterialPropertyWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkMaterialPropertyWidget();

  QColor color()const;
  double opacity()const;
  double ambient()const;
  double diffuse()const;
  double specular()const;
  double specularPower()const;
  bool backfaceCulling()const;
  void addPreset(const QColor& color, double opacity,
                 double ambient, double diffuse,
                 double specular, double power,
                 const QString& label);

  bool isColorVisible()const;
  void setColorVisible(bool show);
  bool isOpacityVisible()const;
  void setOpacityVisible(bool show);
  bool isBackfaceCullingVisible()const;
  void setBackfaceCullingVisible(bool show);

public Q_SLOTS:
  void setColor(const QColor& newColor);
  void setOpacity(double newOpacity);
  void setAmbient(double newAmbient);
  void setDiffuse(double newDiffuse);
  void setSpecular(double newSpecular);
  void setSpecularPower(double newSpecularPower);
  void setBackfaceCulling(bool enable);

Q_SIGNALS:
  void colorChanged(QColor newColor);
  void opacityChanged(double newOpacity);
  void ambientChanged(double newAmbient);
  void diffuseChanged(double newDiffuse);
  void specularChanged(double newSpecular);
  void specularPowerChanged(double newSpecularPower);
  void backfaceCullingChanged(bool newBackfaceCulling);

protected Q_SLOTS:
  virtual void onColorChanged(const QColor& newColor);
  virtual void onOpacityChanged(double newOpacity);
  virtual void onAmbientChanged(double newAmbient);
  virtual void onDiffuseChanged(double newDiffuse);
  virtual void onSpecularChanged(double newSpecular);
  virtual void onSpecularPowerChanged(double newSpecularPower);
  virtual void onBackfaceCullingChanged(bool newBackFaceCulling);
  void selectPreset(QListWidgetItem*);

protected:
  virtual void resizeEvent(QResizeEvent* resize);

private:
  ctkMaterialPropertyWidget(const ctkMaterialPropertyWidget &);
  ctkMaterialPropertyWidget &operator=(const ctkMaterialPropertyWidget &);  
};
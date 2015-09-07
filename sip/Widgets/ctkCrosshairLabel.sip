class ctkCrosshairLabel : public QLabel
{

%TypeHeaderCode
#include "ctkCrosshairLabel.h"
%End

public:
  explicit ctkCrosshairLabel(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkCrosshairLabel();

  enum CrosshairType {
    SimpleCrosshair = 0,
    BullsEyeCrosshair
  };
  //Q_DECLARE_FLAGS(CrosshairTypes, CrosshairType)
  typedef QFlags<ctkCrosshairLabel::CrosshairType> CrosshairTypes;

  bool showCrosshair() const;
  void setShowCrosshair(bool newShow);
  QPen crosshairPen() const;
  void setCrosshairPen(const QPen& newPen);
  QColor crosshairColor() const;
  void setCrosshairColor(const QColor& newColor);
  int lineWidth() const;
  void setLineWidth(int newWidth);
  CrosshairTypes crosshairType() const;
  void setCrosshairType(const CrosshairTypes& newType);
  QColor marginColor() const;
  void setMarginColor(const QColor& newColor);
  int bullsEyeWidth() const;
  void setBullsEyeWidth(int newWidth);
  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;
  virtual bool hasHeightForWidth()const;
  virtual int heightForWidth(int width)const;

protected:
  virtual void paintEvent(QPaintEvent * event);

private:
  ctkCrosshairLabel(const ctkCrosshairLabel &);
  ctkCrosshairLabel &operator=(const ctkCrosshairLabel &); 
}; 
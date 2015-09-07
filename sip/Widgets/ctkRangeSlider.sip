class ctkRangeSlider : public QSlider
{

%TypeHeaderCode
#include "ctkRangeSlider.h"
%End

public:
  explicit ctkRangeSlider(Qt::Orientation o, QWidget* par /TransferThis/ = 0 );
  explicit ctkRangeSlider(QWidget* par /TransferThis/ = 0 );
  virtual ~ctkRangeSlider();

  int minimumValue() const;
  int maximumValue() const;
  int minimumPosition() const;
  void setMinimumPosition(int min);
  int maximumPosition() const;
  void setMaximumPosition(int max);
  void setPositions(int min, int max);
  bool symmetricMoves()const; 
  void setSymmetricMoves(bool symmetry);
  QString handleToolTip()const;
  void setHandleToolTip(const QString& toolTip);
  bool isMinimumSliderDown()const;
  bool isMaximumSliderDown()const;

Q_SIGNALS:
  void minimumValueChanged(int min);
  void maximumValueChanged(int max);
  void valuesChanged(int min, int max);
  void minimumPositionChanged(int min);
  void maximumPositionChanged(int max);
  void positionsChanged(int min, int max);

public Q_SLOTS:
  void setMinimumValue(int min);
  void setMaximumValue(int max);
  void setValues(int min, int max);

protected Q_SLOTS:
  void onRangeChanged(int minimum, int maximum);

protected:
  //ctkRangeSlider(ctkRangeSliderPrivate* impl, Qt::Orientation o, QWidget* par /TransferThis/ = 0 );
  //ctkRangeSlider(ctkRangeSliderPrivate* impl, QWidget* par /TransferThis/ = 0 );
  virtual void mousePressEvent(QMouseEvent* ev);
  virtual void mouseMoveEvent(QMouseEvent* ev);
  virtual void mouseReleaseEvent(QMouseEvent* ev);
  virtual void paintEvent(QPaintEvent* ev);
  virtual void initMinimumSliderStyleOption(QStyleOptionSlider* option) const;
  virtual void initMaximumSliderStyleOption(QStyleOptionSlider* option) const;
  virtual bool event(QEvent* event);

private:
  ctkRangeSlider(const ctkRangeSlider &);
  ctkRangeSlider &operator=(const ctkRangeSlider &);  
};
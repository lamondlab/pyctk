/*=========================================================================

  Library:  PyCTK
  Filename: ctkDoubleSpinBox.sip

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

class ctkDoubleSpinBox : public QWidget
{

%TypeHeaderCode
#include "ctkDoubleSpinBox.h"
%End

public:
  enum SetMode
  {
    SetAlways,
    SetIfDifferent,
  };

  enum DecimalsOption
  {
    FixedDecimals = 0x000,
    DecimalsByShortcuts = 0x001,
    DecimalsByKey = 0x002,
    DecimalsByValue = 0x004,
    InsertDecimals = 0x008,
    ReplaceDecimals = 0x010,
    DecimalsAsMax = 0x020,
    DecimalsAsMin = 0x040,
    DecimalPointAlwaysVisible = 0x080
  };
  //Q_DECLARE_FLAGS(DecimalsOptions, DecimalsOption)
  typedef QFlags<ctkDoubleSpinBox::DecimalsOption> DecimalsOptions;

  enum SizeHintPolicy
  {
    SizeHintByMinMax,
    SizeHintByValue
  };

  explicit ctkDoubleSpinBox(QWidget* parent /TransferThis/ = 0);
  explicit ctkDoubleSpinBox(ctkDoubleSpinBox::SetMode mode, QWidget* parent /TransferThis/ = 0);
  virtual ~ctkDoubleSpinBox();

  double value() const;
  double displayedValue() const;
  void setDisplayedValue(double displayValue);
  QString text() const;
  QString cleanText() const;
  Qt::Alignment alignment () const;
  void setAlignment (Qt::Alignment flag);
  void setFrame(bool frame);
  bool hasFrame() const;
  QString prefix() const;
  void setPrefix(const QString &prefix);
  QString suffix() const;
  void setSuffix(const QString &suffix);
  double singleStep() const;
  void setSingleStep(double value);
  double minimum() const;
  void setMinimum(double min);
  double maximum() const;
  void setMaximum(double max);
  void setRange(double min, double max);
  int decimals() const;
  double round(double value) const;
  QDoubleSpinBox* spinBox() const;
  QLineEdit* lineEdit()const;
  ctkDoubleSpinBox::SetMode setMode() const;
  void setSetMode(SetMode mode);
  ctkDoubleSpinBox::DecimalsOptions decimalsOption();
  void setDecimalsOption(ctkDoubleSpinBox::DecimalsOptions option);
  void setInvertedControls(bool invertedControls);
  bool invertedControls() const;
  void setSizeHintPolicy(SizeHintPolicy newSizeHintPolicy);
  SizeHintPolicy sizeHintPolicy()const;
  void setValueProxy(ctkValueProxy* proxy);
  ctkValueProxy* valueProxy() const;
  virtual QSize sizeHint()const;
  virtual QSize minimumSizeHint()const;

public Q_SLOTS:
  void setValue(double value);
  void setValueIfDifferent(double value);
  void setValueAlways(double value);
  void stepUp();
  void stepDown();
  void setDecimals(int decimal);

Q_SIGNALS:
  void valueChanged(double);
  void valueChanged(const QString &);
  void editingFinished();
  void decimalsChanged(int);

protected:
  virtual void keyPressEvent(QKeyEvent* event);
  virtual bool eventFilter(QObject *obj, QEvent *event);

private:
  ctkDoubleSpinBox(const ctkDoubleSpinBox &);
  ctkDoubleSpinBox &operator=(const ctkDoubleSpinBox &);  
};
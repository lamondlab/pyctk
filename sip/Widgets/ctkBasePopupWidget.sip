/*=========================================================================

  Library:  PyCTK
  Filename: ctkBasePopupWidget.sip

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

class ctkBasePopupWidget : public QFrame {

%TypeHeaderCode
#include "ctkBasePopupWidget.h"
%End

public:
  enum AnimationEffect {
    WindowOpacityFadeEffect=0,
    ScrollEffect=1,
    FadeEffect=2,
  };

  enum VerticalDirection {
    TopToBottom=1,
    BottomToTop=2,
  };

  explicit ctkBasePopupWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkBasePopupWidget();
  QWidget *baseWidget() const;
  AnimationEffect animationEffect() const;
  void setAnimationEffect(AnimationEffect effect);
  int effectDuration() const;
  void setEffectDuration(int duration);
  QEasingCurve::Type easingCurve() const;
  void setEasingCurve(QEasingCurve::Type easingCurve);
  Qt::Alignment alignment() const;
  void setAlignment(Qt::Alignment alignment);
  Qt::Orientations orientation() const;
  void setOrientation(Qt::Orientations orientation);
  VerticalDirection verticalDirection() const;
  void setVerticalDirection(VerticalDirection direction);
  Qt::LayoutDirection horizontalDirection() const;
  void setHorizontalDirection(Qt::LayoutDirection direction);

public slots:
  virtual void hidePopup();
  virtual void showPopup();
  void showPopup(bool show);

protected:
  double effectAlpha() const;
  QRect effectGeometry() const;
  virtual void setBaseWidget(QWidget *baseWidget);
  virtual bool event(QEvent *event);
  virtual void paintEvent(QPaintEvent *);

protected slots:
  virtual void onEffectFinished();
  void setEffectAlpha(double alpha);
  void setEffectGeometry(QRect geometry);
  void onBaseWidgetDestroyed();

signals:
  void popupOpened(bool open);

private:
  ctkBasePopupWidget(const ctkBasePopupWidget &);
  ctkBasePopupWidget &operator=(const ctkBasePopupWidget &);

};


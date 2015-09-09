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

class ctkBasePopupWidget : QFrame {

%TypeHeaderCode
#include "ctkBasePopupWidget.h"
%End

public:
    ctkBasePopupWidget(QWidget *parent /TransferThis/ = 0);
    ~ctkBasePopupWidget();

    QWidget* baseWidget() const;

    enum AnimationEffect
    {
        WindowOpacityFadeEffect,
        ScrollEffect,
        FadeEffect
    };

    AnimationEffect animationEffect() const;
    void setAnimationEffect(AnimationEffect);
    int effectDuration() const;
    void setEffectDuration(int);
    QEasingCurve::Type easingCurve() const;
    void setEasingCurve(QEasingCurve::Type);
    Qt::Alignment alignment() const;
    void setAlignment(Qt::Alignment);
    Qt::Orientations orientation() const;
    void setOrientation(Qt::Orientations);

    enum VerticalDirection{
        TopToBottom,
        BottomToTop
    };

    VerticalDirection verticalDirection() const;
    void setVerticalDirection(VerticalDirection);
    Qt::LayoutDirection horizontalDirection() const;
    void setHorizontalDirection(Qt::LayoutDirection);

public slots:
    virtual void hidePopup();
    virtual void showPopup();
    void showPopup(bool);

signals:
    void popupOpened(bool);

protected:
    double effectAlpha() const;
    QRect effectGeometry() const;

    virtual void setBaseWidget(QWidget* baseWidget);
    virtual bool event(QEvent* event);
    virtual void paintEvent(QPaintEvent*);
};
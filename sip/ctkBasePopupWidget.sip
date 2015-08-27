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
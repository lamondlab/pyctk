#ifndef __ctkPopupWidget_p_h
#define __ctkPopupWidget_p_h

// CTK includes
#include "ctkBasePopupWidget_p.h"
#include "ctkPopupWidget.h"

// -------------------------------------------------------------------------
/// \ingroup Widgets
class CTK_WIDGETS_EXPORT ctkPopupWidgetPrivate
  : public ctkBasePopupWidgetPrivate
{
  Q_OBJECT
  Q_DECLARE_PUBLIC(ctkPopupWidget);
public:
  typedef ctkBasePopupWidgetPrivate Superclass;
  ctkPopupWidgetPrivate(ctkPopupWidget& object);
  ~ctkPopupWidgetPrivate();

  virtual void init();

  // Return the widget if the mouse cursor is above any of the focus widgets or their
  // children.
  // If the cursor is above a child widget, install the event filter to listen
  // when the cursor leaves the widget.
  virtual QWidget* mouseOver();

  virtual bool eventFilter(QObject* obj, QEvent* event);

  void temporarilyHiddenOn();
  void temporarilyHiddenOff();

  bool isHidingCandidate(QWidget* widget)const;

public Q_SLOTS:
  void updateVisibility();
  void onApplicationDeactivate();

protected:
  bool Active;
  bool AutoShow;
  int  ShowDelay;
  bool AutoHide;
  int  HideDelay;
};

#endif

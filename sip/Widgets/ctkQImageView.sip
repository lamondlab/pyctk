class ctkQImageView: public QWidget
{

%TypeHeaderCode
#include "ctkQImageView.h"
%End

public:
  ctkQImageView( QWidget* parent /TransferThis/ = 0 );
  virtual ~ctkQImageView();

  double xSpacing( /*void*/ );
  double ySpacing( /*void*/ );
  double sliceSpacing( /*void*/ );
  double sliceThickness( /*void*/ );
  double xPosition( /*void*/ );
  double yPosition( /*void*/ );
  double slicePosition( /*void*/ );
  double positionValue( /*void*/ );
  double xCenter( /*void*/ );
  double yCenter( /*void*/ );
  int sliceNumber( /*void*/ ) const;
  //int numberOfSlices( /*void*/ ) const;
  double intensityWindow( /*void*/ ) const;
  double intensityLevel( /*void*/ ) const;
  bool invertImage( /*void*/ ) const;
  bool flipXAxis( /*void*/ ) const;
  bool flipYAxis( /*void*/ ) const;
  bool transposeXY( /*void*/ ) const;
  double zoom( /*void*/ );

public Q_SLOTS:
  void addImage( const QImage & image );
  void clearImages( /*void*/ );
  void setSliceNumber( int slicenum );
  void setIntensityWindowLevel( double iwWindow, double iwLevel );
  void setInvertImage( bool invert );
  void setFlipXAxis( bool flip );
  void setFlipYAxis( bool flip );
  void setTransposeXY( bool transpose );
  virtual void keyPressEvent( QKeyEvent * event );
  virtual void mousePressEvent( QMouseEvent * event );
  virtual void mouseReleaseEvent( QMouseEvent * event );
  virtual void mouseMoveEvent( QMouseEvent * event );
  virtual void enterEvent( QEvent * event );
  virtual void leaveEvent( QEvent * event );
  void setCenter( double x, double y );
  void setPosition( double x, double y );
  void setZoom( double factor );
  void reset();
  virtual void update( bool zoomChanged=false, bool sizeChanged=false );

Q_SIGNALS:
  void xSpacingChanged( double xSpacing );
  void ySpacingChanged( double ySpacing );
  void sliceThicknessChanged( double sliceThickness );
  void xPositionChanged( double xPosition );
  void yPositionChanged( double yPosition );
  void slicePositionChanged( double slicePosition );
  void positionValueChanged( double positionValue );
  void sliceNumberChanged( int sliceNum );
  void zoomChanged( double factor );
  void xCenterChanged( double x );
  void yCenterChanged( double y );
  void numberOfSlicesChanged( int numberOfSlices );
  void invertImageChanged( bool invert );
  void flipXAxisChanged( bool flipXAxis );
  void flipYAxisChanged( bool flipYAxis );
  void transposeXYChanged( bool transposeXY );
  void intensityWindowChanged( double intensityWindow );
  void intensityLevelChanged( double intensityLevel );

protected:
  virtual void resizeEvent( QResizeEvent* event );

private:
  ctkQImageView(const ctkQImageView &);
  ctkQImageView &operator=(const ctkQImageView &); 
};
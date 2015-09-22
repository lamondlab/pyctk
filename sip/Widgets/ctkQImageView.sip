/*=========================================================================

  Library:  PyCTK
  Filename: ctkQImageView.sip

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

class ctkQImageView : public QWidget {

%TypeHeaderCode
#include "ctkQImageView.h"
%End

public:
  ctkQImageView(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkQImageView();
  double xSpacing();
  double ySpacing();
  double sliceSpacing();
  double sliceThickness();
  double xPosition();
  double yPosition();
  double slicePosition();
  double positionValue();
  double xCenter();
  double yCenter();
  int sliceNumber() const;
  //int numberOfSlices() const;
  double intensityWindow() const;
  double intensityLevel() const;
  bool invertImage() const;
  bool flipXAxis() const;
  bool flipYAxis() const;
  bool transposeXY() const;
  double zoom();

public slots:
  void addImage(const QImage &image);
  void clearImages();
  void setSliceNumber(int slicenum);
  void setIntensityWindowLevel(double iwWindow, double iwLevel);
  void setInvertImage(bool invert);
  void setFlipXAxis(bool flip);
  void setFlipYAxis(bool flip);
  void setTransposeXY(bool transpose);
  virtual void keyPressEvent(QKeyEvent *event);
  virtual void mousePressEvent(QMouseEvent *event);
  virtual void mouseReleaseEvent(QMouseEvent *event);
  virtual void mouseMoveEvent(QMouseEvent *event);
  virtual void enterEvent(QEvent *event);
  virtual void leaveEvent(QEvent *event);
  void setCenter(double x, double y);
  void setPosition(double x, double y);
  void setZoom(double factor);
  void reset();
  virtual void update(bool zoomChanged = false, bool sizeChanged = false);

protected:
  virtual void resizeEvent(QResizeEvent *event);

signals:
  void xSpacingChanged(double xSpacing);
  void ySpacingChanged(double ySpacing);
  void sliceThicknessChanged(double sliceThickness);
  void xPositionChanged(double xPosition);
  void yPositionChanged(double yPosition);
  void slicePositionChanged(double slicePosition);
  void positionValueChanged(double positionValue);
  void sliceNumberChanged(int sliceNum);
  void zoomChanged(double factor);
  void xCenterChanged(double x);
  void yCenterChanged(double y);
  void numberOfSlicesChanged(int numberOfSlices);
  void invertImageChanged(bool invert);
  void flipXAxisChanged(bool flipXAxis);
  void flipYAxisChanged(bool flipYAxis);
  void transposeXYChanged(bool transposeXY);
  void intensityWindowChanged(double intensityWindow);
  void intensityLevelChanged(double intensityLevel);


};


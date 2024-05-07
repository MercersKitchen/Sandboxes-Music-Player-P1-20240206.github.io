float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight, albumCoverWidthAdjusted, albumCoverHeightAdjusted;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void divs() { //Access all of subprogram in order
  population();
  drawRects();
} //End DIVs
//
void population() {
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth-1;
  backgroundHeight = appHeight-1;
  albumCoverX = appWidth*18/100; //Percents Example
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
  albumCoverHeight = appHeight*6/16; //Fraction Example
  playButtonX = appWidth*3.5/8;
  playButtonY = appHeight*8/9;
  playButtonWidth = appWidth*1/8;
  playButtonHeight = appHeight*1/12;
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
} //End Population
//
void drawRects() { //Layout DIVs
  //Formula: rect(X, Y, Width, Height);
  //
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
} //End Draw Rectangles
//End DIVs SubProgram

//Global Variables
int appWidth, appHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
//
void setup() {
  //Display
  size(600, 400); //width, height //400, 500
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population
  albumCoverX = appWidth*18/100; //Percents Example
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
  albumCoverHeight = appHeight*6/16; //Fraction Example
  //
  //DIVs
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program

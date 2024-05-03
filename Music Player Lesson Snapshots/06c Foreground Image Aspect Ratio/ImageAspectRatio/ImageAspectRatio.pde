//Global Variables
int appWidth, appHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
PImage albumCoverImage;
//NOTE: paths are local variables
String albumCoverImagePath; //Lesson Note: Building Global Var from Local Var, System Resources
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
  //Variable Population
  //String albumCoverImagePath;
  String obiWan = "Obi-wan-star-wars-jedi-23864621-800-600";
  String extensionJPG = ".jpg";
  String pathway = "../../../Images/"; //Relative Pathway
  String landscape_Square = "Landscape & Square Images/";
  albumCoverImagePath = pathway + landscape_Square + obiWan + extensionJPG;
  albumCoverImage = loadImage( albumCoverImagePath );
  //
  //Image Aspect Ratio Calculations
  float smallerAlbumCoverDimension = ( albumCoverWidth < albumCoverHeight ) ? albumCoverWidth : albumCoverHeight ;
  int albumCoverImageWidthPixel = 800;
  int albumCoverImageHeightPixel = 600;
  float albumCoverAspectRatio = ;
  float largerAlbumCoverDimension = ; //Apsect Ratio
  //DIVs
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //End setup
//
void draw() {
  image( albumCoverImage, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight );
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program

//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage;
Boolean lightMode=false, darkMode=false, dayMode=false, nightMode=false;
//
void setup() {
  //Display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  String darthvader = "10-star-wars-darth-vader-portrait-wallpaper-1-325x485";
  String bike = "bike";
  //Control with IFs
  String backgroundImageName = bike;
  String extension = ".jpg";
  String pathway = "../../../Images/";
  String landscape_Square = "Landscape & Square Images/";
  String portrait = "Portrait/";
  //Control with IFs
  String path = pathway + landscape_Square + backgroundImageName + extension;
  //String path = pathway + portrait + backgroundImageName + extension;
  backgroundImage = loadImage( path );
  //
  //DIV
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup
//
void draw() {
  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() { //Key Board Short Cuts for Mouse Pressing Prototyping
  if ( key=='W' || key=='w' ) { //Day Mode, White Light Containing Blue Colour
    if () {} else {}
  } //End Day Mode
  //if () {} //End Night Mode
} //End keyPressed
//
//End MAIN Program

//Global Variables
int appWidth, appHeight, brightness=255;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage;
Boolean lightMode=true, dayMode=false, nightMode=false;
//Boolean darkMode=false; //See keyPressed for NOTE
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
  String pathway = "../../../../Images/";
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
  background(255); //Day Mode, Light Mode ON / OFF, WHITE allowed
  //NOTE: lightMode ON = max saturation
  if ( lightMode == true ) {
    brightness = 255;
  } else {
    brightness = 64; //USER Preference: lowest brightness
  }
  tint(255, brightness); //255 is max saturation, max colour
  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  println(lightMode);
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() { //Key Board Short Cuts for Mouse Pressing Prototyping
  if ( key=='W' || key=='w' ) { //Day Mode, White Light Containing Blue Colour
    if (  lightMode == false ) {
      lightMode = true;  //Light Mode ON
    } else {
      lightMode = false; //Dark Mode ON, no darkMode Boolean required
    }
  } //End Day Mode
  //if () {} //End Night Mode
} //End keyPressed
//
//End MAIN Program

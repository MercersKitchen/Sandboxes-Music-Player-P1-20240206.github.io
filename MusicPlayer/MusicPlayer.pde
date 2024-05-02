/* Documentation
 Library: use Sketch / Import Library / Add Library / Minim
 Suporting Website: https://code.compartmental.net/minim/
 - https://code.compartmental.net/minim/audioplayer_method_loop.html
 - loop(0) seems best for sound effects
 */
//Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer soundEffects1;
AudioPlayer playList1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
int appWidth, appHeight;
int size;
PFont generalFont;
String quit="QUIT";
//
color backgroundColour, darkBackground=0, whiteBackground=255; //Gray Scale, note much smaller than COLOR
color foregroundColour;
color white=255, yellow=#FFFF00, black=0, purple=#FF00FF; //Hexidecimal, see Tools / Colour Selector
Boolean dayMode=false; //App starts in Night Mode
//
void setup() {
  size(600, 400); //width, height //400, 500
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun";
  println(displayInstructions);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String extension = ".mp3";
  String quitButtonSound = "CarDoorClosing";
  String pathwaySoundEffects = "../Audio/SoundEffect/"; //Relative Path
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  //println ( path );
  soundEffects1 = minim.loadFile( path );
  //playList1 = minim.loadFile( path );
  //
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Harrington", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
  // Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
  //
  divs();
  //
  //Variable Population
  //if ( hour()>=9 && hour()<=17 ) backgroundColour = whiteBackground;
  //if ( hour()<9 && hour()>17 ) backgroundColour = darkBackground;
  if ( dayMode==true && hour()>=9 && hour()<=17 ) { //Day & Night Mode Clock Choice
    backgroundColour = whiteBackground;
    foregroundColour = black;
  } else {
    backgroundColour = darkBackground;
    foregroundColour = yellow; //Note: if(hour()<9&&hour()>17)
    if ( hour()>=9 && hour()<=17 ) foregroundColour = white;
  }
  //
  //soundEffects1.loop();
} //End setup
//
void draw() {
  //Display
  // background(backgroundColour); //Hardcoded Backgorund Colour Out, use IF to change
  if ( lightMode == true ) { //Boolean keyBind
    backgroundImageName = bike; //obiWan
    path = pathway + landscape_Square + backgroundImageName + extension;
    backgroundImage = loadImage( path );
  } else {
    backgroundImageName = darthvader;
    path = pathway + portrait + backgroundImageName + extension;
    backgroundImage = loadImage( path );
  }
  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  fill(foregroundColour);
  //
  //Quit Button
  //fill(purple);
  //if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) fill(yellow);
  fill(purple);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    fill(yellow);
    rect( quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7);
  } else {
    fill(purple);
  }
  fill(foregroundColour); //Resetting the Defaults
  //Quit, Text
  fill(foregroundColour); //Ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = appHeight*1/23; // Var based on ratio of display
  textFont(generalFont, size);
  text(quit, quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7); //Inside rect() above
  fill(foregroundColour); //Resetting the Defaults
  //
  //Albumn Cover Image
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  //


  //println(mouseX, mouseY);
  //
} //End draw
//
void keyPressed() { //Listener
  if (key=='Q' || key=='q')
  {
    soundeffect_1();
  }
  if (key==CODED && keyCode==ESC) //Hardcoded QUIT, no sound available
  {
    soundeffect_1();
  }
  //CAUTION, must return to "Request White, Light Mode"
  if ( key=='W' || key=='w' ) { //Day Mode, White Light Containing Blue Colour
    if (  lightMode == false ) {
      lightMode = true;  //Light Mode ON
    } else {
      lightMode = false; //Dark Mode ON, no darkMode Boolean required
    }
  } //End Day Mode
  //
  //soundEffects1.loop(0);
} //End keyPressed
//
void mousePressed() { //Listener
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
  {
    soundeffect_1();
  }
} //End mousePressed
//

// End MAIN Program

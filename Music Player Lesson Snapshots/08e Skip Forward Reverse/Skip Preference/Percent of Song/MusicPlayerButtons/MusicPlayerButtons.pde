import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Minim Library
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer[] playList = new AudioPlayer[1]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer soundEffects1; //"Play List" for Sound Effects
//
int appWidth, appHeight;
int skip = 5000;
//
void setup() {
  //Display
  size(600, 400); //width, height //400, 500
  //fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth; //width
  appHeight = displayHeight; //height
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun";
  //println(displayInstructions);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String pathwaySoundEffects = "../../../../../Audio/SoundEffect/"; //Relative Path
  String pathwayMusic = "../../../../../Audio/MusicDownload/"; //Relative Path
  String quitButtonSound = "CarDoorClosing";
  String groove = "groove";
  String extension = ".mp3";
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  //println ( "Relative Pathway:", pathwayMusic+groove+extension );
  String pathQuitButtonSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  String pathGrooveSong = sketchPath( pathwayMusic + groove + extension ); //Absolute Path
  //println ( "Absolute Pathway:", pathGrooveSong ); //pathQuitButtonSound
  soundEffects1 = minim.loadFile( pathQuitButtonSound );
  playList[0] =  minim.loadFile( pathGrooveSong ); // "" is compiler error
  //
  playList[0].loop(0); //Testing Only
  //
} //End setup
//
void draw() {
  println( "Song Position", playList[0].position(), "Song Length", playList[0].length() );
  println("Inspecting SKIP:", skip);
} //End draw
//
void keyPressed() {
  //Preferences, might need to be in draw()
  //Local, might need to be Global
  //int skip = 5000; //Basic Preference
  //if ( key=='H' || key=='h' ) skip = 5000 ;
  //if ( key=='G' || key=='g' ) skip = 10000 ;
  if ( key=='G' || key=='g' ) { //Two Preference Option
    if ( skip == 5000 ) {
      skip = 10000;
    } else {
      skip = 5000;
    }
  }
  //println(skip);
  //
  if ( key=='F' || key=='f' ) playList[0].skip( skip ) ; //SKIP Forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r' ) playList[0].skip( -skip ) ; //SKIP Reverse 1 second (1000 milliseconds)
} //End keyPressed
//
void mousePressed() {
} //End mousPressed
//
//End MAIN Program
//

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
int numberSoundEffects = 4; //DEV Verify, OS able to count (CS20 Solution)
int numberMusicSongs = 8; //DEV Verify, OS able to count (CS20 Solution)
AudioPlayer[] playList = new AudioPlayer[ numberMusicSongs ]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[ numberSoundEffects ]; //"Play List" for Sound Effects
int currentSong = 0; //JAVA starts at 0, no for all languages
//
int appWidth, appHeight;
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
  String pathwaySoundEffects = "../../../Audio/SoundEffect/"; //Relative Path
  String pathwayMusic = "../../../Audio/MusicDownload/"; //Relative Path
  String quitButtonSound = "CarDoorClosing";
  String groove = "groove";
  String extension = ".mp3";
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  //println ( "Relative Pathway:", pathwayMusic+groove+extension );
  String pathQuitButtonSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  String pathGrooveSong = sketchPath( pathwayMusic + groove + extension ); //Absolute Path
  //println ( "Absolute Pathway:", pathGrooveSong ); //pathQuitButtonSound
  soundEffects[0] = minim.loadFile( pathQuitButtonSound );
  playList[0] =  minim.loadFile( pathGrooveSong ); // "" is compiler error
  //
  //Note: Music starts before CANVAS ... Purpose of Player
  playList[currentSong].loop(0); //Testing Only
  //
} //End setup
//
void draw() {
  println( "Song Position", playList[currentSong].position(), "Song Length", playList[currentSong].length() );
  //
  //ERROR: only plays beginning of song before starting again
  //playList[currentSong].loop(0);
  //
  /*Note: For Loop Feature
   Easter Egg: program time for number of song loops
   Alternate to timer for music player, times to the end of a song
   if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
   if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()==-1 ) println("Looping Infinitely");
   */
   //
  if ( playList[currentSong].isPlaying() && !playList[currentSong].isLooping() ) println("Play Once");
  //
  /*
  if ( playList[currentSong].isPlaying() ) {
   //Empty IF, TRUE
   } else {
   //currentSong at end of FILE
   playList[currentSong].rewind();
   currentSong = currentSong + 1; //currentSong++; currentSong+=1
   playList[currentSong].play();
   }
   */
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousPressed
//
//End MAIN Program
//

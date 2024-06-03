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
int currentSong = numberMusicSongs - numberMusicSongs; //JAVA starts counting at 0, not for all languages
//
int appWidth, appHeight;
//
Boolean looping=false;
//Protects .rewind in draw() from being inappropriately accessed between .play(), .loop(1), & .loop()
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
  String pathwaySoundEffects = "../../../../Audio/SoundEffect/"; //Relative Path
  String pathwayMusic = "../../../../Audio/MusicDownload/"; //Relative Path
  String quitButtonSound = "CarDoorClosing";
  String groove = "groove";
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String ghostWalk = "Ghost_Walk";
  String newsroom = "Newsroom";
  String startYourEngines = "Start_Your_Engines";
  String theSimplest = "The_Simplest";
  String extension = ".mp3";
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  //println ( "Relative Pathway:", pathwayMusic+groove+extension );
  String pathQuitButtonSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  String pathGrooveSong = pathwayMusic + groove + extension; //Absolute Path
  String pathBeatYourCompetitionSong = sketchPath( pathwayMusic + beatYourCompetition + extension ); //Absolute Path
  String pathCyclesSong = sketchPath( pathwayMusic + cycles + extension ); //Absolute Path
  String pathEurekaSong = sketchPath( pathwayMusic + eureka + extension ); //Absolute Path
  String pathGhostWalkSong = sketchPath( pathwayMusic + ghostWalk + extension ); //Absolute Path
  String pathNewsroomSong = sketchPath( pathwayMusic + newsroom + extension ); //Absolute Path
  String pathStartYourEnginesSong = sketchPath( pathwayMusic + startYourEngines + extension ); //Absolute Path
  String pathTheSimplestSong = sketchPath( pathwayMusic + theSimplest + extension ); //Absolute Path
  //println ( "Sound Effect Absolute Pathway:", pathQuitButtonSound );
  //println ( "1. Absolute Pathway:", pathGrooveSong );
  //println ( "2. Absolute Pathway:", pathBeatYourCompetitionSong );
  //println ( "3. Absolute Pathway:", pathCyclesSong );
  //println ( "4. Absolute Pathway:", pathEurekaSong );
  //println ( "5. Absolute Pathway:", pathGhostWalkSong );
  //println ( "6. Absolute Pathway:", pathNewsroomSong );
  //println ( "7. Absolute Pathway:", pathStartYourEnginesSong );
  //println ( "8. Absolute Pathway:", pathTheSimplestSong );
  soundEffects[0] = minim.loadFile( pathQuitButtonSound );
  //
  //Note: currentSong, currentSong+=1, currentSong++
  //println( "The current song is:", currentSong );
  //
  playList[0] =  minim.loadFile( pathGrooveSong ); // "" is compiler error
  //println( "1. The current song is:", currentSong, pathGrooveSong );
  //playList[1] =  minim.loadFile( pathBeatYourCompetitionSong ); // "" is compiler error
  //println( "2. The current song is:", currentSong, pathBeatYourCompetitionSong );
  //playList[currentSong++] =  minim.loadFile( pathCyclesSong ); // "" is compiler error
  //println( "3. The current song is:", currentSong );
  //playList[currentSong++] =  minim.loadFile( pathEurekaSong ); // "" is compiler error
  //println( "4. The current song is:", currentSong );
  //playList[currentSong++] =  minim.loadFile( pathGhostWalkSong ); // "" is compiler error
  //println( "5. The current song is:", currentSong );
  //playList[currentSong++] =  minim.loadFile( pathNewsroomSong ); // "" is compiler error
  //println( "6. The current song is:", currentSong );
  //playList[currentSong++] =  minim.loadFile( pathStartYourEnginesSong ); // "" is compiler error
  //println( "7. The current song is:", currentSong );
  //playList[currentSong++] =  minim.loadFile( pathTheSimplestSong ); // "" is compiler error
  //println( "8. The current song is:", currentSong );
  //
  //Random Start Prototype
  println( "Current Song, Random Number:", int ( random(0, 8) ) );
  //
  //Note: Music starts before CANVAS ... Purpose of Player
  //Note: See Easter Egg about Time-On and Looping Songs
  //playList[0].loop(); //Testing Only, change parameter to the accruate number
  //
} //End setup
//
void draw() {
  
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

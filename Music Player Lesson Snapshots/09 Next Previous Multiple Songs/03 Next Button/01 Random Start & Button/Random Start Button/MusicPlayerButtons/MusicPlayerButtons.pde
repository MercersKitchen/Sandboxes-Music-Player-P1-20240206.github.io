import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Minim Library
//
//Global Variables
Minim minim ; //creates object to access all functions
int numberSoundEffects = 4; //DEV Verify, OS able to count (CS20 Solution)
int numberMusicSongs = 9; //DEV Verify, OS able to count (CS20 Solution)
String[] filePathNameMusic = new String[numberMusicSongs];
String[] filePathNameSoundEffect = new String[numberSoundEffects];
AudioPlayer playList; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer soundEffects; //"Play List" for Sound Effects
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
  String pathwaySoundEffects = "../../../../../../Audio/SoundEffect/"; //Relative Path
  String pathwayMusic = "../../../../../../Audio/MusicDownload/"; //Relative Path
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
  filePathNameMusic[currentSong] = sketchPath( pathwayMusic + groove + extension ); //Absolute Path
  //Note: sketchPath() used for pathways in AudioRecorder, thus choosing relative paths below
  //println( currentSong, filePathNameMusic[currentSong] );
  //Equivalent Functions: ++ (buggie) | +=1 (functions better)
  filePathNameMusic[currentSong+=1] = pathwayMusic + beatYourCompetition + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  filePathNameMusic[currentSong+=1] = pathwayMusic + cycles + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  filePathNameMusic[currentSong+=1] = pathwayMusic + eureka + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  filePathNameMusic[currentSong+=1] = pathwayMusic + ghostWalk + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  filePathNameMusic[currentSong+=1] = pathwayMusic + newsroom + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  filePathNameMusic[currentSong+=1] = pathwayMusic + startYourEngines + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  filePathNameMusic[currentSong+=1] = pathwayMusic + theSimplest + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  //
  filePathNameSoundEffect[0] = pathQuitButtonSound;
  //println ( "Absolute Pathway:", filePathNameSoundEffect[0] ); //pathQuitButtonSound
  //
  soundEffects = minim.loadFile( filePathNameSoundEffect[0] );
  //
  //Random Start Prototype
  //println( "Current Song, Random Number:", int ( random(numberMusicSongs-numberMusicSongs, numberMusicSongs) ) );
  //
  //Note: Music starts before CANVAS ... Purpose of Player
  //Note: See Easter Egg about Time-On and Looping Songs
  println(currentSong, filePathNameMusic[currentSong]);
  currentSong = numberMusicSongs-numberMusicSongs; //Resetting the Defaults
  playList =  minim.loadFile( filePathNameMusic[currentSong] ); // "" is compiler error
  //Note: music player "plays" one loaded song at a time
  playList.loop(0); //Testing Only
  //
} //End setup
//
void draw() {
  //Random Start Prototype
  println( "Current Song, Random Number:", currentSong );
  //
  //AutoPlay
  if ( playList[currentSong].isPlaying() ) {
    if ( !playList[currentSong].isLooping() && looping==true) looping=false; //Protect .loop() from .rewind() as STOP Loop
  } else if ( looping == false && !playList[currentSong].isPlaying() && playList[currentSong].length() < 180000 ) { //PAIN Minutes is 3 minutes, 180s, 180,000ms
    //TRUE: if song is less than 3 minutes, STOP, I want to hear it from the beginning
    //.pause() in keyPressed() {} is actually STOP
    playList[currentSong].rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
  } else if ( looping == false && !playList[currentSong].isPlaying()  && ( playList[currentSong].position() > playList[currentSong].length()*0.75 ) ) { //Calc PAIN # as % of Song
    //TRUE: if 75% played, we need a STOP & Rewind Button
    //.pause() in keyPressed() {} is actually STOP
    playList[currentSong].rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
  } else {
    /* Future coding
     currentSong = currentSong + 1; //currentSong++; currentSong+=1
     playList[currentSong].play();
     */
  }
  //
} //End draw
//
void keyPressed() {
  //Randomly Pick another song in the Play List
  if ( key=='A' || key=='a') currentSong = int ( random( numberMusicSongs-numberMusicSongs, numberMusicSongs ) );
  //
} //End keyPressed
//
void mousePressed() {
} //End mousPressed
//
//End MAIN Program
//

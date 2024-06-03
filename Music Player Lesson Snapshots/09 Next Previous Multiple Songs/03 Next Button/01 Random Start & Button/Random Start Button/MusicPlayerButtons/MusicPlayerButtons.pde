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
  String pathGrooveSong = pathwayMusic + groove + extension;
  String pathBeatYourCompetitionSong = pathwayMusic + beatYourCompetition + extension; 
  String pathCyclesSong = pathwayMusic + cycles + extension ;
  String pathEurekaSong = pathwayMusic + eureka + extension ;
  String pathGhostWalkSong = pathwayMusic + ghostWalk + extension ;
  String pathNewsroomSong = pathwayMusic + newsroom + extension ; 
  String pathStartYourEnginesSong = pathwayMusic + startYourEngines + extension ; 
  String pathTheSimplestSong = pathwayMusic + theSimplest + extension ; 
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
  playList[currentSong] =  minim.loadFile( pathGrooveSong ); // "" is compiler error
  //println( "1. The current song is:", currentSong, pathGrooveSong );
  playList[currentSong+=1] =  minim.loadFile( pathBeatYourCompetitionSong ); // "" is compiler error
  //println( "2. The current song is:", currentSong, pathBeatYourCompetitionSong );
  playList[currentSong++] =  minim.loadFile( pathCyclesSong ); // "" is compiler error
  //println( "3. The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathEurekaSong ); // "" is compiler error
  //println( "4. The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathGhostWalkSong ); // "" is compiler error
  //println( "5. The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathNewsroomSong ); // "" is compiler error
  //println( "6. The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathStartYourEnginesSong ); // "" is compiler error
  //println( "7. The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathTheSimplestSong ); // "" is compiler error
  //println( "8. The current song is:", currentSong );
  //
  //Random Start Prototype
  //println( "Current Song, Random Number:", int ( random(0, 8) ) );
  //
  //Note: Music starts before CANVAS ... Purpose of Player
  //Note: See Easter Egg about Time-On and Looping Songs
  //playList[0].loop(); //Testing Only, change parameter to the accruate number
  //
} //End setup
//
void draw() {
  println( currentSong, playList[currentSong]);
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
} //End draw
//
void keyPressed() {
  if ( key=='A' || key=='a' ) currentSong = int ( random( numberMusicSongs - numberMusicSongs, numberMusicSongs ) ); //Note formuale for "Drag and Drop"
  //
  if ( key=='P' || key=='p' ) { //Play Pause Button
    //How much of the song should play before the Pause Button is actually a rewind button
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  } //End Play Pause Button
  if ( key=='L' || key=='l' ) { //Loop Once
    playList[currentSong].loop(1);
    looping = true;
  } //End Loop Once
  if ( key=='I' || key=='i' ) { //Loop Infinite Times
    playList[currentSong].loop();
    looping = true;
  } //End Loop Infinite Times
  if ( key=='S' || key=='s' ) { // STOP Button
    playList[currentSong].pause();
    playList[currentSong].rewind(); //Affects LOOP Times
    looping = false;
  } // End STOP Button
  //
} //End keyPressed
//
void mousePressed() {
} //End mousPressed
//
//End MAIN Program
//

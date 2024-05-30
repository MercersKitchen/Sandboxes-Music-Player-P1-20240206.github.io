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
int currentSong = numberSoundEffects - numberSoundEffects; //JAVA starts counting at 0, not for all languages
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
  String pathGrooveSong = sketchPath( pathwayMusic + groove + extension ); //Absolute Path
  String pathBeatYourCompetitionSong = sketchPath( pathwayMusic + beatYourCompetition + extension ); //Absolute Path
  String pathCyclesSong = sketchPath( pathwayMusic + cycles + extension ); //Absolute Path
  String pathEurekaSong = sketchPath( pathwayMusic + eureka + extension ); //Absolute Path
  String pathGhostWalkSong = sketchPath( pathwayMusic + ghostWalk + extension ); //Absolute Path
  String pathNewsroomSong = sketchPath( pathwayMusic + newsroom + extension ); //Absolute Path
  String pathStartYourEnginesSong = sketchPath( pathwayMusic + startYourEngines + extension ); //Absolute Path
  String pathTheSimplestSong = sketchPath( pathwayMusic + theSimplest + extension ); //Absolute Path
  println ( "Absolute Pathway:", pathTheSimplestSong ); //pathQuitButtonSound
  soundEffects[0] = minim.loadFile( pathQuitButtonSound );
  //
  //Note: currentSong, currentSong+=1, currentSong++
  println( "The current song is:", currentSong );
  //
  playList[currentSong] =  minim.loadFile( pathGrooveSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  playList[currentSong+=1] =  minim.loadFile( pathBeatYourCompetitionSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathCyclesSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathEurekaSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathGhostWalkSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathNewsroomSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathStartYourEnginesSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  playList[currentSong++] =  minim.loadFile( pathTheSimplestSong ); // "" is compiler error
  println( "The current song is:", currentSong );
  currentSong = 7;
  println( "The current song is:", currentSong );
  //
  //Note: Music starts before CANVAS ... Purpose of Player
  //Note: See Easter Egg about Time-On and Looping Songs
  playList[currentSong].loop(0); //Testing Only, change parameter to the accruate number
  //
} //End setup
//
void draw() {
  //Instrpection of Booleans and Associated Varaiables
  println( "Song Position", playList[currentSong].position(), "Song Length", playList[currentSong].length() );
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  //println("Keyboard Looping Question", looping);
  if ( !playList[currentSong].isPlaying() ) println( "Nothing is playing, Pick a Song" );
  if ( playList[currentSong].isPlaying() && !playList[currentSong].isLooping() ) println("Play Once");
  //
  /* Auto Play Code for Future Use
   Contains instructions from Key Board Short Cuts
   Note: PAIN Thresholds, 3 minutes & 75%, can be variables
   Note: Variables can be set in a Menu Button
   */
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
  /* Previous IF-Else
   if ( playList[currentSong].isPlaying() ) {
   //Empty IF, TRUE
   } else {
   playList[currentSong].rewind(); //CAUTION: !.isPlaying() & .rewind() = STOP
   }
   */
} //End draw
//
void keyPressed() {
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
void mousePressed() {} //End mousPressed
//
//End MAIN Program
//

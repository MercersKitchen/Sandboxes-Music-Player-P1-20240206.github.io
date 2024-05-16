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
Boolean looping=false;
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
  //Note: See Easter Egg about Time-On and Looping Songs
  //playList[currentSong].loop(0); //Testing Only
  //
} //End setup
//
void draw() {
  println( "Song Position", playList[currentSong].position(), "Song Length", playList[currentSong].length() );
  //
  //ERROR: only plays beginning of song before starting again
  //playList[currentSong].loop(0);
  //
  /* Note: For Loop Feature
   Easter Egg: program time for number of song loops
   Alternate to timer for music player, times to the end of a song
   */
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  println("Keyboard Looping Question", looping);
  //
  if ( !playList[currentSong].isPlaying() ) println( "Nothing is playing, Pick a Song" );
  if ( playList[currentSong].isPlaying() && !playList[currentSong].isLooping() ) println("Play Once");
  //
  /* Auto Play Code for Future Use
   Contains instructions from Key Board Short Cuts
   Note: PAIN Thresholds, 3 minutes & 75%, can be variables
   Note: Variables can be set in a Menu Button
   */
  if ( playList[currentSong].isPlaying() ) {
    //Empty IF is FALSE
  } else if ( looping== false && !playList[currentSong].isPlaying() && playList[currentSong].length() < 180000 ) { //PAIN Minutes is 3, 180s, 180,000ms
    //TRUE: if song is less than 3 minutes, STOP, I want to hear it from the beginning
    //Pause is actually STOP
    playList[currentSong].rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
  } else if ( looping== false && !playList[currentSong].isPlaying()  && ( playList[currentSong].position() > playList[currentSong].length()*0.75 ) ) { //Calc PAIN #
    //TRUE: if 75% played, we need a STOP & Rewind Button
    playList[currentSong].rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
    //
    /* Future coding
     currentSong = currentSong + 1; //currentSong++; currentSong+=1
     playList[currentSong].play();
     */
  } else {
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
    if ( playList[currentSong].isPlaying() ) { //Note, debugging: use true==true & true==false
      playList[currentSong].pause(); //playList[currentSong].play();
    } else {
      playList[currentSong].play(); //playList[currentSong].pause();
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
    
    
    // CONTINUE HERE
    //looping = false;
    
    
    
    
    
    
    
    
    
  } // End STOP Button
} //End keyPressed
//
void mousePressed() {
} //End mousPressed
//
//End MAIN Program
//

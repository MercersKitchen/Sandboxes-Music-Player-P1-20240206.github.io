
https://github.com/Intro-CS-App-Dev-and-Deploy/App-Development/tree/main/Music%20Program/Mutliple%20Songs%20with%20Arrays

---

To Delete


Change the setup() .loop() to be the song number

void draw () {}

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
  //
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
  /* Previous IF-Else
   if ( playList[currentSong].isPlaying() ) {
   //Empty IF, TRUE
   } else {
   playList[currentSong].rewind(); //CAUTION: !.isPlaying() & .rewind() = STOP
   }
   */

void keyPressed () {} 

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

---

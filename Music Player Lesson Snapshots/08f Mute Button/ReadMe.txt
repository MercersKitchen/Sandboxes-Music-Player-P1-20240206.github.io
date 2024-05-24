
Note, actual code

//Note: Mute has NO built-in pause button and NO built-in rewind if the song is near the end of the file
    //Note: this MUTE algorithm is not smart
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      //If the song is not playing, it should be rewound to the beginning
      song1.mute();
    }
  }//End Muted button
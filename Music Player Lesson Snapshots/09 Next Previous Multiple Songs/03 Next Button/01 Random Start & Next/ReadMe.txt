
println( "Current Song # is:", currentSong );
      playList.pause(); //Note: computer plays harddrive file,
      playList.rewind(); //     mulitple files will play at the same time
      //Try Catch solves arrayListOutOfBounds
      if ( currentSong >= numberMusicSongs-1 ) { //Note: posssible error when !=, better code ... currentSong<0
        currentSong = 0;
      } else {
        currentSong++;
      }
      println( "Current Song changed to:", currentSong );
      playList =  minim.loadFile( filePathNameMusic[currentSong] );
      playList.play();

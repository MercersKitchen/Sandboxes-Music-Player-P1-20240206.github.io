
Examples

Note: to find more examples, inspect the OS reading the .mp3 in /Properties
Note 2: if the file.STRING() is empty, printing | inspection will return NULL
Note 3: able to IF try-catch for NULL and print SPACE ( i.e. " ")

println( "File Name: ", songMetaData1.fileName() );
println( "Song Length (in milliseconds): ", songMetaData1.length() );
println( "Song Length (in seconds): ", songMetaData1.length()/1000 );

println( "Song Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );

println( "Song Title: ", songMetaData1.title() );
println( "Author: ", songMetaData1.author() ); //Song Writer or Performer
println( "Composer: ", songMetaData1.composer() ); //Song Writer
println( "Orchestra: ", songMetaData1.orchestra() );
println( "Album: ", songMetaData1.album() );
println( "Disk: ", songMetaData1.disc() );
println( "Publisher: ", songMetaData1.publisher() );
println( "Date Release: ", songMetaData1.date() );
println( "Copyright: ", songMetaData1.copyright() );
println( "Comment: ", songMetaData1.comment() );
println( "Lyrics: ", songMetaData1.lyrics() );
println( "Track: ", songMetaData1.track() );
println( "Genre: ", songMetaData1.genre() );
println( "Encoded: ", songMetaData1.encoded() ); //how a computer reads the file
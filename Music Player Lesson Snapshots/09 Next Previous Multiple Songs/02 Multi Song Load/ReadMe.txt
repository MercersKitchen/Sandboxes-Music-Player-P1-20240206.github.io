
Code to Attend in Global Variables & setup()

int currentSong = 0;
int currentSong = numberSoundEffects - numberSoundEffects;

String beatYourCompetition = "Beat_Your_Competition";
String cycles = "Cycles";
String eureka = "Eureka";
String ghostWalk = "Ghost_Walk";
String newsroom = "Newsroom";
String startYourEngines = "Start_Your_Engines";
String theSimplest = "The_Simplest";

String pathBeatYourCompetitionSong = sketchPath( pathwayMusic + beatYourCompetition + extension );
String pathCyclesSong = sketchPath( pathwayMusic + cycles + extension );
String pathEurekaSong = sketchPath( pathwayMusic + eureka + extension );
String pathGhostWalkSong = sketchPath( pathwayMusic + ghostWalk + extension );
String pathNewsroomSong = sketchPath( pathwayMusic + newsroom + extension );
String pathStartYourEnginesSong = sketchPath( pathwayMusic + startYourEngines + extension );
String pathTheSimplestSong = sketchPath( pathwayMusic + theSimplest + extension );

//Note: currentSong++
//Note" currentSong+=1
playList[1] =  minim.loadFile( pathBeatYourCompetitionSong );
playList[2] =  minim.loadFile( pathCyclesSong );
playList[3] =  minim.loadFile( pathEurekaSong );
playList[4] =  minim.loadFile( pathGhostWalkSong );
playList[5] =  minim.loadFile( pathNewsroomSong );
playList[6] =  minim.loadFile( pathStartYourEnginesSong );
playList[7] =  minim.loadFile( pathTheSimplestSong );

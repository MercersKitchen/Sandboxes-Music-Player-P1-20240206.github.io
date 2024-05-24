
AudioMetaData songMetaData1; //"Song Meta One"
//
PFont titleFont;
color black = #000000;
color purple = #2C08FF;
//

minim = new Minim(this); //load from data directory, loadFile should also load from project folder
song1 = minim.loadFile("groove.mp3");
songMetaData1 = song1.getMetaData(); //reads song meta 1, like song 1, mimicing array notation
titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
//

println("Start of Console");
println("Click the Console to Finish Starting this program"); //Review of OS-level button
println( "Title: ", songMetaData1.title() ); //Introduction of Key:Value Pairs (similar to websites)

void draw() {
  background (black); //Reminder of OS-Level Button
  rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 30); //Change the number until it fits, largest font size
  text(songMetaData1.title(), width*1/4, height*0, width*1/2, height*1/10);
  fill(255); //Reset to white for rest of the program
}//End draw()



More Advanced Examples:

https://github.com/Intro-CS-App-Dev-and-Deploy/App-Development/tree/main/Music%20Program/Minim%20Single%20Song%20Functions/07%20Meta%20Data


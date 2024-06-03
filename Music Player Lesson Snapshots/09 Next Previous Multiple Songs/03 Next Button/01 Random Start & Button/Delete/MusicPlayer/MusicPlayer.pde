//Global Variables
int appWidth, appHeight;
//
void setup() {
  println("HelloWorld"); //print("Hello"); print("World");
  //Concatenation & Inspecting Variables with Character Escapes
  println("Width: "+width+"\tHeight: "+height+"\t\tDisplay Width: "+displayWidth+"\tDisplay Height: "+displayHeight);
  //NULL: all values are NULL until size(), arithemtic errors
  println( "Example Formula: add 1 to the width", width+1 );
  //
  //Display: CANVAS & Full Screen
  //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //println(appWidth, appHeight);
  //Display Geomtry: Landscape, Portrait, Square
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun"; 
  println(displayInstructions);
  //CONTINUE HERE: concatenation & display geometry
  //declare landscape, portrait, or square with ternary operator
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program

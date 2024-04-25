/*
 Purpose
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 
 Note: Having both rect() with different textAlign illustrates serifs
       and how center is different than bottom or baseline
 */
//
//Global Variables
float titleX, titleY, titleWidth, titleHeight;
//float footerX, footerY, footerWidth, footerHeight;
PFont titleFont;
String title="Wahoo!";
//String footer="Wonderful Effort!";
int size;
color resetDefaultColour=#FFFFFF, purple=#FF00FF;
//Note: Dark, Light, & Night Modes not considered
//
//Display Geometry, Display Orientation: landscape, portrait, square
fullScreen();
//
//Concatenation & Inspection of Variables
println("Display Monitor:", "width:"+displayWidth, "\theight:"+displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
//footerX = titleX;
//footerY = appHeight*8/10;
//footerWidth = titleWidth;
//footerHeight = titleHeight;
//
//Single Executed Code: Font SETUP
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts to choose from, then createFont
size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
titleFont = createFont("Harrington", size);
//bottomFont = createFont("", size); //Note: more than one font allowed
// Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
//
//DIVs & rect()s: rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
//rect(footerX, footerY, footerWidth, footerHeight);
//
//Repeated Code: draw()ing text
fill(purple); //Ink
textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = appHeight*1/13; // Var based on ratio of display
textFont(titleFont, size);
text(title, titleX, titleY, titleWidth, titleHeight);
//text(footer, footerX, footerY, footerWidth, footerHeight);
fill(resetDefaultColour);
//

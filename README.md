# Sandboxes Music PlayeR
CS10 Main Project

# To Do List
- [ ] Item 1
- [x] Item done
- [ ] <del>I do not want to do this<del>
- [ ] Last attempted 20240212
- [ ] TBA

---

# User Preferences

### Case Study
- [ ] Unchanging Player Text (i.e. Quit Button)
- [ ] Unchanging Player Buttons: images or 2D images
- [ ] Unchanging Images | Fan Photos for Song
- [ ] Song Time Played
- [ ] Length of Song

- [ ] Meta Data: TBA

### Abstract User Preferences
- [ ] Auto Play Button PAIN Thresholds
  - Minimum Minutes before touching music player after pressing play ( PAUSE turns to STOP)
  - Minimum % of song left is paused before the end of the song ( PAUSE turns to STOP ) 
  - PAIN Thresholds are Preferences in a Settings Menus, or variables that could be changed (see AutoPlay Snapshot for notes)
- [ ] Looping & Play
  - Looping ONCE
  - Looping Infinite Number of Times
  - Programmed number of loops of a play list (Advanced Option, not taught and only discussed)
- [ ] TBA

### Easter Eggs: Auto Play to and Program Exits after a certain amount of time
- [ ] Loop Feature to End after a Specific Number of Songs Loop
- [ ] User chooses to Play Music Play for X minutes (i.e. 10 minutes)
  - Fall asleep feature
- [ ] Music player start paying
- [ ] When a song starts, it subtracts from the X minutes to play
- [ ] Computer tracks a "running total" through subtraction
- [ ] When total minutes <= zero, exit()

---

# Progression
- [x] Website Option for Promotion, Marketplace
- [x] GitHub Repository ( i.e. github.io ) and Submission through Google CLASSROOM Google FORM
- [x] Start Processing IDE, Introduction to Buttons, etc.
- [x] Create Processing Boilerplate for Android Development (Interactive Visually-based Program) & ID Java Compiler Folder
  - Global Variables, setup, draw, keyPressed, mousePressed, End
- [x] Google Search of Music Player Images ( must end with IMAGE.fileExtension like IMAGE.jpg, etc. )
- [x] Upload of Paper Case Study | Downloaded Image
  - Purpose: must know what music player looks like because when we start to think like a computer it is easy to get lost "in a forest of detailed trees"
  - Graphical User Interface (GUI)
  - Starting Place, not ending place
  - See Mr. Mercer's Google Drive for Paper Images (https://drive.google.com/drive/folders/1zW66hJX31XduL0i_nGVJh15geNLlsdV8) 
- [x] (100% Assignment, must be done or cannot compile code) Installation of Minim in Processing.pde IDE
  - File-Sketch / Import Library / Manage Library / Contribution Manager 
  - Verify Minim is installed as a "Contributed Library"
- [x] Upload of Music & Sound Effects (.mp3 is Internet Standard)
  - Minimum 3 songs, max 5, see https://studio.youtube.com/channel/UCkhFasU2ZSgusy_b1l4bcHg/music
  - Minimum one sound effect, max 5
- [x] All text on Case Study typed into ReadMe.md file and spell-checked
- [x] HelloWorld: println(), print(), display key variables, concatenation, inspecting variables, character escapes, display geometry, ternary operators
- [x] Drawing Rectangles: using Case Study, strongly formatted languages, variable types & casting, reading code like a book
  - "A computer knows where the CANVAS is, where the mouse is, and cannot learn to put these together"
  - "A developer makes common sense or intuitive experiences"
  - "Developer must know what goes in these rectangles"
  - Layout DIVISIONS of a page
  - Local Variables for calculations, garbage collection
  - Global Variables for memories
  - background rect(), variables, using inequalities to create a button, WINDOWS System Activation of Canvas or fullScreen()
  - foreground rect() and QUIT Button
  - Primitive Variables, location-name and value: integers (int & long), decimals (float & double)
  - CAUTION: these rect()s get TURNED OFF, except for the Quit Button
  - Note: background(color) is same as background rect() without variables for button
- [x] Creating DIVs: from Case Study, paper folding activity & record DIV Ratios, rect(), variable names, the populate ratios of Display Geometry
  - Quick activity: copy 3 rectangles from your Case Study (one image, one 2-D shapes, & one text)
  - Follow demo on developing ratios: fractions, percent, or referent measure & area calculate
  - Use counting of fractions and decimals to "move rectangles" (easier method is mid-pointing and multiples of 1/2)
  - Use Percent as a fraction: easier overall method since denominator is 100, numerator can be guessed
  - [OPTINAL] Use area calculations and referent measures with FOR Loops (See Demonstration by Mr. Mercer)
  - [OPTINAL] Use Linear Algebra or Calculus (Able to talk with Mr. Mercer about developing this method)
- [ ] Hackathon: Grade Progress of DIVs
  - Reminder: 2-day hackathon
	- #1: copy rect(X, Y, Width, Height) for each rectangle of GUI (Number from Case Study must be known)
	- #2: name rect() variables according to type of rectangle on GUI
	- #3: copy variables to Global Variables to initialize these on the hard-drive
	- #4: Population: Typing Magic
	- #5: Population: copy display-variable (i.e. appWidth & appHeight)
	- #6: Population: use fraction | percent | formulaic method using area referent measure to develop ratio of display
- [ ] Develop the Attributes of the QUIT Button, paper only
  - Rectangle: two rectangles giving depth
  - Image v 2D shape (two lines) v Text
  - Text: QUIT v Hover-over "Close" Pop-up
  - Features like hover-over to change the rectangle fill and ink
  - Colours: blue light affects our eyes over time and our brains specifically at night
	- Daytime: Light Mode v Dark Mode (limit blue light in white colour as a area calculation)
	- Night Time: Limit all blue light (yellow on black)
  - Student Choice: find a night mode colour for Purple (high level of blue light content)
  - Teacher Choice of Colours: count in Tools / Color Selector
	- Black: #000000
	- White: #FFFFFF
	- Purple: #FF00FF
	- Yellow: #FFFF00
	- Daytime, Dark Mode: White on Black (no limit on blue light)
	- Daytime, Light Mode: Black on White (no limit on blue light)
	- Nighttime, all: Yellow on Black, all other colours can must limit blue light
- [ ] Demonstrate Code for Exemplar Quit Button
  - Text Prototyped in Static Program, Copied to Dynamic musicPlayer: learn about boilerplate sections
  - NOTE: actual text incorporates colours from above creating effect with hoverover
  - Drawing in draw(), Boolean update in draw()
  - Trigger: mousePress
  - Confirmation: hover-over
  - Action: Close WINDOW, End Program
  - Advanced: save program state for next execution ()
- [ ] Mini Hackathon: Text Assignment: static program, bottom footer repeating the header-title
- [ ] Grade interactive design of Quit Button (template for all buttons)
- [x] Sound for QUIT Button, see mousePressed
  - [x] delay based on real crystal time (see CS20 Time keeper, create a prototype for this)
  - [x] using TAB to copy and paste code
    - VOID in MAIN Program
	- VOID in TAB: Music TAB ( note: copy global variables, setup() and draw() later )
  - [ ] OPTIONAL: delay based on second(), see delay and second code in Processing.org / Reference
- [ ] Grouping: DIVs, easier to find and add to
  - Global Variables
  - rectSetup() listing of all rect() to visualize DIVs
  - able to turn these off automatically 
- [x] Code for Timer, required to pause for sound effects, introduction to a listener from draw(), and a Boolean
- [x] Images, Prototyping Program: Background for Day Mode (Light or Dark Mode) and Night Mode
- [x] Images, Prototyping Program: example Key Bind for User Preference between Day Mode's Light and Dark Mode
  - CAUTION: Dark Mode is safer
  - NOTE: the current Market Place Folder is in Light Mode, so it needs to be asked for
- [x] Images, Music Program: Background Image Choices
- [x] Images, Music Program: Foreground Image (Image for One Song, Groove.mp3)
- [ ] 2D Shapes, Music Program: GUI Music Player Buttons and Other Buttons as needed

- [ ] TBA

- [x] Music Buttons Prototyped in VOID keyPressed(){}
- [x] KeyPressed: start Play ONCE
- [x] KeyPressed: start Loop ONCE (Play twice)
- [x] KeyPressed: start Loop Infinite
- [x] KeyPressed: STOP Song
- [x] Draw: reset loop to 0, or stop song (looping count should end too)
- [ ] TBA


- [ ] TBA

### Ideas

- [ ] initiation, declaration, naming, and values
- [ ] TBA
- [ ] Combining single line IFs to IF-ELSE to correct problems of appWidth&Height equaling zero and breaking the app
- [ ] Compound AND OR conditionals the same as nested IFs
- [ ] Example Feedback statements needed display is too small for minimum CANVAS size
- [ ] Program must be in fullScreen() when deployed
- [ ] Purpose: using rect() parameters as variables in "divisions of page" metaphor leading to advanced Geometry Ratios, buttons, text, and images code
- [ ] Exemplar is static and flat (comments will point toward dynamic sections)
- [ ] CAUTION: might start with pixel numbers related to size() as if on a modified coordinate plane, BUT, ratios are better (see paperfolding lesson by Mr. Mercer)
similar to DIV's in website design
- [ ] Introduce separation of initiating & populating variables
- [ ] Introduce color variable, hexadecimal, RGB Notation, random feature with inequality boundary, and IDE Color Sector
- [ ] IDE Color Selector: Tools / Color Selector
- [ ] Note about learning the hard way: video explores typing and reading in code, what different parameters to, and curiosity in prototyping a section of code
- [ ] Note about primitive-version-control: these are "snapshots" of what coding a prototype might look like
- [ ] Visualizing where text will be located with a rectangle
- [ ] Choosing a font and size
- [ ] Choosing ink
- [ ] Simple Typography choices (see Processing.org / Reference / Search Typography for other choices)
- [ ] Debugging "white space" inside the font to choose a font size based on Display Geometry
- [ ] Pick a screen size & orientation
- [ ] Draw a rectangle in the middle of the canvas
- [ ] Add hardcoded and random colours
- [ ] Introduce dark & light Mode
- [ ] Introduce Night Reading Mode
- [ ] background()
- [ ] stroke(), noStroke()
- [ ] strokeWeight()
- [ ] fill(), noFill()
- [ ] random()
- [ ] Single Line IF to make choices about code to run at specifies times
- [ ] Night Mode happening at night or toggle button

- [ ] ADVANCED: auto reading list of music in folder containing music, see Intermediate or Advanced Memories

---

# To Include
- [ ] Case Study: link to Google Video for Paper and Pencil Prototyping
- [ ] Population of Variables
- [ ] Setup() TABS
- [ ] Draw() TABS
- [ ] TBA

---

# Website Promo
- [ ] include download button
- [ ] promote Market Place 
- [ ] Old School Arcade

- [ ] See Website to Learn Webpages

---

# To Include, TEACHER ONLY Links
- Ensure all Snapshots copied here: https://github.com/Intro-CS-App-Dev-and-Deploy/App-Development

- Take Lessons from Here: https://github.com/Intro-CS-App-Dev-and-Deploy/Overview

- Able to delete the following Repositories when ...
- Code is copied, checked off
- ReadMe is copied and organized here, crossed out


- [x] <del> Hello World in Console and Rectangles: https://github.com/Intro-CS-App-Dev-and-Deploy/Hello-World </del>
- [ ] Drawing a Rectangle: https://github.com/Intro-CS-App-Dev-and-Deploy/Drawing-a-Rectangle
- [x] Text in a Rectangle (Static & Dynamic Lessons): https://github.com/Intro-CS-App-Dev-and-Deploy/Rect-Application-Text/tree/main
- [ ] Images in a Rectangle: https://github.com/Intro-CS-App-Dev-and-Deploy/Rect-Application-Image
- [ ] TBA: https://github.com/Intro-CS-App-Dev-and-Deploy/Overview#using-rect-drawing-multiple-shapes
- [ ] TBA: https://github.com/Intro-CS-App-Dev-and-Deploy/Composite-Shapes
- [ ] TBA: https://github.com/Intro-CS-App-Dev-and-Deploy/Overview?tab=readme-ov-file#practice-makes-better-repeating-buttons-and-mouse-interactions
- [ ] TBA: https://github.com/Intro-CS-App-Dev-and-Deploy/3x3-Home-Screen
- [ ] TBA: Do This Not That, changing what is displayed as a button

---

- https://github.com/Intro-CS-App-Dev-and-Deploy/App-Development/tree/main/Music%20Program/Minim%20Single%20Song%20Functions

- https://github.com/Intro-CS-App-Dev-and-Deploy/App-Development/blob/main/Music%20Program/Mutliple%20Songs%20with%20Arrays/15%20Advanced%20Music%20Buttons/01%20Auto%20Play/MusicApp.pde

--- 

# To Include: Purpose of Music Player at AP CSP Level
- Can this be turned into a book or AP CSP Resource (Google Funding?)
- Computational Problem Solving throughout
- Functions, including library ones, are taught to enable reading of documentation to understand enough to ask questions, interpret parameters and returns, and create prototpying programs

### Introductory CS - Introductions to GUI and Associated Information
- Primitive Variables, Strongly Formatted
- Casting and Truncating
- Language Specific Variables based on auto-loaded libraries and dependencies (beyond native)
- Concatenation (two types), specifically of pathways and directories
- Inspecting Variables and CONSOLE
- Arrays of Primitive and Library-specific variables using primitive variables as element-constructor-parameter
- Using OS to read pathways and associated information
- 2D shapes, starting with rectangle as Divisions in an app
- Function parameters using ratios of display geometry (referred to as Population for introductions to object constructors)
  - Ratios introduce operators and assignment operators
- Display Geometry introduces ternary operator
- Introduction to FOR assigning division symmetry for variable population, including discussion of overall program efficiently using crystal time v. counting lines of code
- Quit Button: Introduction to Infinite Loops ( void draw() {} ) and interaction with keyboard & mouse listeners
- Quit Button: introduction to primitive and library-based variable data structures in constructing features like
  - Listers: single line IF statements
  - Hover over: colour contrast design and 4-colour map theorem, IF-Else Structure, resetting CANVAS defaults
  - 2D Shape Attributes controlled by library-specific functions
  - Drawing Text (sequencing code for purpose)
  - Mouse Locations and Building Conditionals with inequalities and AND
  - Day v. Night Mode Blue Light Design Safety introducing Conditional Shortcuts and conditional evaluation order (flowcharts and truth tables)
- Images: background, foreground ( including aspect ratio as an algorithm ) and formatting images in division space ( as an algorithm )
- Music Files: .mp3 music with meta data access using library
- Library Functions to construct Music Button Function ( combining Booleans, parameters, and specific code sequence)
  - Single Song Functions to Review sequential or linear coding
  - Multiple Song Functions to review integration of entire year 
- General Note about Algorithms & decisions
  - Listeners use nested IF statements
  - Music Buttons use IF-ElseIF-Else construction with developed conditionals
  - Simple, single purpose algorithms with visual & auditory confirmation of completion
- Listeners: keyboard and mouse, including touch screen as enrichment
- Note: final app introduces procedural programming as voids instead of copy and paste

### Future Lessons
- Review Music Player as an Object and Class Design focused on Constructor-GUI ( "pop-up" ) & encapsulated code referenced in MAIN Program (MAIN introduces DRIVER)
  - FOR_Each Loop for Class-based void draw()
- Purpose of CS20, procedural programming: calculators (algorithms), repeating code (using local and global variables), parameters (population of local variables used abstractly in algorithm), and subprograms
- Text Calculator using Algorithm to find when the algorithm should stop, visual confirmation height of text is small enough
- API in Weather App, JSON Data Structures & review GUI
- Use of Weather App in future projects to add SMART Reminders like "You have played for ??? minutes, it is time to go outside"
- Game Design: tic tac toe
  - focus on algorithms and decisions
  - use of modulus as solution for taking turns (away from traditional even-odd application of number)
- Visual and Text Messaging App
- Background GIF Animation 
- Advanced Tic Tac Toe as Super Tic Tac Toe & API Research
- Purpose of CS30 (all previous): PONG Driver, Objects, Classes & Encapsulation, & Abstract Classes
- SMART Questions, GUI, interactions, and Algorithms
- Array-list muted arrays focusing array properties of copy, add, remove, delete, and rewrite using local objects (since processing.org makes arrays unmuted)

---

# CAUTION

Song Loading has changed to single objects as AudioPlayer and GLobal Variable String Arrays

Change all programs

--- 

//Samantha Skinner 
//Drawing Machine for Project 1

Moon myMoon; //declare moon object as global variable
Eye eL, eR; //declare eye objects

void setup() {
  myMoon = new Moon(125, 275, 100, 100, 25); //initialize moon object and call constructor, fill in arguements eventually
  eL = new Eye(100,260,25);
  eR = new Eye(150,255,25);
  size(800, 400);
  frameRate(10);
  noSmooth(); //kid drawing effect
  background(61, 44, 46);
}

void draw() {
    noStroke();
   
  myMoon.display(); //call object methods
  eL.display();
  eR.display();
  
  eL.update(mouseX, mouseY); 
  eR.update(mouseX, mouseY);
  
  drawBrush(0, 0, 30); //user paints

  
  for (int x = -20; x < 900; x = x+150) { //create background star patterns
    for (int y = -20; y < 500; y = y+150) {
      rotate(frameCount/20); //cascading stars effect
      star(x, y, 3, 7, 5); //create little stars
    }
  }
}

void keyPressed() { //reset work
  background(61, 44, 46); //same night sky color
}

//void mouseReleased(){ //function will be used to change moon when triggered by user
//  float h = randomGaussian() * 50;
//  ellipse(125, 275, h, h);
//}

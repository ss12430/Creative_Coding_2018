//Samantha Skinner 
//Drawing Machine for Project 1

Moon myMoon; //declare moon object 
Eye eL, eR; //declare eye objects
Star[] stars = new Star[15]; //declare integer array called stars, with list of 50 stars
                              //above means, there are 30 spots, index ranges from 0-29

void setup() {
  size(800, 400);
  frameRate(10);
  noSmooth(); //kid-like drawing effect 
  background(61, 44, 46); //night sky 

  for (int i = 0; i < stars.length; i++) { //initialize each i in the loop
    stars[i] = new Star(random(-200,800), random(-200,400), 3.5, 7, 5); //initialize array
  }

  myMoon = new Moon(125, 275, 100, 100, 25); //initialize moon object and call constructor, fill in arguements eventually
  eL = new Eye(100, 260, 25); //initialize eye objects and pass parameters to constuctor
  eR = new Eye(150, 255, 25);
}  

void draw() {
  noStroke();

  for (int i = 0; i < stars.length; i++) { //call display star function for i, instead of each star individually
    pushMatrix(); 
    rotate(frameCount/30);
    stars[i].display(); //use array
    popMatrix();
  }
  
  myMoon.display(); //call object methods
  eL.display(); 
  eR.display(); 

  eL.update(mouseX, mouseY); 
  eR.update(mouseX, mouseY);

  drawBrush(0, 0, 30); //user paints

  //transferred this double for loop to an array for stars
  //for (int x = -20; x < 900; x = x+150) { //create background star patterns
  //  for (int y = -20; y < 500; y = y+150) {
  //    rotate(frameCount/20); //cascading stars effect
  //    star(x, y, 3, 7, 5); //create little stars
}
//}
//}

void keyPressed() { //reset work
  background(61, 44, 46); //same night sky color
}

//void mouseReleased(){ //function will be used to change moon when triggered by user
//  float h = randomGaussian() * 50;
//  ellipse(125, 275, h, h);
//}

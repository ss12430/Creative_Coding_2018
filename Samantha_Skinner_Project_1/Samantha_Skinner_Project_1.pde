//Samantha Skinner 
//Drawing Machine for Project 1

Moon myMoon; //declare moon object 
Star myStar;
Eye eL, eR, eL2, eR2; //declare eye objects
Star[] stars = new Star[15]; //declare integer array called stars, with list of 50 stars
//above means, there are 30 spots, index ranges from 0-29

void setup() {
  size(800, 400);
  frameRate(10);
  noSmooth(); //kid-like drawing effect 
  background(61, 44, 46); //night sky 

  for (int i = 0; i < stars.length; i++) { //initialize each i in the loop
    stars[i] = new Star(random(-200, 800), random(-200, 400), 3.5, 7, 5); //initialize array
  }

  myMoon = new Moon(125, 275, 100, 100, 25); //initialize moon object and call constructor, fill in arguements eventually
  eL = new Eye(100, 260, 25); //initialize eye objects and pass parameters to constuctor
  eR = new Eye(150, 255, 25);
  //eL2 = new Eye(585, 115, 17);
  //eR2 = new Eye(615,125, 17);
  eL2 = new Eye(600, 125, 30);

  myStar = new Star(600, 125, 3.5 * 7, 7 * 7, 5);
}  

void draw() {
  noStroke();
  println(frameCount);
  //if (frameCount > 70) {
  //  for (int i = 0; i < stars.length; i++) { //call display star function for i, instead of each star individually
  //    pushMatrix(); 
  //    rotate(frameCount/30);
  //    stars[i].display(); //use array
  //    popMatrix();
  //  }
  //} else if(frameCount > 50) {
  //  for (int i = 0; i < stars.length; i++) { //call display star function for i, instead of each star individually
  //    pushMatrix(); 
  //    rotate(PI);
  //    stars[i].display(); //use array
  //    popMatrix();
  //  }
  //} else {
  //for (int y = 0; y < height; y+=10) { //call display star function for i, instead of each star individually
  //fill(255);
  //  line(0, y, width, y);
  //pushMatrix(); 
  //rotate(PI);
  //fill (random(255), random(255), random(255), random(255));
  //stars[i].display(); //use array
  //popMatrix();
  // }
  //}

  myStar.display();
  myMoon.display(); //call object methods
  eL.display(); 
  eR.display(); 
  eL2.display();
  // eR2.display();

  eL.update(mouseX, mouseY); 
  eR.update(mouseX, mouseY);
  eL2.update(mouseX, mouseY);
  // eR2.update(mouseX, mouseY);
  drawBrush(0, 0, 30); //user paints

  //transferred this double for loop to an array for stars
  for (int x = -20; x < 900; x = x+150) { //create background star patterns
    for (int y = -20; y < 500; y = y+150) {
      //rotate(frameCount/20); //cascading stars effect
      star(x, y, 3, 7, 5); //create little stars
    }
  }
    //}
    //}
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

    void keyPressed() { //reset work
      background(61, 44, 46); //same night sky color
    }

    

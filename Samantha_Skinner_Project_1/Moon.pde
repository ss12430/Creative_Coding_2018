class Moon {

  float x, y, w, h, eyeSize, mouth;
  color c1, c2;

  Moon (float tempXpos, float tempYpos, float tempW, float tempH, float tempEyeSize) {
    //define constructor with parameters
    //c1 = tempC1;
    //c2 = tempC2;
    x = tempXpos;
    y = tempYpos;
    w = tempW;
    h = tempH;
    //mouth = tempM;
    eyeSize = tempEyeSize;
  }
  void display() { //create display function
    ellipseMode(CENTER);
    //Draw moon face
    fill(245, 162, 199, 150);
    noStroke();
    ellipse(x, y, w, h); 

    //Draw moon eyes 
    fill(255);
    noStroke();
    ellipse(x - w/3, y - h, eyeSize, eyeSize);
    ellipse(x + w/3, y - h, eyeSize, eyeSize);

    //Draw moon pupils
    fill(0);
    noStroke();
    ellipse(x - w/3, y - h, eyeSize/3, eyeSize/3);
    ellipse(x + w/3, y - h, eyeSize/3, eyeSize/3);

    //Draw moon nose
    noStroke();
    fill(205, 122, 159);
    ellipse(x, y, eyeSize/3, eyeSize/3);

    //Draw moon mouth
    noStroke();
    fill(0);
    ellipse(x, y + h/3, eyeSize, eyeSize-10);
  }
}

//Move moon

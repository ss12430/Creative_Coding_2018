class Moon {

  float x, y, w, h, mouth; //variables
  color c1, c2;

  Moon (float tempXpos, float tempYpos, float tempW, float tempH, float tempM) {
    //define constructor with parameters
    //c1 = tempC1;
    //c2 = tempC2;
    x = tempXpos;
    y = tempYpos;
    w = tempW;
    h = tempH;
    mouth = tempM;
  }
  void display() { //create display function
    ellipseMode(CENTER);
    //Draw moon face
    fill(245, 162, 199, 150);
    noStroke();
    ellipse(x, y, w, h); 

    //Draw moon nose
    noStroke();
    fill(205, 122, 159);
    ellipse(x, y, mouth/2, mouth/2);

    //Draw moon mouth
    noStroke();
    fill(0);
    ellipse(x, y + h/4, mouth*1.5, mouth - w/2);
    
   //draw tooth
   fill(230);
   ellipse(x, y+h/6, mouth/1.2, mouth/3);
  }
}

//Move moon

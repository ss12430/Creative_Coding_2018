//referenced from processing.org reference on arctangent

class Eye { //new class for eye
  int x, y; //declare variables
  int size;
  float angle = 0.0;

  Eye(int tempX, int tempY, int tempS) { //eye object constructor with parameter definitions
    x = tempX;
    y = tempY;
    size = tempS;
  }

  void update(int mx, int my) { //create update function and declare variables
    angle = atan2(my-y, mx-x); //use arctangent to compute angle from eye to mouse
  }

  void display() { //create display function
    pushMatrix();
    translate(x, y); //translate from origin
    fill(255); //white for eyeball
    ellipse(0, 0, size, size); //eyeball
    rotate(angle); //to rotate pupil
    fill(0); //black for pupil
    ellipse(size/4, 0, size/2, size/2); //pupil
    popMatrix();
  }
}

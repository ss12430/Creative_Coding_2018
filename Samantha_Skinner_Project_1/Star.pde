//referenced from processing.org reference on star shape
class Star{
  float x, y, radiusOne, radiusTwo, npoints;

  Star(float tempX, float tempY, float tempRadiusOne, float tempRadiusTwo, int tempNPoints) { //star constructor 
    x = tempX;
    y = tempY;
    radiusOne = tempRadiusOne;
    radiusTwo = tempRadiusTwo;
    npoints = tempNPoints;
  }


  void display() { //create display function for stars
    float angle = TWO_PI / npoints; //initiate angle variable and assign to value of 2PI/#points
    float halfAngle = angle/2.0; //initiate half angle variable and set equal to value of angle devided by two

    fill (200, 255, 199, 100); //star color
    beginShape(); //begin recording star shape vertices
    for (float i = 0; i < TWO_PI; i += angle) { //declare and initiate i, create for loop to create background pattern of stars
      float ab = x + cos(i) * radiusTwo; //initiate ab
      float cd = y + sin(i) * radiusTwo; //initiate cd
      vertex(ab, cd);
      ab = x + cos(i+halfAngle) * radiusOne;
      cd = y + sin(i+halfAngle) * radiusOne;
      vertex(ab, cd);
    }
    endShape(CLOSE); //stop recording star shape vertices
  }
}

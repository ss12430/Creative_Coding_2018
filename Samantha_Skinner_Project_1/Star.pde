void star(float x, float y, float radiusOne, float radiusTwo, int npoints) { //star constructor 
  float angle = TWO_PI / npoints; //initiate angle variable
  float halfAngle = angle/2.0; //initiate half angle variable

  fill (200, 255, 199, 100); //star color

  beginShape(); //begin recording star shape vertices
  for (float i = 0; i < TWO_PI; i += angle) {
    float ab = x + cos(i) * radiusTwo; //initiate ab
    float cd = y + sin(i) * radiusTwo; //initiate cd
    vertex(ab, cd);
    ab = x + cos(i+halfAngle) * radiusOne;
    cd = y + sin(i+halfAngle) * radiusOne;
    vertex(ab, cd);
  }
  endShape(CLOSE); //stop recording star shape vertices
}

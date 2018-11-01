void drawBrush(int x, int y, int d) {
  fill(228, 122, 102);
  if (mousePressed) { //variable
  frameRate(40);
    pushMatrix();
    translate(mouseX, mouseY);
    scale(0.3);
    ellipse(x, y, d, d);
    popMatrix();
  }
}


//could use pixels and identify by color of pixel paint, also look into createShape and put in locations user has drawn over into vertices, put this code block within "if mousePressed"

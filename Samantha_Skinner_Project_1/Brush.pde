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

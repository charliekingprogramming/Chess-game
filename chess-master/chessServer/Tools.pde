void button(int x, int y, int w, int h, PImage label) {
  //tactile
  if (touchingMouse(x, y, w, h)) {
    stroke(255,217,25);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
  //drawing the button
  fill(255);
  rect(x, y, w, h);
  fill(0);
  textSize(50);
  image(label, x, y, w, h);
}




boolean touchingMouse(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    return true;
  } else {
    return false;
  }
}

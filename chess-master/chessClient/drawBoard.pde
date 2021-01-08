void drawBoard() {
  if (itsMyTurn) {
    tint(255, 255);
    for (int r = 0; r < 8; r++) {
      for (int c = 0; c < 8; c++) { 
        if ( (r%2) == (c%2) ) { 
          fill(lightbrown);
        } else { 
          fill(darkbrown);
        }
        strokeWeight(2);
        stroke(0);
        rect(c*100, r*100, 100, 100);
      }
    }
  } else {
    for (int r = 0; r < 8; r++) {
      for (int c = 0; c < 8; c++) { 
        if ( (r%2) == (c%2) ) { 
          tint(255, 127);
          fill(lightbrown);
        } else { 
          fill(darkbrown);
        }
        strokeWeight(2);
        stroke(0);
        rect(c*100, r*100, 100, 100);
      }
    }
  }
}

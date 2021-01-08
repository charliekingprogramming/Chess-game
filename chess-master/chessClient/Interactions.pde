
  
  
  void keyPressed() {
  if (key == 'q' || key == 'Q') qkey = true;
  if (key == 'r' || key == 'R') rkey = true;
  if (key == 'k' || key == 'K') kkey = true;
  if (key == 'b' || key == 'B') bkey = true;
  if (key == 'z' || key == 'Z') zkey = true; 

}


void keyReleased() {
  if (key == 'q' || key == 'Q') qkey = false;
  if (key == 'r' || key == 'R') rkey = false;
  if (key == 'k' || key == 'K') kkey = false;
  if (key == 'b' || key == 'B') bkey = false;
  if (key == 'z' || key == 'Z') zkey = false; 
}

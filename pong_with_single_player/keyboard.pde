void keyPressed() {
  //keys[key] = truer if(keyCode == UP)upKey = true;
  if (keyCode == DOWN) { 
    downKey = true;
  }
  if (keyCode == UP) {
    upKey = true;
  }
  if (key == 'w' || key == 'W') wKey = true;
  if (key == 's' || key == 'S') sKey = true;
}

void keyReleased() {
  //keys[key] = false;
  if (keyCode == UP) {
    upKey = false;
  }
  if (keyCode == DOWN) {
    downKey = false;
  }
  if (key == 'w' || key == 'W') wKey = false;
  if (key == 's' || key == 'S') sKey = false;
}

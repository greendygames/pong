void mousePressed() {

  if (mode == loading) {
    loadingMouse();
  } else if ( mode == Start) {
    StartMouse();
  } else if (mode == Option) {
    OptionMouse();
  } else if  (mode == Game) {
    GameMouse();
  } else if (mode == pause) {
    pauseMouse();
  } else if (mode == Gameover) {
    GameoverMouse();
  }
}

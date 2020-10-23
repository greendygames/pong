void Gameover() {


  //title
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(255);

  if (player == 1&& inf == false) {
    if (scoreL<scoreR) {
         fill(0, 0, 255);
      text("youLostLoL", 450, 250);

      lose.play();
    } else{
      fill(255, 0, 0);
      text("youWonLoL", 450, 250);

      win.play();
    }
  } else if( player == 2 || inf == true) {
    if (scoreL>scoreR) {
      fill(255, 0, 0);
      text("Left Win", 450, 250);

      win.play();
    } else {
      fill(0, 0, 255);
      text("Right Win", 450, 250);
      win.play();
    }
  }


  //startButton
  strokeWeight(10);
  textSize(30);
  textAlign(CENTER, CENTER);

  text("click anywhere to play again", 450, 370);
}

void GameoverMouse() {

  reset();
  mode = Start;
  paddel = ball;
}

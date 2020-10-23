void Game() {
  
    beats.play();

  if (easterEgg > 0) {
    background(0);
  }
  stroke(255);
  line(450, 0, 450, 600);

  //paddels
  fill(255);
  //red
  stroke(255, 0, 0);
  if (paddel == box) {
    rect(50, y-50, 50, 100);
  } else {
    circle(-10, y, 100);
  }
  //blue
  stroke(0, 0, 255);
  if (paddel == box) {
    rect(800, AIY-50, 50, 100);
  } else {
    circle(910, AIY, 100);
  }

  fill(0);
  if (easterEgg > 0 ) {
    fill(255, 255, 0);
  }
  //ball
  stroke(255, 255, 0);
  circle(ballX, ballY, 20);





  timer = timer - 1;
  if (timer<0) {

    //ball movement
    ballX=ballX-speedX;
    ballY=ballY+speedY;
  }
  if (ballY>590 || ballY<10) {
    speedY = speedY*-1;
    bong.rewind();
    bong.play();
  }
  if (ballY>590) {
    ballY=590;
  }
  if (ballY<10) {
    ballY=10;
  }

  //collision codes
  if (paddel == box) {
    //for Player    
    if ( ballX>50 && ballX<100 && ballY>y-50 && ballY<y+50 ) {
      bing.rewind();
      bing.play();
      speedX = -6;
    }

    //for AI
    if ( ballX>800 && ballX<850 && ballY>AIY-50 && ballY<AIY+50 ) {
      bing.rewind();
      bing.play();
      speedX = speedX*-1;
    }
  } else {
    //for Player
    if (dist(-10, y, ballX, ballY)<70) {
      speedX = (-10-ballX)/ballSpeed;
      speedY = (ballY-y)/ballSpeed;
      bing.rewind();
      bing.play();
    }

    //for AI
    if (dist(910, AIY, ballX, ballY)<70) {
      speedX = (910-ballX)/ballSpeed;
      speedY = (ballY-AIY)/ballSpeed;
      bing.rewind();
      bing.play();
    }
  }





  //movement for player=======================================
  if (y<50) {
    y=50;
  }
  if (y>550) {
    y=550;
  }

  if (inf == false) {
    movement();
  } else {
    if (paddel == 1) {
      if (ballX<450) {  
        if (y-50<ballY) {
          y = y+difficulty;
        } else if (y+50>ballY) {
          y = y-difficulty;
        }
      }
    } else {
      if (ballX<450) {  
        if (y==ballY) {
          y = y+0;
        } else if (y-50<ballY&&y>10) {
          y = y+difficulty;
        } else if (y+50>ballY&&y<890) {
          y = y-difficulty;
        }
      }
    }
  }

  //AI movement
  if (player==1 || inf == true) {
    if (AIY<50) {
      AIY=50;
    }
    if (AIY>550) {
      AIY=550;
    }
    if (paddel == 1) {
      if (ballX>450) {  
        if (AIY-50<ballY) {
          AIY = AIY+difficulty;
        } else if (AIY+50>ballY) {
          AIY = AIY-difficulty;
        }
      }
    } else {
      if (ballX>450) {  
        if (AIY==ballY) {
          AIY = AIY+0;
        } else if (AIY<ballY&&AIY>10) {
          AIY = AIY+difficulty;
        } else if (AIY>ballY&&AIY<890) {
          AIY = AIY-difficulty;
        }
      }
    }
  } else if (player == 2 && inf == false) {

    if (AIY<50) {
      AIY=50;
    }
    if (AIY>550) {
      AIY=550;
    }
    movementTwo();
  }

  //score left
  if (ballX<-25 ) {
    scoreR = scoreR+1;
    ballY = 300;
    ballX = 450;
    speedX = -3;
    speedY = random(4);
    timer = 100;
    score.rewind();
    score.play();
  }
  //score right
  if (ballX>925 ) {
    scoreL = scoreL+1;
    ballY = 300;
    ballX = 450;
    speedX = 3;
    speedY = random(4);
    timer = 100;
    score.rewind();
    score.play();
  }
  //score
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(255);
  text(""+scoreL, 350, 50);  
  text(""+scoreR, 550, 50);  


  if (scoreR>2 || scoreL>2) {
    mode = Gameover;
    win.rewind();
    lose.rewind();
  }
}


void movement() {


  //original movement code
  //if (keys['w']) {
  //  y= y-5;
  //}

  //if (keys['s']) {
  //  y= y+5;
  //}
  ////reset
  //if (keys[' ']) {
  //  ballX = 450;
  //  ballY = 300;
  //}

  if (wKey == true) { 
    y=y-difficulty;
  }
  if (sKey == true) {
    y=y+difficulty;
  }
}

void movementTwo() {

  if (upKey == true) AIY=AIY-difficulty;

  if (downKey == true) AIY=AIY+difficulty;
}


void GameMouse() {


  mode = pause;
}

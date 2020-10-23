void Option() {

  background(213);



  fill(100);
  rectTactile(400, 350, 100, 50);
  rect(400, 350, 100, 50);
  textSize(20);
  textAlign(CENTER, CENTER);
  fill(0);
  text("Back", 450, 370);

  fill(100);
  rectTactile(400, 450, 100, 50);
  rect(400, 450, 100, 50);
  fill(0);
  text("quit", 450, 470);

  //difficulty settings
  fill(100);
  rectTactile(100, 50, 100, 50);
  rect(100, 50, 100, 50);
  fill(0);
  text("easy", 150, 75);

  fill(100);
  rectTactile(380, 50, 140, 50);
  rect(380, 50, 140, 50);
  fill(0);
  text("medium", 450, 75);

  fill(100);
  rectTactile(700, 50, 100, 50);
  rect(700, 50, 100, 50);
  fill(0);
  text("hard", 750, 75);
}

void OptionMouse() {
  if (dist(50, 550, mouseX, mouseY)<50) {
    paddel = paddel *-1;
  }

  if (dist(850, 550, mouseX, mouseY)<50) {
    easterEgg = easterEgg*-1;
  }


  //back button
  if (mouseX>280 && mouseX<620 && mouseY>350 && mouseY<400) {
    mode = Start;
  }
  //quite button
  if (mouseX>400 && mouseX<500 && mouseY>450 && mouseY<500) {
    exit();
  }
  //hard button
  if (mouseX>700 && mouseX<800 && mouseY>50 && mouseY<100) {
    difficulty = 5;
    ballSpeed = 8;
  }
  //medium button
  if (mouseX>380 && mouseX<520 && mouseY>50 && mouseY<100) {
    difficulty = 4;
    ballSpeed = 10;
  }
  //easy button
  if (mouseX>100 && mouseX<200 && mouseY>50 && mouseY<100) {
    difficulty = 3;
    ballSpeed = 12;
  }
}

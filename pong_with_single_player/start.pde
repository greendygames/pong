void Start() {
  background(0);

  background(0); 
  //title
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(255);
  text("PONG", 450, 250);  
  //startButton
  rectTactile(280, 340, 340, 50);
  rect(280, 340, 340, 50);
  textSize(20);
  textAlign(CENTER, CENTER);
  fill(0);
  text("single player", 450, 360);  

  fill(255);
  rectTactile(280, 440, 340, 50);
  rect(280, 440, 340, 50);
  fill(0);
  text("two players", 450, 460);  

  fill(255);
  rectTactile(280, 540, 340, 50);
  rect(280, 540, 340, 50);
  fill(0);
  text("no players", 450, 560);  

  circleTactile(100, 100, 50);
  fill(200);
  circle(100, 100, 100);
  image(settings, 100, 100, 80, 80);
}

void StartMouse() {
  if (dist(100, 100, mouseX, mouseY)<50) {
    mode = Option;
  }  
  if (mouseX>280 && mouseX<520 && mouseY>340 && mouseY<590) {
    mode = Game;
    reset();
    background(0);
    player = 1;
    inf = false;
  }
  if (mouseX>280 && mouseX<520 && mouseY>440 && mouseY<590) {
    mode = Game;
    reset();
    background(0);
    player = 2;
    inf = false;
  }
  if (mouseX>280 && mouseX<520 && mouseY>540 && mouseY<590) {
    mode = Game;
    reset();
    background(0);
    player = 1;
    inf = true;
  }
}

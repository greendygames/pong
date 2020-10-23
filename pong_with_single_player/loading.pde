void loading() {
  background(0);  
  counter = counter + 1;
  loader = loader + 1;
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(color1,color2,color3);
  if (loader < 50) {
    text("Loading...", 200, 500);
  } else {
    text("Loading....", 200, 500);
  }
  textSize(30);
  text("there are 6 buttons in option", 450, 100);

  if (loader>100) {
    loader = 0;
  }

  if (counter == 1000) {
    mode = Start;
  }
color1 = color1 +0.3;
color2 = color2 +0.2;
color3 = color3 +0.1;
}

void loadingMouse() {

    mode = Start;
}

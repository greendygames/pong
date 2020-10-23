

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound
Minim minim;
AudioPlayer beats, bing, bong, win, lose, score;


int easterEgg;


int mode;
final int Start = 0;
final int Game = 1;
final int loading = 3;
final int Gameover = 2;
final int Option = 4;
final int pause = 5;

PImage settings;

//boolean [] keys = new boolean[128];
boolean upKey, downKey, wKey, sKey;

//movement

float y;

float ballX;
float ballY;
float speedX;
float speedY;

float AIY;

float difficulty;
float ballSpeed;

int player;

int scoreR;
int scoreL;

int timer;
int counter;
int loader;

int paddel;
int box;
int ball;

boolean inf;

float color1;
float color2;
float color3;

//font
PFont font;

void setup() {

  //sound
  minim = new Minim(this);
  beats = minim.loadFile("beats.mp3");
  bing = minim.loadFile("bing.mp3");
  bong = minim.loadFile("bong.mp3");
  win = minim.loadFile("win.mp3");
  lose = minim.loadFile("lose.mp3"); 
  score = minim.loadFile("score.mp3"); 

  //basic stuff
  size(900, 600);
  frameRate(120);

  mode = 3;

  imageMode(CENTER);
  settings = loadImage("setting.png");

  player = 1;
  counter = 0;
  easterEgg = 1;
  paddel = 1  ;
  reset();
  ball = 1;
  box = -1;
  timer = 100;
  difficulty = 4;
  loader = 0;
  ballSpeed = 10;
  upKey=downKey=wKey=sKey = false;
  inf = false;

  color1 = 0;
  color2 = 0;
  color3 = 0;

  font = createFont("UTM Nokia.ttf", 30);
  textFont(font);
}

void draw() {
  if (mode == loading) {
    loading();
  } else if ( mode == Start) {
    Start();
  } else if (mode == Option) {
    Option();
  } else if (mode == Game) {
    Game();
  } else if (mode == pause) {
    pause();
  } else if (mode == Gameover) {
    Gameover();
  }
}



void circleTactile(int x, int y, int r) {//tactile==================================================================================================================
  if (dist(x, y, mouseX, mouseY)>r) {
    strokeWeight(10);
    stroke(100);
  } else {
    strokeWeight(10);
    stroke(0);
  }
}

void rectTactile(int x, int y, int w, int h) {//tactile==================================================================================================================
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    strokeWeight(10);
    stroke(0);
  } else {
    strokeWeight(10);
    stroke(100);
  }
}

import ddf.minim.*;
AudioSample sound1;
AudioSample sound2;
boolean tailpinned = false;
int boxY = 105;
int boxX = 55;
int tailCoordinateX = 0;
int tailCoordinateY = 0;
int topTargetY = 10;
int rightTargetX = 300;
int leftTargetX = 200;
int bottomTargetY = 150;
PImage donkey;
PImage tail;

void setup() {

  Minim minim = new Minim(this);
  sound1 = minim.loadSample("happy.wav");
  sound2 = minim.loadSample("sad.wav");
  size (300, 206);
  donkey = loadImage("donkey.jpg");
  background(donkey);
  tail = loadImage ("tail.png");
  tail.resize (100, 400);
  fill(232, 0, 0);
  textSize(10);
  text("Try to pin the tail by clicking the red target", 1, 20);
}

void draw() {
 
  if (mouseX >= boxX && mouseY <= boxY) {
    background(193, 44, 240);
    fill(232, 0, 0);
    textSize(10);
    text("Try to pin the tail by clicking the red target", 1, 20);
  }
  if (mouseX<= boxX && mouseY <= boxY) {
    fill (44, 225, 240);
    rect(5, 5, 50, 100);
    background(donkey);
    fill(232, 0, 0);
    textSize(10);
    text("Try to pin the tail by clicking the red target", 1, 20);
    if (tailpinned == true) {
      image (tail, tailCoordinateX, tailCoordinateY);
    }
  }
  
  if (mousePressed && tailpinned == false) {
    tailCoordinateX = mouseX-10;
    tailCoordinateY = mouseY-20;
    tailpinned = true;
    image(tail, mouseX-10, mouseY-20);
    if (tailCoordinateX <= rightTargetX && tailCoordinateX >= leftTargetX) {
      if (tailCoordinateY >= topTargetY && tailCoordinateY <= bottomTargetY) {
        if (mousePressed) {
          sound1.trigger();
          background(donkey);
        } else {
          sound2.trigger();
          background(donkey);
        }
      }
    }
  }
}
boolean tailpinned = false;
int boxY = 105;
int boxX = 55;
int tailCoordinateX = 0;
int tailCoordinateY = 0;
int rightTargetX = 275;
int leftTargetX = 265;
int bottomTargetY = 40;
PImage donkey;
PImage tail;

void setup() {
  size (300, 206);
  donkey = loadImage("donkey.jpg");
  background(donkey);
  tail = loadImage ("tail.png");
  tail.resize (100, 400);
}

void draw() {
  println("X;" + mouseX + "Y;" + mouseY);
  if (mouseX >= boxX && mouseY <= boxY) {
  background(193, 44, 240);
}
if (mouseX<= boxX && mouseY <= boxY) {
  fill (44, 225, 240);
  rect(5, 5, 50, 100);
  background(donkey);
  if (tailpinned == true) {
    image (tail, tailCoordinateX, tailCoordinateY);
  }
}
if (mousePressed && tailpinned == false) {
  tailCoordinateX = mouseX-10;
  tailCoordinateY = mouseY-20;
  tailpinned = true;
  image(tail, mouseX-10, mouseY-20);
}
if (tailCoordinateX >= targetX && tailCoordinateY  
}
import ddf.minim.*;
AudioSample doh;
AudioSample woohoo;


int topY = 90;
int bottomY = 102;
int leftX = 1270;
int rightX = 1280;
void setup() {
  Minim minim = new Minim(this);   
  doh = minim.loadSample("homer-doh.wav");
  woohoo = minim.loadSample("homer-woohoo.wav");
  PImage waldo = loadImage("waldo.jpg"); // 2. Change this to match your file name.
  size(1590, 981);
  image(waldo, 0, 0);
}

void draw() {
  // 3. Use this print statement to find out the coordinates of Waldo
  // println("X: " + mouseX + " Y: " + mouseY); 
  //1278 99
  // 4. If the mouse is on Waldo, print “Waldo found!”
  if (mousePressed) {
    if (mousePressed && mouseX >= leftX && mousePressed && mouseX <= rightX) {
      if (mousePressed && mouseY >= topY && mousePressed && mouseY <= bottomY) {
        println("Waldo found!");
        playWoohoo();
      } } else {
        playDoh();
      }
    }
  }
  // 5. If Waldo is found, also use the method below to play “Woohoo”

  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”


  void playWoohoo() {
    woohoo.stop();
    woohoo.trigger();
  }

  void playDoh() {
    doh.stop();
    doh.trigger();
  }
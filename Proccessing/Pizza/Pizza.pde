 import   processing.sound.*; 
  SoundFile   sound;
  
void setup(){
 sound = new SoundFile(this, "r.wav");
   size(800,800);
   //box
   fill(178,111,20);
   //
   rect(200,180,400,400);
   //crust
  fill(211,201,119);
 ellipse(400,400,300,300);
 //sauce
 fill(247,12,48);
 ellipse(400,400,260,260);
 //cheese
 fill(224,229,81);
 ellipse(400,400,230,230);
 
 
}
  void draw(){
PImage cheese = loadImage("cheese.gif");
image(cheese,400,350);
image(cheese,400,300);
image(cheese,350,300);
PImage kittens = loadImage("kittens.gif");
image(kittens,400,370);
image(kittens, 350,370);
image(kittens,310,360);
PImage poptarts = loadImage("poptarts.gif");
image(poptarts,310,400);
image(poptarts,370,400);
image(poptarts,400,400);
//if mouse clicked
if(mousePressed   &&   (mouseButton   ==   RIGHT)){
  image(poptarts,mouseX,mouseY);
  sound.play();
}
 if(mousePressed   &&   (mouseButton   ==   LEFT)){
   image(kittens,mouseX,mouseY);
   sound.play();
   
 }
 

  
}
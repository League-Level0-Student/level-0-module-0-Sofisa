int x1=500;
int x2=1500;
void setup(){
  size (2000,1500);
  background(200,179,203);
}
void draw(){
  println(x2);
   background(200,179,203);
  for (int i=500; i >=0; i-=50) {
      noFill();
    ellipse(x1, 500, i, i);
  }
  for (int i=500; i >=0; i-=50) {
      noFill();
    ellipse(x2, 500, i, i);
  }
     
      if (x1<1500){
        x1+=50;
      }
      if (x2>500){
        x2-=50;
      }

}
void setup () {
  size (1000, 1000);

  for (int i=500; i >=0; i-=50) {
      fill(255, 255, 255);
   if (i % 100==0){
     fill(250,5,5);
   }
    ellipse(500, 500, i, i);
  }
}

void draw () {
}                    
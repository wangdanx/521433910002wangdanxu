Particle[] particles;
Particle2[] particles2;
 int am=900;
 int am2=900;
void setup (){
  size(800,800);
 
  particles = new Particle[am];
  for (int i = 0; i < am; i++) {
    particles[i] = new Particle(new PVector(400,400),i);
  }
  
 particles2 = new Particle2[am2];
 for(int j=0;j<am2;j++){
 particles2[j] = new Particle2(new PVector(400,400),j);
}
}
void draw(){
 fill(50,20);
 rect(0,0,height,width);
 
   for (int i = 0; i < am; i++) {
    particles[i].draw();
  }
  for (int i = 0; i < am; i++) {
    particles[i].drawMid();
    particles[i].move();
}

  for (int j = 0; j< am2; j++) {
    particles2[j].drawMid2();
    particles2[j].move2();
}
}

void mousePressed(){
   for (int j = 0; j< am2; j++) {
   particles2[j].loc = new PVector(mouseX, mouseY);
 
}
}

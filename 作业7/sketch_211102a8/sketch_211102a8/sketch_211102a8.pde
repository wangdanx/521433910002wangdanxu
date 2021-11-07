Particle myParticle;
int [ ]number=new int[50];
void setup() {
  noCursor();
  // size(2000,1000);
  fullScreen();
  background(0);
  myParticle=new Particle(2000, width, height);
}

void draw() {
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  
  myParticle.display();

  for (int i=0; i<10000; i++) {
    float x=map(i, 0, 100000, 900, width);
    x+=tan(PI*noise(x));
    float y=height/2+sin(map(i, 0, 100000, 1000, PI*30))*450;
    stroke(255);
    circle(x, y, 1);
  }
  
    for(int w=0;w<number.length;w++){
      fill(200,80);
      ellipse(mouseX,mouseY,w+0.1,w-50);
}

}

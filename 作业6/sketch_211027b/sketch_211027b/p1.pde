class Particle {
  PVector loc, vel;
  float a, s, radius;

  Particle(PVector l, float i) {
    loc = l;
    a = i;
    s = random(50, 250);
  }

  void draw() {//蓝色圈子
    radius = map(dist(loc.x, loc.y, 400,400), 0, 110, 11, 1);//离400，400距离越大圆越大
    fill(0, 150, 255);
    ellipse(loc.x, loc.y, radius+2, radius+2);
    ellipse(mouseX, mouseY, 20, 20);
  }

  void drawMid() {//白色圈子
    // radius = map(dist(loc.x, loc.y,400,400), 0, 110,11,1);
    fill(255);
    ellipse(loc.x, loc.y, radius-4, radius-4);
  }

  void move() {

    float r = sin(radians(frameCount*(s/200)));
    vel = new PVector(sin(radians(a))*r, cos(radians(a))*r);
    vel.mult(2.5);//速度
    loc.add(vel);//位置外扩
   //print(vel);
  }
}

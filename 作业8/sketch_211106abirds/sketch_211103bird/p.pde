class pipe{
  float top;
  float bottom;
  float x;
  float w;
  float speed;
  float spacing;
  float a,b,c;

  pipe(){
    spacing = 175;
    top = random(20,100);
    bottom = height - (top + spacing);
    w = 450;
    x = width;
    speed = 6;
  
  }

  void show(){
  colorMode(HSB, 360, 255, 100);
  a=random(0,100);
  b=random(0,80);
  c=random(50,100);
  fill(a,b,c);
  //  fill(255);
    noStroke();
    rectMode(CORNER);
    rect(x, 0, w, top);
  //  fill(#F5D93B);
    rect(x, height-bottom, w, bottom);
  }

  void update(){
    x -= speed;
  }

  boolean offscreen(){
    return x < -w;
  }

  boolean hit(bird b){
    if (b.pos.y < top+b.r || b.pos.y+b.r > height-bottom){
      if (b.pos.x+b.r > x && b.pos.x < (x + w)+b.r)
        return true;
    }
    return false;
  }
}

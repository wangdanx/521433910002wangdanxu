
//you yan
  float r=45;
  float angle=0;
  float speed=3;
  float x,y;
//zuo yan
  float r1=45;
  float angle1=0;
  float speed1=2;
  float x1,y1;
//da gao guang dong
  float r2=70;
  float angle2=0;
  float speed2=3;
  float x2,y2;
  float r3=70;
  float angle3=0;
  float speed3=3;
  float x3,y3;


void setup(){
   size(500,450);
   noStroke();

}

void draw(){
   background(252,243,56);
//dongdong
   fill(#FAD038);
   ellipse(125,10,50,70); 
   ellipse(200,400,150,125);
   ellipse(50,70,50,80);
   ellipse(400,300,70,90);
   ellipse(500,30,80,100);
   ellipse(40,350,60,100);   
   
//she tou
    stroke(0);
    strokeWeight(4);
    fill(#CB737F);
    ellipse(250,340,80,100);
    
//hong zui ba   
    stroke(0);
    fill(#81353F);
    arc(250,210,245,245,0,PI);
    
//she gen 
    fill(#CB737F);
    arc(250,340,80,80,PI,TWO_PI);
    stroke(#C4141A);
    line(250,310,250,360);

 //ya chi
    stroke(0);
    fill(255);
    rect(255,250,30,40);
    rect(220,250,30,40);
    
//huang zui ba
    noStroke();
    fill(252,243,56);
    arc(250,130,255,255,0,PI);
    
 //yan xian
    strokeWeight(10);
    stroke(0);
    fill(0);
    line(100,60,120,80);
    line(170,30,170,50);
    line(240,55,220,80);
    
    line(270,50,290,80);
    line(330,30,330,50);
    line(390,55,360,80);
    
 //bai yan kuang
    fill(255);
    stroke(0);
    strokeWeight(4);
    ellipse(325,125,150,150);
    ellipse(175,125,150,150);
    
 //nei quan
    fill(75,118,94);
    ellipse(x,y,60,60);
    ellipse(x1,y1,60,60);
    
 //tong kong
    x =325+r*cos(radians(angle));
    y =125+r*sin(radians(angle));
    angle+=speed;
    
    x1=175+r*cos(radians(angle1));
    y1=125+r*sin(radians(angle1));
    angle1+=speed1;
    fill(0);
    ellipse(x,y,40,40);
    ellipse(x1,y1,40,40);
    
 //gao guang
    x2 =325+r2*cos(radians(angle));
    y2 =125+r2*sin(radians(angle));
    angle2+=speed2;
    x3=175+r2*cos(radians(angle1));
    y3=125+r2*sin(radians(angle1));
    angle1+=speed1;
    fill(255);
    noStroke();
    ellipse(x2,y2,9,9);
    ellipse(x2,y2,6,6);
    ellipse(x3,y3,6,6);
    ellipse(x3,y3,9,9);
    
 //bi zi
    fill(252,243,56);
    stroke(0);
    arc(250, 190,60,60,PI-QUARTER_PI,TWO_PI+QUARTER_PI);
    
//sai zi
    arc(110,200,60,60,HALF_PI,TWO_PI);
    arc(390,200,60,60,PI,TWO_PI+HALF_PI);
    
 //SAI DIAN
    fill(#AF9020);
    noStroke();
    ellipse(110,200,10,10);
    ellipse(90,205,8,8);
    ellipse(400,200,10,10);
    ellipse(380,200,8,8);
    
 //dong
   textSize(64);
   fill(#E51942);
   text("HELLO",mouseX,mouseY);
}

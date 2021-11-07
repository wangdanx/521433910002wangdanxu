Button1[] bt;
Button2[]bt2;

Button1 btn;//如果只有一个量，就不用建立数组，就直接这样建立对象

boolean isBtHover,isBt2Hover;
float speed=0;
float easing = 0.07;
float btWidth = 50;
float btHeight = 20;
color brushColor = 255;
color brushColor2= 255;

void setup(){
  size(800,800);
  background(0);
  
  btn=new  Button1(50, 75, 10, 15,color(255,0,0));//建立对象的属性、特点
  
  bt = new Button1[1];
  for(int i=0;i<bt.length;i++){
  color cc = color(random(255), random(255), random(255));
  bt[i]=new Button1(50, 50+(btHeight+10)*i, btWidth, btHeight, cc);
  }

  bt2= new Button2[1];
   for(int j=0;j<bt2.length;j++){
    color cc2= color(random(255), random(255), random(255));
    bt2[j]=new  Button2(50, 50+(btHeight+10)*j, btWidth, btHeight,cc2);
  }
}

void draw(){
  pushStyle();
  fill(0);
  stroke(255);
  rect(0, 0,  btWidth*2+10, 150);//第一个
  popStyle();
  
  ellipse();
  line();
  
   for (int i = 0; i < bt.length; i ++) {
   if( bt[i].hover()){
    isBtHover=true;
   }
  }
    for (int i = 0; i < bt.length; i ++) {
    bt[i].showButton1();
    if (bt[i].pickColor) {
      brushColor = bt[i].buttonColor;
      bt[i].pickColor = false;
      isBt2Hover=false;
    }
  }
  
    for (int j = 0; j< bt.length; j++) {
   if( bt2[j].hover2()){
    isBt2Hover=true;
   }
  }
     for (int j= 0; j< bt.length; j++) {
     bt2[j].showButton2() ;

       if (bt2[j].pickColor2) {
      brushColor2 = bt2[j].buttonColor2;
      bt2[j].pickColor2 = false;
      isBtHover=false;
    }
    }
}


void line(){

  float target = dist(mouseX, mouseY, pmouseX, pmouseY);
  speed += (target - speed) * easing;

  if (mousePressed&& isBtHover ) {
    strokeWeight(speed/2);
    stroke(brushColor);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
     
}

void ellipse(){
  
  if (mousePressed&&isBt2Hover){
    pushMatrix();
    translate(mouseX,mouseY);
    for(int q=0;q<10;q++){
      strokeWeight(q);
      stroke(255);
      point(0,q*-10);
 }
  popMatrix();
}
 
 }


 

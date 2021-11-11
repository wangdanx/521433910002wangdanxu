PFont myFont;

Button1 btn1;
Button2 btn2;
Button3 btn3;
Button4 btn4;
Button5 btn5;
//Button6 btn6;
//Button7 btn7;
color brushColor1 = 255;
color brushColor2 = 255;
color brushColor3 = 255;
color brushColor4 = 255;
color brushColor5 = 255;

color c;
color mid;
//color brushColor7 = 255;
boolean isBtHover1;
boolean isBtHover2;
boolean isBtHover3;
boolean isBtHover4;
boolean isBtHover5;
boolean isBtHover6;
float speed;
float angle;
void setup() {
  size(1000, 1000);
  background(255);

  myFont=createFont("微软雅黑", 16);
  textFont(myFont);
  //建立色条
  colorMode(HSB, 360, 100, 100);
  color a = color(359, 100, 100);
  color b = color(0, 100, 100);
  for (int i=1; i<19; i++) {
    color mid=lerpColor(a, b, i/19.0);
    fill(mid);
    noStroke();
    rect(565+22*i,10,20,20);
  }
  
  btn1=new  Button1(250, 10, 50, 30, color(360));//水滴
  btn2=new  Button2(320, 10, 50, 30, color(360));//喷漆
  btn3=new  Button3(390, 10, 50, 30, color(360));//直线
  btn4=new  Button4(460, 10, 50, 30, color(360));//圆圈
  btn5=new  Button5(530, 10, 50, 30, color(360));//橡皮
//  btn6=new  Button6(10, 10, 209, 60);//色条
  //  btn7=new  Button7(620,25, 25,25);//色条
}

void draw() {
  noStroke();

 // rect(0,0,width,50);
if(mousePressed){
  color  c= get(mouseX, mouseY);
  println(c);
  fill(c);
  ellipse(200,26,25,25);

  btn1=new  Button1(250, 10, 50, 30, color(c));//水滴
  btn2=new  Button2(320, 10, 50, 30, color(c));//喷漆
  btn3=new  Button3(390, 10, 50, 30, color(c));//直线
  btn4=new  Button4(460, 10, 50, 30, color(c));//圆圈
  btn5=new  Button5(530, 10, 50, 30, color(c));//橡皮
}
    //-------------------------------------------------

    shape1();//水滴状画笔
    if ( btn1.hover1()) {
      isBtHover1=true;
      isBtHover2=false;
      isBtHover3=false;
      isBtHover4=false;
      isBtHover5=false;
      isBtHover6=false;
    }

    btn1.showButton1() ;

    if (btn1.pickColor1) {
    brushColor1 = btn1.buttonColor1;
      btn1.pickColor1 = false;
    }
    fill(0);
    text("水滴", 259, 29);
    //------------------------------------------------------------
    shape2();//喷漆画笔
    if ( btn2.hover2()) {
      isBtHover2=true;
      isBtHover1=false;
      isBtHover3=false;
      isBtHover4=false;
      isBtHover5=false;
      isBtHover6=false;
    }

    btn2.showButton2() ;

    if (btn2.pickColor2) {
  brushColor2 = btn2.buttonColor2;
      btn2.pickColor2= false;
    }
    fill(0);
    text("喷漆", 329, 29);
    //--------------------------------------------------------------------
    shape3();//直线画笔
    if ( btn3.hover3()) {
      isBtHover3=true;
      isBtHover1=false;
      isBtHover2=false;
      isBtHover4=false;
      isBtHover5=false;
      isBtHover6=false;
    }

    btn3.showButton3() ;

    if (btn3.pickColor3) {
  brushColor3 = btn3.buttonColor3;
      btn3.pickColor3= false;
    }
    fill(0);
    text("直线", 399, 29);
    //--------------------------------------------------------
    shape4();//圆圈画笔
    if ( btn4.hover4()) {
      isBtHover4=true;
      isBtHover1=false;
      isBtHover2=false;
      isBtHover3=false;
      isBtHover5=false;
      isBtHover6=false;
    }

    btn4.showButton4() ;

    if (btn4.pickColor4) {
      brushColor4 = btn4.buttonColor4;
      btn4.pickColor4= false;
    }
    fill(0);
    text("圆圈", 469, 29);
    //------------------------------------------------------------------
    shape5();//橡皮画笔
    if (btn5.hover5()) {
      isBtHover5=true;
      isBtHover1=false;
      isBtHover2=false;
      isBtHover3=false;
      isBtHover4=false;
      isBtHover6=false;
    }

    btn5.showButton5() ;

    if (mousePressed&&btn5.pickColor5) {
      brushColor5 = 255;
      btn5.pickColor5= false;
    }
    fill(0);
    text("橡皮", 539, 29);
    //-----------------------------------------------色条
    //shape6();
   // if (btn6.hover6()) {
   //   isBtHover6=true;
   //   isBtHover1=false;
   //   isBtHover2=false;
   //   isBtHover3=false;
   //   isBtHover4=false;
   //   isBtHover5=false;
   // }

   // btn6.showButton6() ;

   // if (btn6.pickColor6) {
   //   //    btn6.pickColor6=c;
   ////   brushColor6 = c;
   //   btn6.pickColor6= false;
   // }
    //-------------------------------------------------------颜色块
    //    if (btn7.hover7()) {
    //  isBtHover6=true;
    //  isBtHover1=false;
    //  isBtHover2=false;
    //  isBtHover3=false;
    //  isBtHover4=false;
    //  isBtHover5=false;
    //}
    //fill(c);
    //btn7.showButton7() ;

    //if (btn7.pickColor7) {
    //  brushColor7 = btn7.buttonColor7;
    //  btn7.pickColor7= false;

    //}
    //}
  }

void shape1() {//水滴
  if (mousePressed&&isBtHover1&& mouseY>50) {
    pushMatrix();
    translate(mouseX, mouseY);
    for (int q=0; q<10; q++) {
      strokeWeight(q);
      stroke(brushColor1);
      point(0, q*-10);
    }
    popMatrix();
  }
}

void shape2() {//喷漆

  float target = dist(mouseX, mouseY, pmouseX, pmouseY);
  speed += (target - speed) * 0.7;
  float a, b;
  if (mousePressed&&isBtHover2&& mouseY>50) {
    pushMatrix();
    translate(mouseX, mouseY);
    for (int i=0; i<300; i++) {
      a = (width/7.0)*randomGaussian();
      b = (height/7.0)*randomGaussian();
      float r = ((width-abs(a)-abs(b))/200.0)*randomGaussian();
      fill(brushColor2, speed*3);
      ellipse(a, b, r, r);
      //if (mousePressed){
      //ellipse(a,b,r,r);
      //}
    }
    popMatrix();
  }
}

void shape3() {//直线
  if (mousePressed&& isBtHover3&& mouseY>50) {
    strokeWeight(3);
    stroke(brushColor3);
   // stroke(0);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void shape4() {//圆圈
  if (mousePressed&& isBtHover4&& mouseY>50) {
    angle = (angle + 3) % 360;
    pushMatrix();
    translate (mouseX, mouseY);
    rotate (radians(angle));
    //  stroke(angle, 100, 100, 100);
    stroke(brushColor4);
    noFill();
    ellipse (100, 0, 50, 200);
    popMatrix();
  }
}

void shape5() {//橡皮
  if (mousePressed&& isBtHover5&&mouseY>50) {
    fill(360);
    ellipse(mouseX, mouseY, 50, 50);
  }
}

//void shape6(){//色条
//  if (mousePressed&& isBtHover6&&mouseY>50) {
//  noStroke();
// colorMode(HSB, 360,100,100);
// for (int o = 0;o < 360; o++) {
//  for (int p = 0;p < 100;p++) {
//    for(int w=0;w<100;w++){
//    stroke(o,p,w);
//    point(o/50,p/100);
//  }
//  }
// }
//}
//}

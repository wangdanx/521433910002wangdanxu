class Button2{//按钮2
  float posX2, posY2;
  float buttonWidth2, buttonHeight2;
  color buttonColor2;
  boolean pickColor2;

  Button2(float x2, float y2, float w2, float h2,color c2) {
    posX2 = x2;
    posY2 = y2;
    buttonWidth2 = w2;
    buttonHeight2= h2;
    buttonColor2=c2;
  }
  
  void showButton2() {
    if (hover2()) {
      stroke(0);
      strokeWeight(2);
    } else {
      noStroke();
    }
    if (mousePressed && hover2()) {
      pickColor2= true;
      fill(buttonColor2);
      } else {
       fill(buttonColor2);
    }
 //   fill(#FFC246);
    rect(posX2, posY2, buttonWidth2, buttonHeight2);//第一个
  
  }
  boolean hover2() {
    print();
    if (mouseX < posX2 + buttonWidth2 && mouseX > posX2 &&
      mouseY < posY2+ buttonHeight2 && mouseY > posY2) {
      return true;
    } else {
      return false;
    }
  }
}
 

class Button4{//按钮4
  float posX4, posY4;
  float buttonWidth4, buttonHeight4;
  color buttonColor4;
  boolean pickColor4;

  Button4(float x4, float y4, float w4, float h4,color c4) {
    posX4 = x4;
    posY4 = y4;
    buttonWidth4 = w4;
    buttonHeight4= h4;
    buttonColor4=c4;
  }
  
  void showButton4() {
    if (hover4()) {
      stroke(0);
      strokeWeight(2);
    } else {
      noStroke();
    }
    if (mousePressed && hover4()) {
      pickColor4= true;
      fill(buttonColor4);
      } else {
       fill(buttonColor4);
    }
//    fill(#FFC246);
    rect(posX4, posY4, buttonWidth4, buttonHeight4);//
  
  }
  boolean hover4() {
    print();
    if (mouseX < posX4 + buttonWidth4 && mouseX > posX4 &&
      mouseY < posY4+ buttonHeight4 && mouseY > posY4) {
      return true;
    } else {
      return false;
    }
  }
}
 

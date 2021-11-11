class Button5{//按钮5
  float posX5, posY5;
  float buttonWidth5, buttonHeight5;
  color buttonColor5;
  boolean pickColor5;

  Button5(float x5, float y5, float w5, float h5,color c5) {
    posX5 = x5;
    posY5 = y5;
    buttonWidth5 = w5;
    buttonHeight5= h5;
    buttonColor5=c5;
  }
  
  void showButton5() {
    if (hover5()) {
      stroke(0);
      strokeWeight(2);
    } else {
      noStroke();
    }
    if (mousePressed && hover5()) {
      pickColor5= true;
      fill(buttonColor5);
      } else {
       fill(buttonColor5);
    }
    fill(360);
    rect(posX5, posY5, buttonWidth5, buttonHeight5);//
  
  }
  boolean hover5() {
    print();
    if (mouseX < posX5 + buttonWidth5 && mouseX > posX5 &&
      mouseY < posY5+ buttonHeight5 && mouseY > posY5) {
      return true;
    } else {
      return false;
    }
  }
}
 

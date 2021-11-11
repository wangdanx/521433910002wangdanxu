class Button3{//按钮3
  float posX3, posY3;
  float buttonWidth3, buttonHeight3;
  color buttonColor3;
  boolean pickColor3;

  Button3(float x3, float y3, float w3, float h3,color c3) {
    posX3 = x3;
    posY3 = y3;
    buttonWidth3 = w3;
    buttonHeight3= h3;
    buttonColor3=c3;
  }
  
  void showButton3() {
    if (hover3()) {
      stroke(0);
      strokeWeight(2);
    } else {
      noStroke();
    }
    if (mousePressed && hover3()) {
      pickColor3= true;
      fill(buttonColor3);
      } else {
       fill(buttonColor3);
    }
  //  fill(#FFC246);
    rect(posX3, posY3, buttonWidth3, buttonHeight3);//
  
  }
  boolean hover3() {
    print();
    if (mouseX < posX3 + buttonWidth3 && mouseX > posX3 &&
      mouseY < posY3+ buttonHeight3 && mouseY > posY3) {
      return true;
    } else {
      return false;
    }
  }
}
 

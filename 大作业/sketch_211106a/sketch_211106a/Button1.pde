class Button1 {//按钮1
  float posX1, posY1;
  float buttonWidth1, buttonHeight1;
  color buttonColor1;
  boolean pickColor1;
  Button1(float x1, float y1, float w1, float h1, color c1) {
    posX1 = x1;
    posY1 = y1;
    buttonWidth1 = w1;
    buttonHeight1 = h1;
    buttonColor1 = c1;
  }
  void showButton1() {//
    if (hover1()) {
      stroke(0);
      strokeWeight(2);
    } else {
      noStroke();
    }
    if (mousePressed && hover1()) {
      pickColor1= true;
      fill(brushColor1);
    } else {
      fill(buttonColor1);
    }
    rect(posX1, posY1, buttonWidth1, buttonHeight1);//第一个
  }
  boolean hover1() {
    print();
    if (mouseX < posX1 + buttonWidth1 && mouseX > posX1&&
      mouseY < posY1+ buttonHeight1 && mouseY > posY1) {
      return true;
    } else {
      return false;
    }
  }
}

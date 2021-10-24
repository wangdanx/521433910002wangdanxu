   class Letter {
    char letter;
    float homex, homey;  // 原始位置
    float w,e;  // 当前位置
    float theta;  // 旋转
  
    Letter(float w_, float e_, char letter_) {
      homex = w = w_;
      homey = e = e_;
      letter = letter_;
      w= random(width);
      e= random(height);
      theta = random(TWO_PI);
    }
  

    void display() {
      fill(0);
     pushMatrix();//与popMatrix成为出入堆栈，使偏移量独立，不与font1相冲突
      translate(w,e);//平移坐标轴，在原坐标上加
      rotate(theta);//旋转的角度
      text(letter,0, 0);
      popMatrix();//
    }

    void home() { 
      w= lerp(w, homex, 0.09);//差值的时间
      e = lerp(e, homey, 0.09);
      theta = lerp(theta, 0, 0.09);
    }
  }

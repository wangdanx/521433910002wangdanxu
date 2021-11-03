class Particle {
  int ParticleNum;
  int locX;
  int locY;
  PVector[]Particlep;//位置
  
Particle(int num1,int locX,int locY){
   ParticleNum=num1;
   Particlep=new PVector[ParticleNum];
 
  int x,y;
  float xoff =0,yoff=0;
  for(int j=0;j<ParticleNum;j++){
  x=int(map(noise(xoff),0,1,0,locX+200));
  y=int(map(noise(yoff),0,1,0,locY+100));
  circle(x,y,8);
  Particlep[j]=new PVector(x,y);
  xoff+=0.5;
  yoff+=30;
  }
}
 void display(){
  
  for(int j=0;j<ParticleNum;j++){
  if (j%20==0){
  stroke(255);
  int flag=int(random(50));
  float size=random(0,1);
  if (flag>48){
  stroke(255);
  }
  ellipse(Particlep[j].x,Particlep[j].y,size,size);
  }
  else{
  stroke(200);
  int flag=int(random(50));
  if (flag>48){
  stroke(80);
}
 circle (Particlep[j].x,Particlep[j].y,0.7); 
  }
 
 }
}
}


 
  
  
  
  
  
  
  
  
  
  
  
  
  
 

void muerte(){
  
  if (pandax>x3 && pandax<x3+size && panday<y3 || pandax>x3 && pandax<x3+size && panday>y3+gap) dead=1;
  if (pandax>x3&&pandax<x3+size&&dead==0) score+=1; 
  if (panday>height-50) dead = 1;
  textAlign(CENTER);
  textSize(100);
  fill(255);
  if (dead==0) text(floor(score/29),width/2,100);    
  if (dead==1) {
    if (score>highscore)highscore=score;
    speed=0;
    if (panday>height*2) {
      reset();
      grav = 0;
      textSize(30);
      rectMode(CENTER);
      fill(255,245,220);
      rect(width/2,height/2,320,170);
      fill(255,140,0);
      rect(width/2,height/2+350,200,100); 
      fill(0);
      text("puntuacion:   "+floor(score/29),width/2,height/2-50);
      text("mejor putuacion:   "+floor(highscore/29),width/2,height/2+50);
      textSize(40);
      text("Restart",width/2,height/2+360);
      if (mouseX>width/2-100&&mouseX<width/2+100&&mouseY>height/2+300&&mouseY<height/2+400&&mousePressed) {
        reset();
        panday=540;
        yspeed=0;
        dead=0;
        score=0;
      }
      image(pandacrossing,width/2,200,800,200);           
    }
  }  
}
void reset() {
  x1=width;
  x2=x1+gapx;
  x3=x2+gapx;
  grav = 0;
  speed=0;
}

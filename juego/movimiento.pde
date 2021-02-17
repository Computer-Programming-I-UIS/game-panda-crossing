  void suelo(){
  imageMode(CORNER);
  rectMode(CORNER);
  image(background,0,0);    //fondo
  groundx+=speed;
  groundx1+=speed;
  if (groundx+1950<0) groundx=width;
  image(ground,groundx,height-75);
  image(ground,groundx+325,height-75);
  image(ground,groundx+650,height-75);             //movimiento del suelo
  image(ground,groundx+975,height-75);
  image(ground,groundx+1300,height-75);
  image(ground,groundx+1625,height-75);
  if (groundx1+1950<0) groundx1=width;
  image(ground,groundx1,height-75);
  image(ground,groundx1+325,height-75);
  image(ground,groundx1+650,height-75);
  image(ground,groundx1+975,height-75);
  image(ground,groundx1+1300,height-75);
  image(ground,groundx1+1625,height-75);
    
  yspeed+=grav;
  panday+=yspeed;  
  if (dead==0) if (keyPressed) {    //comando con el cual el panda se movera
    if (keyCode==UP) {
      yspeed=-10;
      grav = 1;               // velocidad del panda en movimiento 
      speed = -5;
      yspeed = -10;
    }
  }
  }

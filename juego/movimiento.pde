void inicio(){
  player.loop();
 imageMode(CORNER);  
 image(inicio,0,0);
 rectMode(CORNER);
 fill(255);
 rect(300, 500, 100, 50);
 rect(450, 500, 100, 50);
 if(juegoo == 0 && mousePressed && mouseX > 300 && mouseX < 400 && mouseY > 500 && mouseY < 550){
  juegoo=1;
 }
 if(juegoo == 0 && mousePressed && mouseX > 450 && mouseX < 550 && mouseY > 500 && mouseY < 550){
  juegoo=2;
 }
 
if(juegoo==1){
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
  
 if(juegoo==2){
   image(creditos,0,0);
   fill(255);
   rect(100, 700, 100, 50);
   if(juegoo==2 && mousePressed && mouseX > 100 && mouseX < 200 && mouseY > 700 && mouseY < 750){
     juegoo=0;
   }
 }
}

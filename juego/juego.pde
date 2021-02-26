import processing.dxf.*;

//varibles 
 int juegoo = 0;
float speed,gap=400,size=150,gapx=800,dead,groundx,groundx1=1920,score,highscore=0*29;
//panda
float pandax=100,panday=540,pandasize=100,yspeed,grav;
//block 1
float x1,y1=random(0,1080-gap);
//block 2
float x2,y2=random(0,1080-gap);
//block 3
float x3,y3=random(0,1080-gap);
PImage panda,up,down,ground,background,pandacrossing,inicio,creditos,instrucciones;
import ddf.minim.*;   

Minim minim;
AudioPlayer player; 

void setup() {
  minim = new Minim(this); 
  player = minim.loadFile("musica.mp3");
  size(1400,900);
  reset();
  panda = loadImage("panda.png");
  up = loadImage("up.png");
  down = loadImage("down.png");
  ground = loadImage("ground.png");
  background = loadImage("background.png");
  pandacrossing = loadImage("pandacrossing.png");
  inicio = loadImage("inicio.png");
  creditos = loadImage("creditos.png");
  instrucciones = loadImage("instrucciones.png");
}
void draw() {
  inicio();
 
  tubos();
  
  muerte();
  
}

void tubos(){

imageMode(CENTER);
  image(panda,pandax,panday);  
  //tubos 1
  x1+=speed;  
  fill(124,252,0);
  rect(x1,y1,size,-9999);       
  rect(x1,y1+gap,size,9999);
  if (x1+size<0) {
    x1 = x3 + gapx;
    y1=random(0,1080-gap);
  }
  if (pandax>x1 && pandax<x1+size && panday<y1 || pandax>x1 && pandax<x1+size && panday>y1+gap) dead=1;
  if (pandax>x1&&pandax<x1+size&&dead==0) score+=1;  
  //tubos 2
  x2+=speed;  
  rect(x2,y2,size,-9999);
  rect(x2,y2+gap,size,9999);
  if (x2+size<0) {
    x2 = x1 + gapx;
    y2=random(0,1080-gap);
  }
  if (pandax>x2 && pandax<x2+size && panday<y2 || pandax>x2 && pandax<x2+size && panday>y2+gap) dead=1;
  if (pandax>x2&&pandax<x2+size&&dead==0) score+=1;  
  //block 3
  x3+=speed;  
  rect(x3,y3,size,-9999);
  rect(x3,y3+gap,size,9999);
  if (x3+size<0) {
    x3 = x2 + gapx;
    y3=random(0,1080-gap);
  }
}

float xLocation;
float yLocation;

void setup(){
  size(700,700);
  background(255,255,255);
  xLocation =  random(700);
  yLocation = random(700);
}
void draw(){
  float newxlocation = xLocation + random(100)-50;
  float newylocation = yLocation + random(100)-50;
  if (newxlocation <0){
   newxlocation = 0;
  }
  if (newxlocation >700){
   newxlocation = 700;
  }
  if (newylocation <0){
   newylocation = 0;
  }
  if (newylocation >700){
   newylocation = 700;
  }
  
  stroke(random(255),0,random(255),100);
  line(xLocation,yLocation,newxlocation,newylocation);
  float randomCirclesize = random(50);
  fill(random(255),0,random(255),20);
  ellipse(newxlocation,newylocation,randomCirclesize,randomCirclesize);
  
  xLocation = newxlocation;
  yLocation = newylocation;
}
void mousePressed(){
  saveFrame("frames/###.jpg");
}

void setup(){
  size(700,700);
  background(255,255,255);
  
}
void draw(){
  noStroke();
  float randomXLocation = random(700);
  if(randomXLocation > 350){
   fill(random(100),random(100),random(255),20);
  }else{
    fill(random(255),random(100),random(255),20);
  }
    
  float randomDiameter = random(100);
  ellipse(randomXLocation,random(700),randomDiameter,randomDiameter);
}
void mousePressed(){
  saveFrame("frames/###.jpg");
}

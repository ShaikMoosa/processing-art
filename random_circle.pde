void setup(){
  frameRate(1000);
  size(700,700);
  background(255,255,255);
  stroke(255,255,255,255);
}
void draw(){
  float xlocation = random(700);
  float ylocation = random(700);
  fill(0,0,ylocation,20);
  ellipse(xlocation, ylocation,xlocation/10,xlocation/10);
}
void mousePressed(){
  saveFrame("frames/###.jpg");
}

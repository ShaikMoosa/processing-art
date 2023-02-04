int cols;
int rows;
float cellW ;
float cellH;
color[] colors = { #4C17BF , #332259, #B3E0F2, #F2C53D, #D95204};

void setup(){
  size(600, 400);
  background(#251b20);
  noStroke();
  
  cols = 15;
  rows = 10;
  cellW = width/cols;
  cellH = height/rows;
  noLoop();
}
void draw(){
 for(int i=0; i<cols; i++){
  for(int j=0; j<rows; j++){
    //float r = random(255);
    //float g = random(255);
    //float b = random(255);
    //fill(r,g,b);
    int r = int(random(5));
    float circleSize = random(cellW);
    fill(colors[r]);
    int randomPos = int(random(2));
    //if (i%2 == 0){
      if (randomPos == 0){
    ellipse(i* cellW + cellW/2,j*cellH+cellH/2,circleSize,circleSize);
    r = int(random(5));
    fill(colors[r]);
    circleSize = random(cellW);
    ellipse(i* cellW + cellW/2,j*cellH+cellH/2,circleSize,circleSize);
  }else{
    ellipse(i* cellW + cellW/2,j*cellH+cellH/2,circleSize,circleSize);
  }
}
}
}

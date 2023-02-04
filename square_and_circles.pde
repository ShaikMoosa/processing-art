void setup() {
  size(500, 500);
  background(255);
  noStroke();
  frameRate(2);
}

void draw() {
  int tileSize = 100;
  for (int x = 0; x < width; x += tileSize) {
    for (int y = 0; y < height; y += tileSize) {
      int randomColor = (int)random(5);
      if (randomColor == 0) {
        fill(76, 23, 191);
      } else if (randomColor == 1) {
        fill(51, 34, 89);
      } else if (randomColor == 2) {
        fill(179, 224, 242);
      } else if (randomColor == 3) {
        fill(242, 197, 61);
      } else {
        fill(217, 82, 4);
      }
      int randomShape = (int)random(2);
      if (randomShape == 0) {
        rect(x, y, tileSize, tileSize);
      } else {
        ellipse(x + tileSize / 2, y + tileSize / 2, tileSize, tileSize);
      }
    }
  }
}

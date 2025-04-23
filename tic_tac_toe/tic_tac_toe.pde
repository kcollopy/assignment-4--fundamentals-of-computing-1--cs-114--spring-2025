void setup() {
  size(500, 500);
  background(250);
  drawBoard();
}

void draw() {
  drawX(width/3, height/3, (width*2)/3, (height*2)/3,(width*2)/3, height/3, width/3, (height*2)/3);
}

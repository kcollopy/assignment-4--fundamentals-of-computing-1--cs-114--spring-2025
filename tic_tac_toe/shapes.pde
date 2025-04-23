void drawBoard() {
  line(width/3, 0, width/3, height);
  line((width*2)/3, 0, (width*2)/3, height);
  line(0, height/3, width, height/3);
  line(0, (height*2)/3, width, (height*2)/3);
}

private void drawX(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  line(x1, y1, x2, y2);
  line(x3, y3, x4, y4);
  }

private void drawO(int centerX, int centerY) {
  circle(centerX, centerY, height/4);
}

void xLocation(int index) {
  int row = index % 3;
  int col = index/3;
  drawX((width*row)/3, (height*col)/3, (width*(row+1))/3, (height*(col+1))/3, (width*(row+1))/3, (height*col)/3, (width*row)/3, (height*(col+1))/3);
}

void oLocation(int index) {
  int row = index % 3;
  int col = index/3;
  drawO((width + ((row*2)*width))/6, (height+((col*2)*height))/6);
}


  
  

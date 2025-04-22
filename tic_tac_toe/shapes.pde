void drawX(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4){
  line(x1, y1, x2, y2);
  line(x3, y3, x4, y4);
  }

void drawBoard() {
  line(width/3, 0, width/3, height);
  line((width*2)/3, 0, (width*2)/3, height);
  line(0, height/3, width, height/3);
  line(0, (height*2)/3, width, (height*2)/3);
}

void drawO(int centerX, int centerY) {
  circle(centerX, centerY, height/4);
}


  
  

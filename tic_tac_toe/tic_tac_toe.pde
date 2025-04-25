void setup() {
  size(500, 500);
  background(250);
  drawBoard();
}

void draw() {
  //game loop
  //
  if (!gameOver) {
    if (!playerTurn) {
      computerPlays();
      playerTurn = true;
    }
  }
}

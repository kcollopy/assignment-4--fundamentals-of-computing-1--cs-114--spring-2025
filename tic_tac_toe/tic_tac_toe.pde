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
    for (int i = 0; i < board.length; i++) {
    if (board[i] == 'X') {
      xLocation(i);
    } else if (board[i] == 'O') {
      oLocation(i);
    }
  }
}

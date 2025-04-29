void setup() {
  size(500, 500);
  background(250);
  drawBoard();
}

void draw() {
  if (!gameOver) {
    if (!playerTurn) {
      computerPlays();
      playerTurn = true;
    }
  }
  if (isTaken(0) && isTaken(1) && isTaken(2) && isTaken(3) && isTaken(4) && isTaken(5) && isTaken(6) && isTaken(7) && isTaken(8) && !boardFull) {
    println("It is a tie! No one wins!");
    boardFull = true;
    gameOver = true;
  }
}

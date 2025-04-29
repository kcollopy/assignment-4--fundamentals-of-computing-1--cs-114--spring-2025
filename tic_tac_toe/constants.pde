boolean playerTurn = false;
boolean gameOver = false;
boolean boardFull = false;

char[] board = new char[9];

boolean isTaken(int index) {
  return board[index] == 'X' || board[index] == 'O';
}

final int[][] winningMoves = {
  {0,1,2}, {3,4,5}, {6,7,8},
  {0,3,6}, {1,4,7}, {2,5,8},
  {0,4,8}, {2,4,6}
};

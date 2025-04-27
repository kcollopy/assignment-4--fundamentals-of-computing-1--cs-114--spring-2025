boolean playerTurn = false;
boolean gameOver = false;

char[] board = new char[9];

boolean isTaken(int index) {
  return board[index] == 'X' || board[index] == 'O';
}

  int[][] winningMoves = {
    {0,1,2}, {3,4,5}, {6,7,8},
    {0,3,6}, {1,4,7}, {2,5,8},
    {0,4,8}, {2,4,6}
  };
//boolean for check winning moves
boolean checkWinnning(char player) {
  for(i = 0; i <= winningMoves.length; i++) {
    int[] combo = winningMoves[i];
  }
  if(board[combo[0]] == player && board[combo[1]] == player && board[combo[2]]){
    return true;
  }else{
    return false;

//boolean for finiding winning moves

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
boolean findingWinningMoves(char player) {
  for(i = 0; i < winningMoves.length; i++) {
    int first = winningMoves[i][1];
    int second = winningMoves[i][2];
    int third = winningMoves[i][3];
    
    playerMark == 0;
    emptyspot == -1;
    
    if(board[first] == player) {
      playerMarks++;
    } else if(board[first] == '/0') {
      emptySpot = first;
    }
    if(board[second] == player) {
      playerMarks++;
    } else if (board[second] == '/0') {
      emptySpot = second;
    }
    if(board[third] == player) {
      playerMarks++;
    } else if(board[third] == '/0') {
      emptySpot = third;
    }
    if(playerMarks == 2 && emptySpot = -1) {
      return emptySpot;
    } else {
      return -1;
  }
}

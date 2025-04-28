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
boolean checkWinning(char player) {
  for(int i = 0; i < winningMoves.length; i++) {
    int[] combo = winningMoves[i];
  }
  if(board[combo[0]] == player && board[combo[1]] == player && board[combo[2]] == player){
    return true;
  }else{
    return false;
  }

//boolean for finiding winning moves
int findingWinningMoves(char player) {
  for(int i = 0; i < winningMoves.length; i++) {
    int first = winningMoves[i][1];
    int second = winningMoves[i][2];
    int third = winningMoves[i][3];
    
    playerMark == 0;
    emptyIndex == null;
    
    if(board[first] == player) {
      playerMarks++;
    } else if(board[first] == '/0') {
      emptyIndex = first;
    }
    if(board[second] == player) {
      playerMarks++;
    } else if (board[second] == '/0') {
      emptyIndex = second;
    }
    if(board[third] == player) {
      playerMarks++;
    } else if(board[third] == '/0') {
      emptyIndex = third;
    }
    if(playerMarks == 2 && emptyIndex = null) {
      return emptyIndex;
    } else {
      return null;
    }
  }
}

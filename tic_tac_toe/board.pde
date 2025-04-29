//Checking if the user or the computer has won
boolean checkWinning(char player) {
  for(int i = 0; i < winningMoves.length; i++) {
    int[] combo = winningMoves[i];
    
    if(board[combo[0]] == player && board[combo[1]] == player && board[combo[2]] == player){
      return true;
    } 
  }
  return false;
}

//Finding if there are any winning moves for either the computer or the user
int findingWinningMoves(char player) {
  for(int i = 0; i < winningMoves.length; i++) {
    int first = winningMoves[i][0];
    int second = winningMoves[i][1];
    int third = winningMoves[i][2];
    
    int playerMarks = 0;
    int emptyIndex = -1;
    
    if(board[first] == player) {
      playerMarks++;
    } else if(board[first] == '\0') {
      emptyIndex = first;
    }
    if(board[second] == player) {
      playerMarks++;
    } else if(board[second] == '\0') {
      emptyIndex = second;
    }
    if(board[third] == player) {
      playerMarks++;
    } else if(board[third] == '\0') {
      emptyIndex = third;
    }
    if(playerMarks == 2 && emptyIndex != -1) {
      return emptyIndex;
    }
  }
  return -1;
}

void keyPressed() {
  int index = key - '0';

  if(!gameOver){
    //Will not let user pick a spot that is already taken
    if (index < 0 || index > 8 || isTaken(index)) {
      println("Invalid or taken spot");
      return;
    }
    
    oLocation(index);

    if(checkWinning('O')) {
      println("you win!");
      gameOver = true;
    }else{
      playerTurn = false; 
      println("You played at " + index + ", game continues..."); 
    }
  } else {
    //Will not let user play if the game is over
    println("Game is over");
  }
}

void computerPlays() {
  //First checks to see if the computer can win
  if(findingWinningMoves('X') != -1) {
    xLocation(findingWinningMoves('X'));
    println("Computer wins!");
    gameOver = true;
    return;
  }
  
  //Checks if the computer needs to block
  if(findingWinningMoves('O') != -1) {
    xLocation(findingWinningMoves('O'));
    return;
    }
   
  //If the computer does not have a winning move or cannot block, moving to a spot starting with the middle, then corners, then middles, depending on what is taken
  int[] priorityMove = {4, 0, 2, 6, 8, 1, 3, 5, 7};
  for( int i = 0; i < priorityMove.length; i++){
    if(!isTaken(priorityMove[i])) {
      xLocation(priorityMove[i]);
      return;
    }
  }
}



    
  

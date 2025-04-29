void keyPressed() {
  int index = key - '0';

  if(!gameOver){
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
      println("You played at " + index + " game continues..."); 
    }
  } else {
    println("Game is over");
  }
}

void computerPlays() {
  if(findingWinningMoves('X') != -1) {
    xLocation(findingWinningMoves('X'));
    println("Computer wins!");
    gameOver = true;
  }
  
  if(findingWinningMoves('O') != -1) {
    xLocation(findingWinningMoves('O'));
    }
    
  if(findingWinningMoves('X') == -1 && findingWinningMoves('X') == -1) {
    int[] priorityMove = {4, 0, 2, 6, 8, 1, 3, 5, 7};
    for( int i = 0; i < priorityMove.length; i++){
      if(!isTaken(priorityMove[i])) {
        xLocation(priorityMove[i]);
        break;
      }
    }
  }
}



    
  

void keyPressed() {
  int index = key - '0';

  if (index < 0 || index > 8 || isTaken(index)) {
    println("Invalid or taken spot");
    return;
  }

  oLocation(index);

//need to check if  user wins
  if(checkWinning('O')) {
    println("you win!");
    gameOver = true;
  }else{
    playerTurn = false; //return play to computer
  }
}

void computerPlays() {
//Check if user won
  if(checkWinning('X')) {
    println("You lose!");
    gameOver = true;
  }
//check for open spots
//check to win using winning combos <- place 'X' to win
  if(findingWinningMoves('X') != null) {
    xLocation(findingWinningMoves('X'));
    println("Computer wins!");
    return;
  }
//if there are no winning combos then check to block (if the user has any winning combos) <- place 'X' to block
  if(findingWinningMoves('O') != null) {
    xlocation(findingWinningMoves('O'));
  }
//if niether place X starting with corners then to middles <- first move should always be the middle
  int[] priorityMove = {4, 0, 2, 6, 8, 1, 3, 5, 7};
  for( i = 0; i < priorityMove.length; i++){
    if(!isTaken(priorityMove[i])) {
      xLocation(priorityMove[i]);
      break;
    }
  }
}



    
  

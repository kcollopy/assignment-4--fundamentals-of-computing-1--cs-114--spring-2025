void keyPressed() {
  int index = key - '0';

  if (index < 0 || index > 8 || isTaken(index)) {
    println("Invalid or taken spot");
    return;
  }

  oLocation(index);

//need to check if  user wins
//return play to computer
}

void computerPlays() {
//Check if user won
//check for open spots
//check to win using winning combos <- place 'X' to win
//if there are no winning combos then check to block (if the user has any winning combos) <- place 'X' to block
//if niether place X starting with corners then to middles <- first move should always be the middle
}



    
  

void keyPressed() {
  int index = key - '0';

  if (index < 0 || index > 8) {
    println("Invalid key");
    return;
  }
  
  oLocation(index);
  
  switch(index) {
    case 0:
    if(int(random(2)) == 0) {
      xLocation(2);
    } else {
      xLocation(6);
    }
    break;
    case 1:
    if(int(random(2)) == 0) {
      xLocation(0);
    } else {
      xLocation(2);
    }
    break;
    case 2:
    if(int(random(2)) == 0) {
      xLocation(0);
    } else {
      xLocation(6);
    }
    break;
    case 3:
     if(int(random(2)) == 0) {
      xLocation(0);
    } else {
      xLocation(6);
    }
    break;
    case 4:
    println("Choose a different spot this one is taken");
    break;
    case 5:
    if(int(random(2)) == 0) {
      xLocation(2);
    } else { 
      xLocation(8);
    }
    break;
    case 6:
    if(int(random(2)) == 0) {
      xLocation(2);
    } else {
      xLocation(8);
    }
    break;
    case 7:
    if(int(random(2)) == 0) {
      xLocation(6);
    } else {
      xLocation(8);
    }
    break;
    case 8:
    if(int(random(2)) == 0) {
      xLocation(2);
    } else {
      xLocation(6);
    }
    break;
  }
}


    
  

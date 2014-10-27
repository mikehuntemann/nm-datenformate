int stepSize = 10;
float pointSize = 1;

int x;
int y;
int a;
int b;

float deg = 0;

void setup() {
  size(500, 1000);
  //colorMode(HSB);
  
  a = round(random(width));
  b = round(random(height));
  
  x = round(random(width));
  y = round(random(height));
}

void draw() {
  deg = frameCount % 360;
  //stroke(frameCount % 255, 255, 255);
  stroke(0,random(150,255),255);
  strokeWeight(random(pointSize / 4, pointSize));
  pushMatrix();
  translate(x, y);
  rotate(radians(deg));
  line(0, 0,random(5,50),random(5,50));
  popMatrix();
  //line(a, b, a+20, b-20);
  
  /*if (deg <= 359) {
  deg++;
  } else {
  deg = 0;
  }
  */
  a = updatePoint(a, width);
  b = updatePoint(b, height);
  x = updatePoint(x, width-50);
  y = updatePoint(y, height-50);
}

/*
 * position: position auf der achse
 * maximum: maximum der achse
 */
int updatePoint(int position, int maximum) {
  
  int offset;
  float leftOrRight = random(-1, 1);
  int newPosition;

  if (leftOrRight < 0) {
    offset = stepSize;
  }
  else {
    offset = -stepSize;
  }
  
  newPosition = position + offset;
  boolean newPositionIsOnStage = isOnStage(newPosition, maximum);
  
  // die neue position ist innerhalb der bühne
  if (newPositionIsOnStage) {
    return newPosition;
  }
  else {
    // außerhalb der bühne -> erneut berechnen
    return updatePoint(position, maximum);
  }
}

boolean isOnStage (int position, int maximum) {
  // position ist kleiner als 0 oder größer-gleich maximum
  if (position < 0 || position >= maximum) {
    return false;
  }
  else {
    return true;
  }
}




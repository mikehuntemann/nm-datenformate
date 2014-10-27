int stepSize = 5;
float pointSize = 2.5;

int x;
int y;

void setup() {
  size(300, 600);

  x = round(random(width));
  y = round(random(height));
}

void draw() {
  strokeWeight(random(pointSize / 4, pointSize));
  point(x, y);
  
  x = updatePoint(x, width);
  y = updatePoint(y, height);
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


class Walker {
  int stepSize = 10;
  float pointSize = 1;

  int x;
  int y;
  int a;
  int b;

  float deg = 0;

  Walker () {
    //Zufällige Startpunkte
    this.a = round(random(width));
    this.b = round(random(height));

    this.x = round(random(width));
    this.y = round(random(height));
  }

  void draw () {
    deg = frameCount % 360;
    //stroke(frameCount % 255, 255, 255);
    stroke(0, random(150, 255), 255);
    strokeWeight(random(pointSize / 4, this.pointSize));
    pushMatrix();
    translate(x, y);
    rotate(radians(deg));
    line(0, 0, random(5, 20), random(5, 20));
    popMatrix();
    stroke(255, 125, 125);
    line(this.a, this.b, this.a+20, this.b-20);


    this.a = this.updatePoint(this.a, width);
    this.b = this.updatePoint(this.b, height);
    this.x = this.updatePoint(this.x, width-50);
    this.y = this.updatePoint(this.y, height-50);
  }

  int updatePoint(int position, int maximum) {

    int offset;
    float leftOrRight = random(-1, 1);
    int newPosition;

    if (leftOrRight < 0) {
      offset = stepSize;
    } else {
      offset = -stepSize;
    }

    newPosition = position + offset;
    boolean newPositionIsOnStage = isOnStage(newPosition, maximum);

    // die neue position ist innerhalb der bühne
    if (newPositionIsOnStage) {
      return newPosition;
    } else {
      // außerhalb der bühne -> erneut berechnen
      return updatePoint(position, maximum);
    }
  }

  boolean isOnStage (int position, int maximum) {
    // position ist kleiner als 0 oder größer-gleich maximum
    if (position < 0 || position >= maximum) {
      return false;
    } else {
      return true;
    }
  }
}


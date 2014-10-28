class Walker2 {
  int stepSize = 10;
  float pointSize = 2;

  int x;
  int y;
  int a;
  int b;

  int sizeTriangle;
  int baseSize = 15;

  float deg = 0;

  int gradeG;
  int gradeB;
  int gradeA;

  Walker2 () {
    //Zufällige Startpunkte
    this.a = round(random(width));
    this.b = round(random(height));

    this.x = round(random(width));
    this.y = round(random(height));

    //this.gradeG = round((random(125)));
    //this.gradeB = round((random(125)));
    //this.gradeA = round((random(125)));
  }

  void draw () {
    deg = frameCount % 360;
    //stroke(frameCount % 255, 255, 255);
    noStroke();
    //fill(255, gradeG, gradeB);
    fill(255, random(150, 255), 0);
    //strokeWeight(random(pointSize / 4, this.pointSize));
    //pushMatrix();
    //translate(x, y);
    //rotate(radians(deg));
    triangle(this.x-baseSize-sizeTriangle, this.y, this.x, this.y-baseSize*2-sizeTriangle, x+baseSize+sizeTriangle, y);
    //triangle(this.x-baseSize-sizeTriangle, this.y, this.x, this.y+baseSize*2+sizeTriangle, x+baseSize+sizeTriangle, y);
    //popMatrix();



    this.a = this.updatePoint(this.a, width);
    this.b = this.updatePoint(this.b, height);
    this.x = this.updatePoint(this.x, width);
    this.y = this.updatePoint(this.y, height);
  }

  int updateTriangle(int sizeTriangle) {


    if (sizeTriangle <= 40) {
      sizeTriangle++;
    } else {
      sizeTriangle = 0;
    }

    return sizeTriangle;
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


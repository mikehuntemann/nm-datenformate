class Walker {

  int x;
  int y;
  int sizeTriangle;
  float r = 0;
  float alpha = 60;
  int counter;
  int counterRound = 0;
  int randomFill;
  float randomRotation;
  
  Walker () {
    //Zufällige Startpunkte
    this.x = round(random(width));
    this.y = round(random(height));
    this.randomFill = round(random(0,200));
    this.randomRotation = random(0.5,1);
    this.sizeTriangle = 100;
  }

  void draw () {

    counter++;
    //alpha = alpha + 1;
    r = r + randomRotation;

    if (counter < 10) {
      rectMode(CENTER);
      //noStroke();
      stroke(this.randomFill, 255, this.randomFill, alpha);
      translate(this.x, this.y);
      rotate(r);
      line(0,0,50,0);
      //triangle(-this.sizeTriangle, 0, 0, -this.sizeTriangle, this.sizeTriangle, 0);
      resetMatrix();
      
    }
  }
  
}


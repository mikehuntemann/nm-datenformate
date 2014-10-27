int x;
int y;
int gradeG;
int gradeB;
int gradeA;
int sizeTriangle;

void setup () {
  //frameRate(25);
  size(500, 1000);
}

void draw () {
  noStroke();
  
  x = round(random(displayWidth));  //random gibt Dezimalzahlen aus
  y = round(random(displayHeight)); //round rundet auf natürliche Zahlen
  
  gradeG = round((random(255)));
  gradeB = round((random(255)));
  gradeA = round((random(255)));

  
  fill(0, gradeG, gradeB,gradeA);
  //triangle(x1,y1,x2,y2,x3,y3);
  triangle(x-15-sizeTriangle,y,x,y-30-sizeTriangle,x+15+sizeTriangle,y);
  sizeTriangle = updateTriangle(sizeTriangle);
}

int updateTriangle(int sizeTriangle) {
  
  
  if (sizeTriangle <= 20) {
    sizeTriangle++;
  } else {
    sizeTriangle = 0;
  }
  
  return sizeTriangle;
}

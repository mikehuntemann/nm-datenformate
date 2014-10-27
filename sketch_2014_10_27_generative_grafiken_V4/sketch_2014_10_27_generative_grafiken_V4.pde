int x;
int y;
int gradeG;
int gradeB;
int gradeA;
int sizeTriangle;
int baseSize = 15;

void setup () {
  //frameRate(25);
  size(500, 1000);
}

void draw () {
  noStroke();
  
  x = round(random(600));  //random gibt Dezimalzahlen aus
  y = round(random(1200)); //round rundet auf natürliche Zahlen
  
  gradeG = round((random(125)));
  gradeB = round((random(125)));
  gradeA = round((random(125)));

  
  fill(255, gradeG, gradeB,gradeA);
  //triangle(x1,y1,x2,y2,x3,y3);
  triangle(x-baseSize-sizeTriangle,y,x,y-baseSize*2-sizeTriangle,x+baseSize+sizeTriangle,y);
  triangle(x-baseSize-sizeTriangle,y,x,y+baseSize*2+sizeTriangle,x+baseSize+sizeTriangle,y);
  sizeTriangle = updateTriangle(sizeTriangle);
}

int updateTriangle(int sizeTriangle) {
  
  
  if (sizeTriangle <= 10) {
    sizeTriangle++;
  } else {
    sizeTriangle = 0;
  }
  
  return sizeTriangle;
}

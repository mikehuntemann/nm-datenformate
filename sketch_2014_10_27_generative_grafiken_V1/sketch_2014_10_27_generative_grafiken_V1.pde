int x;
int y;
int gradeG;
int gradeB;
int gradeA;
int sizeEllipse;

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
  ellipse(x, y, sizeEllipse, sizeEllipse);
  sizeEllipse = updateEllipse(sizeEllipse);
}

int updateEllipse(int sizeEllipse) {
  
  
  if (sizeEllipse <= 50) {
    sizeEllipse++;
  } else {
    sizeEllipse = 0;
  }
  
  return sizeEllipse;
}

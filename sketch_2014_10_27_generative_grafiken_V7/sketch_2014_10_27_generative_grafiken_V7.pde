Walker walker;
float deg = 0;
int walkersAmount = 300;
ArrayList<Walker> walkers = new ArrayList();
int randomFill;

void setup() {
  size(500, 1000);
  background(0);
  rectMode(CENTER);

  //walker = new Walker();
  for (int i = 0; i < walkersAmount; i++) {
    walkers.add(new Walker());
  }
}
void draw() {

  for (int i = 0; i < walkers.size (); i++) {
    Walker walker = walkers.get(i);
    walker.draw();
  }

  //println(walker.x); //Abfragen
}

void keyReleased() {
  saveFrame("export/" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_"  + minute() + "_" + day() + "_Frame_#####");
}


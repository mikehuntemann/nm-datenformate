Walker walker;

int walkersAmount = 25;
ArrayList<Walker> walkers = new ArrayList();


void setup() {
  size(500, 1000);
  background(0);

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
  saveFrame("export/" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_"  + minute() + "_" + day() + "_Frame_#####.jpg");
}


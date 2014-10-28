Walker walker;

int walkersAmount = 10;
ArrayList<Walker> walkers = new ArrayList();

int walkers2Amount = 10;
ArrayList<Walker2> walkers2 = new ArrayList();

void setup() {
  size(500, 1000);
  background(0);

  //walker = new Walker();
  for (int i = 0; i < walkersAmount; i++) {
    walkers.add(new Walker());
  }

  for (int i = 0; i < walkers2Amount; i++) {
    walkers2.add(new Walker2());
  }
}

void draw() {
  for (int i = 0; i < walkers.size (); i++) {
    Walker walker = walkers.get(i);
    walker.draw();
  }
    for (int i = 0; i < walkers2.size (); i++) {
      Walker2 walker2 = walkers2.get(i);
      walker2.draw();
    }
    //println(walker.x); //Abfragen
  }

  void keyReleased() {
    saveFrame("export/" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_"  + minute() + "_" + day() + "_Frame_#####");
  }


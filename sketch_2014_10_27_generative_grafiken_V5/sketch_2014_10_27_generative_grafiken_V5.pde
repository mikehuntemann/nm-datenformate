Walker walker;
ArrayList<Walker> walkers = new ArrayList();


void setup() {
  size(500, 1000);
  background(0);

  //walker = new Walker();

  walkers.add(new Walker());
  walkers.add(new Walker());
  walkers.add(new Walker());
  walkers.add(new Walker());
  walkers.add(new Walker());
  walkers.add(new Walker());
  walkers.add(new Walker());
  walkers.add(new Walker());
  
}

void draw() {
  int walkerSize = walkers.size();
  int walkerIndex = 0;
  
  while (walkerIndex < walkerSize) {
  Walker walker = walkers.get(walkerIndex);
  walker.draw();
  walkerIndex++;
  }
  //println(walker.x); //Abfragen
}

void keyReleased() {
  saveFrame("export/" + year() + "_" + month() + "_" + day() + "_" + "_Frame_#####");
}


ArrayList<bird> population, saved;
ArrayList<pipe> pipes;
float TOTAL;
int Gens;
int counter;
int birdSurvive;
int maxSurvive;
float x,y,z;
PImage[] dover = new PImage[4];

boolean showBird = false;

void setup() {
  size(1600, 480);

  imageMode(CENTER);
  for (int i = 0; i < 1; i ++) {
    dover[i] = loadImage("dove0"+(i+1)+".png");
  }

  TOTAL = 500;
  pipes = new ArrayList<pipe>();
  population = new ArrayList<bird>();
  saved = new ArrayList<bird>();
  for (int i = 0; i < TOTAL; i++) {
    population.add(new bird());
  }
  counter = 0;
}

void draw() {
  background(#3680BF);

  if (counter % 75 == 0) {
    pipes.add(new pipe());
  }

  for (int i = pipes.size()-1; i >= 0; i--) {
    pipe p = pipes.get(i);
    p.update();
    if (p.offscreen()) {
      pipes.remove(i);
    }

    for (int j = population.size()-1; j >= 0; j--) {
      bird b = population.get(j);
      if (p.hit(b) || b.dead()) {
        saved.add(b);
        population.remove(j);
      }
    }
    birdSurvive = population.size();
  }

  if (population.size() == 0) {
    counter = 0;
    nextGeneration();
    pipes.clear();
    pipes.add(new pipe());
  }

  for (bird b : population) {
    b.show();
    b.update();
    b.think(pipes);
  }

  for (int i = pipes.size()-1; i >= 0; i--) {
    pipe p = pipes.get(i);
    p.show();
  }

  counter++;
  fill(0);
  textSize(24);
  text("Generation: "+ Gens, 20, 35);
  text("Survive: " + birdSurvive + " (" + 100*birdSurvive/TOTAL+"%)", 20, 60);
  text("LifeSpan: " + counter, 20, 85);
  if (counter > maxSurvive) {
    maxSurvive = counter;
  }
  text("MaxSurvive: " + maxSurvive, 20, 110);


  if (counter > 0) {
    showBird = true;
  } else {
    showBird = false;
  }
}

//void thebackground() {
//  colorMode(HSB, 360, 255, 100);
//  x=random(0,100);
//  y=random(0,150);
//  z=random(50, 80);
//  fill(x, y, z);
//  rect(0, 0, width,height);
//}

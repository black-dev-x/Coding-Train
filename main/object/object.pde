Particle p1;
Particle p2;

void setup() {
  size(640,360);
  p1 = new Particle(100, 100, 50);
  p2 = new Particle(500, 300, 100);
}

void draw() {
  background(0);
  if(p1.overlaps(p2)) {
    background(100,50,50);
  }
  p1.x = mouseX;
  p1.y = mouseY;
  p1.display();
  p2.display();
}

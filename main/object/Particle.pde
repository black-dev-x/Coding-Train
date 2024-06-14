class Particle {
  int x;
  int y;
  int r;
  Particle(int x, int y, int r){
    this.x = x;
    this.y = y;
    this.r = r;
  }
  
  void display() {
    stroke(255);
    strokeWeight(4);
    noFill();
    ellipse(x, y, r*2, r*2);
  }
  
  boolean overlaps(Particle other){
    return dist(x, y, other.x, other.y) < (r + other.r + 4);
  }
}

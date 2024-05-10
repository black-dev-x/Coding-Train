void setup() {
  size(1000,1000);
  background(50);
}

void draw() {
  
  stroke(255);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed() {
  background(50);
}

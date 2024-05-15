float circleX = 1;
float velocity = 10;

void setup() {
  size(640, 360);
}

void draw() {
  background(50);
  fill(255);
  ellipse(circleX, 180, 24, 24);
  if(circleX >= width || circleX <= 0) {
    velocity *= -1;
  }
  velocity*= 0.999;
  circleX += velocity;
}

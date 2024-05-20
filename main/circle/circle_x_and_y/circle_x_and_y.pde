float circleX = 0;
float circleY = 180;
float speedX = 4;
float speedY = 4;
float radius = 50;

void setup() {
  size(640, 360);
}

void draw() {
  background(50);
  fill(255);
  ellipse(circleX,circleY,radius*2,radius*2);
  circleX += speedX;
  circleY += speedY;
  if(circleX >= width - radius) speedX = -abs(speedX);
  if(circleY >= height - radius) speedY = -abs(speedY);
  if(circleX <= radius) speedX = abs(speedX);
  if(circleY <= radius) speedY = abs(speedY);
}

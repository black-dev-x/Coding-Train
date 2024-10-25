class Bubble {
  float x;
  float y;
  float size;
  float bubbleColor1 = random(1,255);
  float bubbleColor2 = random(1,255);
  float bubbleColor3 = random(1,255);
  Bubble() {
    x = random(0, width);
    y = height;
    size = random(1,64);
  }
  void display(){
    stroke(0);
    fill(bubbleColor1, bubbleColor2, bubbleColor3);
    ellipse(x,y,size,size);
  }
  void ascend(){
    y = y + random(-3,2);
    x = x + random(-2,2);
  }
  void top() {
    float border = size / 2;
    if(y < border) {
      y = border;
    }
  }
}

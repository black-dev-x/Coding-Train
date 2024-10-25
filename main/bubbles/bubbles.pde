Bubble[] bubbles = new Bubble[3000];

void setup() {
  size(800,800);
  for(int i = 0; i < bubbles.length; i++){
    bubbles[i] = new Bubble();
  }
}

void draw() {
  background(255);
  for(int i = 0; i < bubbles.length; i++){
    Bubble bubble = bubbles[i];
    bubble.ascend();
    bubble.display();
    bubble.top();
  }
}

import processing.video.*;

Capture video;
Particle[] particles;

void setup() {
  size(640,480);
  video = new Capture(this, 640, 480);
  video.start();
  particles = new Particle[8000];
  for (int i = 0; i < particles.length; i++){
    particles[i] = new Particle();
  }
  background(0);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);
  for (int i = 0; i < particles.length; i++) {
    particles[i].display();
    particles[i].move();
  }
}
  

float x = 0;
int threadExecuted = 0;
boolean loadingData = false;

void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(4);
  line(x,0,x,height);
  x = x + 10;
  if(x > width){
    x = 0;
  }
  // just for example purposes on how to use frameCount, so every 60 frames it calls another thread
  // of course this is not needed, after all we already had a "loadingData" variable, that's more "efficient"
  if(frameCount % 60 == 0) {
    thread("loadData");
  }
  
}

void loadData() {
  if(!loadingData) {
    loadingData = true;
    println("GOT DATA");
    println(threadExecuted++);
    delay(1000);
    loadingData = false;
  } else {
    println("Was already busy loading data");
  }
}

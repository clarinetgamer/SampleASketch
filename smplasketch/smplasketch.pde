import java.util.Map;
import processing.sound.*;

void settings() { // using variables for size must be done in settings()
  int[] sizeArr = {1172, 638}; //fix width to match pi cam
  int width = sizeArr[0];
  int height = sizeArr[1];
  size(width, height);
}

void setup() {
  modWavImg = createImage(width, height, RGB); // Create image to write other data to
  modEnvImg = createImage(width, height, RGB); // Create env image to write other data to
  wavImg = loadImage("dummylinesinish.png"); // Load janky image from folder "dummyline.png" | Load sinishimage from folder "dummylinesinish.png"
  envImg = loadImage("dummyenvline.png"); 
  searchForCamera();
  noLoop();//turns off infinite loop of draw()
}

void draw() {
  wavSnap();
  smpl();
 }

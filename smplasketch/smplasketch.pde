import java.util.Map;
import processing.sound.*;

void settings() { // using variables for size must be done in settings()
  int[] sizeArr = {640, 480}; //fix width to match pi cam(mac cam is 640 480)
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
  //noLoop();//turns off infinite loop of draw()
}

void draw() {
//keypressed code will go here for buttons
}

void keyPressed() {
  if (key == 'w') {
    wavSnap();
    println("wavSnap");
  } else if (key == 'e') {
    envSnap();
    println("envSnap");
  } else if (key == '[') {
    decEnvMult();
    println("decEnv");
  } else if (key == ']') {
    incEnvMult();
    println("incEnv");
  } else if (key == '-') {
    decWavMult();
    println("decWav");
  } else if (key == '+') {
    incWavMult();
    println("incWav");
  } else if (key == 's') {
    smpl();
    println("smpl");
  } else if (key == 'r') {
    reset();
    println("reset");
  }
}

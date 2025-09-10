import java.util.Map;
import processing.sound.*;

void settings() { // using variables for size must be done in settings()
  int width = 1172;
  int height = 638;
  size(width, height);
}

void setup() {
  modImg = createImage(width, height, RGB); // Create image to write other data to
  img = loadImage("dummyline.png"); // Load janky image from folder
  //img = loadImage("dummylinesinish.png"); // Load sinishimage from folder
  image(img, 0, 0); // display image
  noLoop();//turns off infinite loop of draw()
}

void draw() {
  float[] wav = processWavImage();
  delay(1000);//I know this is not how you should stop the program this is for testing
  image(modImg, 0, 0); // display new image
  //printWav(wav);
  processing.sound.AudioSample smpl = createSample(wav);
  playWav(smpl);
  playEnv(smpl);
}

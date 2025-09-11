import java.util.Map;
import processing.sound.*;

void settings() { // using variables for size must be done in settings()
  int[] sizeArr = {1172, 638};
  int width = sizeArr[0];
  int height = sizeArr[1];
  size(width, height);
}

void setup() {
  modImg = createImage(width, height, RGB); // Create image to write other data to
  modEnvImg = createImage(width, height, RGB); // Create env image to write other data to
  img = loadImage("dummyline.png"); // Load janky image from folder "dummyline.png" | Load sinishimage from folder "dummylinesinish.png"
  //image(img, 0, 0); // display image
  noLoop();//turns off infinite loop of draw()
}

void draw() {
  //float[] wav = processWavImage();
  //delay(2000);//I know this is not how you should stop the program this is for testing
  //image(modImg, 0, 0); // display new image
  
  ////// Will work on later
  ////delay(1000);
  //////Envelope Image Processing Function
  ////image(envImg, 0, 0); // display env image
  ////delay(1000);
  ////image(modEnvImg, 0, 0); // display new image


  ////printWav(wav);
  //AudioSample smpl = createSample(wav);
  //playWav(smpl);
  //playEnv(smpl);
  
  searchForCamera();
  takePicture("test_image");
}

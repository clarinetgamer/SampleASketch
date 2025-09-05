PImage img; // PImage declaration
PImage modImg; // Post processing image

void settings(){ // Bc using variables for size must be done in settings
  int width = 1172;
  int height = 638;
  size(width,height);
}

void setup() {
  modImg = createImage(width,height, RGB); // Create image to write other data to
  img = loadImage("dummyline.png"); // Load image from folder
  image(img, 0, 0); // display image
}

void processImage(){
   modImg.loadPixels(); //load display pixels
  img.loadPixels(); //load images pizels
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width; //calculate pixel location

      // Pull out the 3 color components from pixel
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      // Change red pixels to green to show that it was read 
      if (r > 200 && b < 250 && g < 250) {
      r=0;
      b=0;
      g=255;
      }
      
      // do stuff here

      // Change displayed pixel to represent coordinates added to list 
      modImg.pixels[loc] =  color(r,g,b);
    }
  }
  modImg.updatePixels();
}

void draw() {
  processImage();
  delay(1000);//I know this is not how you should stop the program this is for testing
  image(modImg, 0, 0); // display new image

}

import java.util.Map;

PImage img; // PImage declaration
PImage modImg; // Post processing image

HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();

void settings() { // Bc using variables for size must be done in settings
  int width = 1172;
  int height = 638;
  size(width, height);
}

void setup() {
  modImg = createImage(width, height, RGB); // Create image to write other data to
  img = loadImage("dummyline.png"); // Load image from folder
  image(img, 0, 0); // display image
  noLoop();
}

int findAvgY(ArrayList<Integer> list){ // find average of y pixels from drawing
  int avg = 0;
  int size = list.size();
  for (int i = 0; i < size; i ++){
    avg += list.get(i);
  }
  avg = avg/size;
  return avg;
}

void processImage() {
  modImg.loadPixels(); //load display pixels
  img.loadPixels(); //load images pizels

  for (int x = 0; x < width; x++) {
    ArrayList<Integer> readRedPix = new ArrayList<Integer>(); // create list to hold y values for a single x point
    for (int y = 0; y < height; y++) {
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
        readRedPix.add(y); //add the y value to the list
      }

      // Change displayed pixel to represent coordinates counted
      modImg.pixels[loc] =  color(r, g, b);
    }
    int avg = findAvgY(readRedPix);
    map.put(x, avg);
  }
  modImg.updatePixels();
}

void printMapData() { 
  for(int i = 0; i < map.size(); i ++){
  println(i + " " + map.get(i).toString());
  }
}

void draw() {
  processImage();
  delay(1000);//I know this is not how you should stop the program this is for testing
  image(modImg, 0, 0); // display new image
  printMapData();
}

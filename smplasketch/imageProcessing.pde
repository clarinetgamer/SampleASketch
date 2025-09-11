PImage img; 
PImage envImg; 
PImage modImg; 
PImage modEnvImg; 

int findAvgY(ArrayList<Integer> list) { // find average of y pixels from drawing
  int avg = 0;
  int size = list.size();
  for (int i = 0; i < size; i ++) {
    avg += list.get(i);
  }
  avg = avg/size;
  return avg;
}

float[] processWavImage() { //takes the image from the folder changes all red pixels to green and returns float array of drawn wave 
  modImg.loadPixels(); //load display pixels
  img.loadPixels(); //load images pizels
  
   float[] wav = new float[width];

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
    float avgFl = map(avg, 0, height, -1, 1);
    wav[x] = avgFl;
  }
  modImg.updatePixels();
  return wav;
}

void printWav(float[] wav) { //Print float array storing wav
  for (int i = 0; i < width; i ++) {
    println(i + " " + wav[i]);
    delay(1000);
  }
}

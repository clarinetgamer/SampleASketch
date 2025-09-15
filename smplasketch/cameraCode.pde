import processing.video.*;

Capture cam;


void searchForCamera() {
  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
 cam = new Capture(this, width, height, "pipeline:avfvideosrc device-index=0", 30);
    cam.start();
  }
}

void takePicture(String imageName) {
  delay(1000);
  if (cam.available() == true) {
    cam.read();
  }
  cam.save(imageName+".jpg");
  image(cam, 0, 0);
}

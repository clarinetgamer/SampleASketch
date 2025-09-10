processing.sound.AudioSample sample;

void playWav(float[] wav) {
  sample = new processing.sound.AudioSample(this, wav, 200 * width);

  // Play the sample
  sample.rate(0.5);
  sample.amp(0.2);
  sample.loop();
  
  
  ////Wav testing
  //delay(1000); //again know not to do this just testing
  //sample.stop();
  //delay(1000); //again know not to do this just testing
  //sample.rate(1);
  //sample.amp(0.2);
  //sample.loop();
  //delay(1000); //again know not to do this just testing
  //sample.stop();
}

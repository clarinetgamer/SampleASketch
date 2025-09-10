processing.sound.AudioSample sample; // have to use this full class for import bc there is also an audiosample object in minim

processing.sound.AudioSample createSample(float[] wav) {
  sample = new processing.sound.AudioSample(this, wav, 200 * width);
  return sample;
}

void playWav(processing.sound.AudioSample sample) {
  // Play the sample
  sample.rate(0.5); //add pitch shift due to button 
  sample.amp(0.2);
  sample.loop();
}

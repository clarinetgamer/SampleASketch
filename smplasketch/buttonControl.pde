void wavSnap() {
  //light on
  //delay
  takePicture("wav_image");
  //light off
  wavImg = loadImage("wav_image.jpg");
}

void envSnap() {
  //light on
  //delay
  takePicture("env_image");
  //light off
  envImg = loadImage("env_image.jpg");
}

void incWavMult() {
  if (wavMult < 2.0) {
    wavMult += 0.1;
  }
}

void decWavMult() {
  if (wavMult > 0.5) {
    wavMult -= 0.1;
  }
}

void incEnvMult() {
  if (envMult < 2.0) {
    envMult += 0.1;
  }
}

void decEnvMult() {
  if (envMult > 0.5) {
    envMult -= 0.1;
  }
}

void reset() {
  wavImg = loadImage("dummylinesinish.png");
  envImg = loadImage("dummyenvline.png");
}

void smpl() {
  float[] wav = processWavImage();
  AudioSample smpl = createSample(wav);
  playWav(smpl);
  playEnv(smpl);
}

void wavButton() {
  takePicture("wav_image");
  wavImg = loadImage("wav_image.png"); 
}

void envButton() {
  takePicture("env_image");
  envImg = loadImage("env_image.png"); 
}

void incWavMult() {
  if(wavMult < 2.0) {
    wavMult += 0.1;
  }
}

void decWavMult() {
  if(wavMult > 0.5) {
    wavMult -= 0.1;
  }
}

void incEnvMult() {
    if(envMult < 2.0) {
    envMult += 0.1;
  }
}

void decEnvMult() {
  if(envMult > 0.5) {
    envMult -= 0.1;
  }
}

void smpl() {
  float[] wav = processWavImage();
  AudioSample smpl = createSample(wav);
  playWav(smpl);
  playEnv(smpl);
}

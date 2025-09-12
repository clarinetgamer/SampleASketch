Env env = new Env(this);

float sustainLevel = 0.3; //keep the same

float envMult = 1;

float[] getTimeVals() { //translate envImage processing code into values needed to play the envelope back
  float[] timeVals = new float[3];
  float[] splits = processEnvImage();
  timeVals[0] = (splits[0]/100) * 0.45;
  timeVals[1] = ((splits[1]-splits[0])/100) * 0.45;
  timeVals[2] = ((100-splits[1])/100) * 0.45;
  return timeVals;
}

void playEnv(AudioSample sample) { //takes in a sample object and using the variables plays an envelope
  float[] time = getTimeVals();
  float attackTime = time[0]; //0.001;
  float sustainTime = time[1]; //0.004;
  float releaseTime = time[2]; //0.4;
  env.play(sample, attackTime * envMult, sustainTime * envMult, sustainLevel * envMult, releaseTime);
}

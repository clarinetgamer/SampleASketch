Env env = new Env(this); 


//generate these values off of image scan

float attackTime = 0.001;
float sustainTime = 0.004;
float releaseTime = 0.4;

float sustainLevel = 0.3; //keep the same


void playEnv(AudioSample sample) { //takes in a sample object and using the variables plays an envelope
  env.play(sample, attackTime, sustainTime, sustainLevel, releaseTime);
}

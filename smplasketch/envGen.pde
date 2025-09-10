Env env;

float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 0.4;

void playEnv() { //has not been tested
  env.play(sample, attackTime, sustainTime, sustainLevel, releaseTime);
}

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;

// for recording
AudioInput in;
AudioRecorder recorder;
boolean recorded;

// for playing back
AudioOutput out;
FilePlayer player;

//read through minim documentation and figure this out after envelope processing


//Or if I decide to have the output be an audio jack then I can skip this. Then I can remove the minim library and fix the janky AudioSample import

//week06-3_Example_Analysis_PitchDetection
//想要聲音的最重要的頻率找出來使用PitchDetector物件


import processing.sound.*;
SoundFile sound;//[ 家這一行，因為要把音樂beat.mp3讀進來
PitchDetector pitchDetector;//宣告PitchDetector物件變數
int i;

void setup() {
  size(640, 320);
  background(0);
  sound=new SoundFile(this,"beat.mp3");
  sound.loop();
  pitchDetector = new PitchDetector(this);//新增、初始化PitchDetector
  //pitchDetector.input(new AudioIn(this, 0));
  pitchDetector.input(sound);
}

void draw() {
  // clear column
  noStroke();
  fill(color(0));
  rect(i, 0, 1, height);

  // the array version of analyze() returns the detected pitch as well
  // as the confidence level in the correctness of that pitch
  float[] pitchAndConfidence = new float[2];
  pitchDetector.analyze(pitchAndConfidence);

  // don't draw measurements when there is absolutely 0 confidence in them
  if (pitchAndConfidence[1] > 0) {
    // draw all others: map the range of a human whistle (~40 - 2000Hz) to the height
    // of the sketch, and color the dot according to the confidence in this measurement
    fill(lerpColor(color(255, 0, 0), color(0, 255, 0), pitchAndConfidence[1]));

    circle(i, int(map(pitchAndConfidence[0], 2000, 40, 0, height)), 2);
    println(pitchAndConfidence[0],pitchAndConfidence[1]);
  }

  i = (i+1) % width;
}

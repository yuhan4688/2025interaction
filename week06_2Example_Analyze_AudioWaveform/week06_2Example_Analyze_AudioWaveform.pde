//week06-2Example_Analyze_AudioWaveform
//他使用了Waveform的物件變，來分析音樂


import processing.sound.*;

// Declare the sound source and Waveform analyzer variables
SoundFile sample;//宣告SuondFile物件變數
Waveform waveform;//宣告Waveform物件變數
int samples = 100;//一次讀路多少sample:100個smaple

public void setup() {
  size(640, 360);
  //background(255);可註解掉

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff");//讀入音樂檔
  sample.loop();//循環播放VS之前play()是只播放一次

  waveform = new Waveform(this, samples);//享用100格，來分析音樂
  waveform.input(sample);//剛剛的音樂檔進行分析
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();//進行波形分析
  
  beginShape();
  for(int i = 0; i < samples; i++){//把100格的座標，都算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),//x座標對應0-100的值，拉長到視窗長度640
      map(waveform.data[i], -1, 1, 0, height)//y座標，就是waveform.data[i]的值
    );
  }
  endShape();
}

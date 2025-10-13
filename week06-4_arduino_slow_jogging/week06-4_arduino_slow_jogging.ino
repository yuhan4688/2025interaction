//week06-4_arduino_slow_jogging
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8,780,60);//自己決定聲音Hz pin8,780HZ,60MS
  delay(333);//等0.333秒換下個音
  tone(8,320,60);//自己決定聲音Hz pin8,780HZ,60MS
  delay(333);//等0.333秒換下個音
}//每秒會較3生，60秒叫100聲，180BPM(BeatPerMinute)

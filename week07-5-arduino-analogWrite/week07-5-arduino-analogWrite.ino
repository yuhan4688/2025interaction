//week07-5-arduino-analogWrite
void setup() {
  // RGBLED最長的那根，是接地GND
  pinMode(3,OUTPUT);//左邊紅色
  pinMode(6,OUTPUT);//藍色(GND旁邊)
  pinMode(5,OUTPUT);//綠色(最外面)
  pinMode(11,OUTPUT);//第11個pin腳(u有PWM功能，可0-255輸出)
}//特別的腳，3、5、6、9、10、11可控制的亮暗程度
int a=0;
void loop() {
  analogWrite(6,0);//藍色關掉
  analogWrite(3,255);//最亮的紅色
  delay(500);//0.5s
  analogWrite(3,0);//紅色關掉
  analogWrite(5,255);//最亮的紅色
  delay(500);//0.5s
  analogWrite(5,0);//綠色關掉
  analogWrite(6,255);//藍色
  delay(500);//0.5s
}

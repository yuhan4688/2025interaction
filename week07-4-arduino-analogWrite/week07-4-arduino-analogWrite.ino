//week07-4-arduino-analogWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(11,OUTPUT);//第11個pin腳(u有PWM功能，可0-255輸出)
}//特別的腳，3、5、6、9、10、11可控制的亮暗程度
int a=0;
void loop() {
  // put your main code here, to run repeatedly:
  analogWrite(11,a);//亮的程度是a
  a=(a+1)%256;//會在亮一點點
  delay(10);//每0.1秒
}

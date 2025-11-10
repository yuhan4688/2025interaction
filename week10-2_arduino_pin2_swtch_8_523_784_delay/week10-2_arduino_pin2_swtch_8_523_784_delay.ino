//week10-2_arduino_pin2_swtch_8_523_784_delay
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);//拉高變5V真的按下去變0V
  pinMode(8,OUTPUT);
}//pin2扮成按鈕，可以high可以low


void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){//pin2按下去
  tone(8,523,100);//發出523Do
  delay(100);
  tone(8,784,100);//發出784So
  delay(100);
  }

}

//week10-3_arduino_analogRead_A3
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);//拉高變5V真的按下去變0V
  //pinModee(3,INPUT);
  pinMode(8,OUTPUT);
}//pin2扮成按鈕，可以high可以low


void loop() {
  int now=analogRead(A3);//對應另一邊的A3
  if(now>800){//比較高的聲音
  tone(8,523,100);//發出523Do
  delay(100);
  tone(8,784,100);//發出784So
  delay(200);
  }else if(now<200){//變低
  tone(8,784,100);//發出784 So
  delay(100);
  tone(8,523,100);//發出523 Do
  delay(200);
  }

}

//week10-4_arduino_serial monitor_joystick_Serial_println
//修改自week10-3_arduino_analogRead_A3
//把joystick的Y的線一麵包版幫忙，接到MakerUNO另一邊的A3
//不能接其他，因為要接有~符號的代表有analogRead

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);//拉高變5V真的按下去變0V
  //pinModee(3,INPUT);
  pinMode(8,OUTPUT);
}//pin2扮成按鈕，可以high可以low


void loop() {//1秒鐘會跑1000Hz太快了，要慢一點才行
  delay(100);//漫一點避免processing來不及處理
  int now=analogRead(A3);//對應另一邊的A3
  Serial.println(now);
  //想利用serial monitor來看看會送出甚麼
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

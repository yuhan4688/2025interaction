//week10-5_arduino_serialmonitor_joystick_to_processing
//修改自week10-4_arduino_serial monitor_joystick_Serial_println
//不使用serial.println()改用serial.write()0~1023 vs. 0~255 4倍

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);//拉高變5V真的按下去變0V
  //pinModee(3,INPUT);
  pinMode(8,OUTPUT);
}//pin2扮成按鈕，可以high可以low


void loop() {//1秒鐘會跑1000Hz太快了，要慢一點才行
  delay(30);//漫一點避免processing來不及處理
  int now=analogRead(A3)/4;//要除以4才能順利由serial.write()送出
  Serial.write(now);//把0~255數值送出
  //想利用serial monitor來看看會送出甚麼
  if(now>200) tone(8,784,100);
  if(now<50) tone(8,523,100);

}

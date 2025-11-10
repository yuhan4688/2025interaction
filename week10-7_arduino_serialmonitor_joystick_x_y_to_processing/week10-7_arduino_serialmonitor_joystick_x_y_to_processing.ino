//week10-7_arduino_serialmonitor_joystick_x_y_to_processing
//修改自week10-5_arduino_serialmonitor_joystick_to_processing
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);//拉高變5V真的按下去變0V
  //pinModee(3,INPUT);
  pinMode(8,OUTPUT);
}//pin2扮成按鈕，可以high可以low


void loop() {//1秒鐘會跑1000Hz太快了，要慢一點才行
delay(30);
int x=analogRead(A2);//把搖桿X接到A2
int y=analogRead(A3);//把搖桿X接到A3
Serial.write(x/4);//把0~1023變0~255
Serial.write(y/4);
if(x>800) tone(8,784,100);
if(x<200) tone(8,523,100);
if(y>900) tone(8,659,100);
if(y<100) tone(8,500,100);//亂取的

}

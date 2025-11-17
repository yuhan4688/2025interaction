//week11-1arduino_serialmonitor_joystick_x_y_to_processing_better
//week10-7_arduino_serialmonitor_joystick_x_y_to_processing
//修改自week10-5_arduino_serialmonitor_joystick_to_processing
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);//拉高變5V真的按下去變0V
  //pinModee(3,INPUT);
  pinMode(8,OUTPUT);
}//pin2扮成按鈕，可以high可以low

int count=0,totalX=0,totalY=0;//要統計平均得值
int x0=512,y0=512;
void loop() {//1秒鐘會跑1000Hz太快了，要慢一點才行
delay(30);
int x=analogRead(A2);//把搖桿X接到A2
int y=analogRead(A3);//把搖桿X接到A3
if(count<20){
totalX+=x;//加總算平均值
totalY+=y;//加總算平均值
count++;//又讀一筆
x0=totalX/count;//算平均
y0=totalY/count;//算平均
}
//Serial.write(x/4);//把0~1023變0~255
//Serial.write(y/4);
if(abs(x-x0)<25) x=128;//數值變化太小直接放中間值128
else x=(x-x0)/4.4+128;//有大的值就減掉中間值再除4在加128
if(abs(y-y0)<25) y=128;//數值變化太小直接放中間值128
else y=(y-y0)/4.4+128;//有大的值就減掉中間值再除4在加128
Serial.write(x);
Serial.write(y);
//if(x>900) tone(8,784,100);
//if(x<100) tone(8,523,100);
//if(y>900) tone(8,659,100);
//if(y<100) tone(8,500,100);//亂取的

}
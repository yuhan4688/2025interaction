//week07-3_arduino_blink_blink
void setup() {
  // put your setup code here, to run once:
  pinMode(13,OUTPUT);//把第13隻腳，能送資料OUTPUT
  pinMode(12,OUTPUT);//把第13隻腳，能送資料OUTPUT
  pinMode(11,OUTPUT);//把第13隻腳，能送資料OUTPUT
  pinMode(10,OUTPUT);//把第13隻腳，能送資料OUTPUT
}

void loop() {
  for(int i=10;i<=14;i++){
  digitalWrite(13,LOW);//暗掉
  digitalWrite(i-1,LOW);//暗掉
  digitalWrite(i,HIGH);//發亮
  delay(500);
  }


}

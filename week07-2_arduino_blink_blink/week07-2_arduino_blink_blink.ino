//week07-2_arduino_blink_blink
void setup() {
  // put your setup code here, to run once:
  pinMode(13,OUTPUT);//把第13隻腳，能送資料OUTPUT
  pinMode(12,OUTPUT);//把第13隻腳，能送資料OUTPUT
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(12,LOW);//暗掉
  digitalWrite(13,HIGH);//發亮
  delay(500);
  digitalWrite(13,LOW);//暗掉
  digitalWrite(12,HIGH);//發亮
  delay(500);
  
 
}

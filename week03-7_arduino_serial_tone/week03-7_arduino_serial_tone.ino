//week03-7_arduino_serial_tone
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);//設定USB傳輸速度
  pinMode(8,OUTPUT);//8要會發聲
}

void serialEvent(){
  while(Serial.available()){ //若有資料
    Serial.read();
    tone(8,800,200);
  }
}
void loop() {
  // put your main code here, to run repeatedly:

}

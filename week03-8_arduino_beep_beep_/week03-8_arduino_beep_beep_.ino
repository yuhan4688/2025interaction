//week03-8_arduino_beep_beep_
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);//設定USB傳輸速度
  pinMode(8,OUTPUT);//8要會發聲
}
int beep=1;
void serialEvent(){
  while(Serial.available()){
    char now=Serial.read();
    if(now==' ') beep=0;
    if(now=='b') beep=1;
  }
}

void loop() {//一開始會叫
  // put your main code here, to run repeatedly:
  if(beep==1){//一開始會倒數計時
    tone(8,800,200);
    delay(1000);
  }
  
}

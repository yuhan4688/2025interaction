//week03-6_auto_for_up_for_down
void setup() {
  // put your setup code here, to run once:
  for(int i=3;i<=13;i++){
    pinMode(i,OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:

  for(int i=3;i<=13;i++){
    for(int k=3;k<=13;k++) digitalWrite(k,LOW);
    digitalWrite(i,HIGH);//輪到的pin會發亮
    delay(200);
  }

    for(int i=13;i>=3;i--){
    for(int k=3;k<=13;k++) digitalWrite(k,LOW);
    digitalWrite(i,HIGH);//輪到的pin會發亮
    delay(200);
  }
}

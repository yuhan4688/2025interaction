//week03-5_Botton_digitalWrite_digitalWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);//按鈕Botton是2，沒按下去就會拉高
  for(int i=3;i<=13;i++){
    pinMode(i,OUTPUT);//都是可以發光，發亮的
  }
}
int now=3;//現在發亮的是pin3
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){//按下去
    now=now+1;
    if(now>13) now=3;
    for(int i=3;i<13;i++){
      digitalWrite(i,LOW);//全部都清空，變成LOW不亮
    }
    digitalWrite(now,HIGH);//now負責亮
    delay(500);//休息下等0.5秒才部會狂亂運作
  }
}

//week01-3_keyPressed-keyCode-LEFT-RIGHT
void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);//座標畫方塊
  if(keyPressed && keyCode==LEFT) x-=3;
  if(keyPressed && keyCode==RIGHT) x+=3;
  //使用方向鍵來移動方塊
}

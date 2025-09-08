//開新專案
//week01-2_keyPressed_textSize_text_key
void setup(){
  size(500,500);
}
void draw(){
  if(keyPressed){//先把注音關掉
    background(#FF0000);//紅色背景
    textSize(80);//大的自型
    text(""+key,100,100);
  }
}

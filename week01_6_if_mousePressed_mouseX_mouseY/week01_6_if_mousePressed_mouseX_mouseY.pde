//week01-6-if-mousePressed_mouseX_mouseY
//結合mouse和keyboard
void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFFAA);
  //if(mousePressed && x<mouseX && y<mouseY){//不管有沒有壓到rect四邊形，都移動他
  if(mousePressed && x<mouseX && mouseX<x+100 && y<mouseY&&mouseX<y+50){
    x +=mouseX-pmouseX;
    y +=mouseY-pmouseY;
  }
  rect(x,y,100,50);
}

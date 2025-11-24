//week12-2_dino_jump_part2_board_
//修自week12-1_dino_jump_part1
//恐龍跳跳跳(3)板子(4)卡在板子上
PImage img;
void setup(){
  size(300,500);
  img=loadImage("dino.jpeg");
}
float boardX=200,boardY=400;
float x=200,y=400,dx=0,dy=0;
void draw(){
  background(255);
  rect(boardX,boardY,100,10);
  image(img,x,y,100,100);
  if(y+100 <= boardY && y+dy+100>=boardY){
    y=boardY-100;
    dy=0;
  }else{
  y+=dy;
  if(y<400) dy+=0.98;
  else dy=0;
  }
  //image(img,mouseX,mouseY,100,100);
  

}
void keyPressed(){
  if(keyCode==UP) dy=-15;
}

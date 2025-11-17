//week11-4_pacman_part2_move_change_direction
//修改自week11-3_pacman_part2_move_x_y_void_keyPressed
//小精靈 張嘴(再動)
void setup(){
  size(500,500);
}
int x=250,y=250,dx=0,dy=0,dir=0;//direction
float m=0,dm=0.05;//嘴巴大小mouth 改變變量diff of m
void draw(){
  background(0);
  fill(255,255,0);//黃色
  float m0=dir*PI/2;
  arc(x,y,30,30,m0+m,m0+PI*2-m);//弧度
  x+=dx;//改變座標
  y+=dy;//改變座標
  if(m>1 || m<0) dm=-dm;//正負倒過來
  m+=dm;
}
void keyPressed(){
  if(keyCode==LEFT) { dx=-1; dy=0;dir=2;}//dir:0向右0度
  if(keyCode==RIGHT) { dx=+1; dy=0;dir=0;}//dir:2向左0度PI
  if(keyCode==UP) { dx=0; dy=-1;dir=3;}//dir:3向上0度PI*1.5
  if(keyCode==DOWN) { dx=0; dy=+1;dir=1;}//dir:1向下0度PI/2
}

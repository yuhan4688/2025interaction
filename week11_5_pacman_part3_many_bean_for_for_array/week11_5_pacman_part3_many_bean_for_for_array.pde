//week11-5_pacman_part3_many_bean_for_for_array
//修改自week11-4_pacman_part3_move_change_direction
//小精靈 張嘴(再動)
void setup(){
  size(600,600);
}
int x=300-15,y=300-15,dx=0,dy=0,dir=0;//direction
float m=0,dm=0.05;//嘴巴大小mouth 改變變量diff of m
boolean [][] bean_eaten=new boolean[20][20];//java的二維陣列
void draw(){
  background(0);
  for(int i=0;i<20;i++){//左手i對應y座標
    for(int j=0;j<20;j++){//右手j對應x座標
      if(bean_eaten[i][j]==false){
        fill(255);//白豆子 
        ellipse(15+j*30,15+i*30,5,5);
        if(dist(x,y,15+j*30,15+i*30)<15) bean_eaten[i][j]=true;
      }

    }
  }
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

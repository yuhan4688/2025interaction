//week10-6_processing_Serial_joystick_coins
//利用USB serial船joystick的量，讓板子左右移動
import processing.serial.*;
Serial myPort;
void setup(){
  size(500,500);
  myPort=new Serial(this,"COM5",9600);
  rectMode(CENTER);
}
int x=250,y=400,now;
float dx=0;
void draw(){
  background(#F29325);
  rect(x,y,100,20);
  if(myPort.available()>0){
    now=myPort.read();
    dx =(now-127)/10.0;//-128~127
    if(abs(dx)<0.2) dx=0;//有殘值，所以太小就設0
  }
  x+=dx;
}

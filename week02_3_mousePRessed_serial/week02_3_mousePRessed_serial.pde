//week02-3_mousePRessed_serial
import processing.serial.*;//使用USBserial
Serial myPort;//宣告USB的serial
void mousePressed(){
  myPort.write(' ');
}
void setup(){
  size(400,400);
  myPort=new Serial(this,"COM4",9600);
}//剛剛Arduino裡設定COM多少就寫多少

void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}

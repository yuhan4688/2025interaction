//week03-7_processing_mouse_serial_write
import processing.serial.*;
Serial myPort;
void setup(){
  size(400,400);
  myPort=new Serial(this,"COM3",9600);
}//COM3COM4查電腦
void mousePressed(){
  myPort.write('b');//用USB的b
}
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}

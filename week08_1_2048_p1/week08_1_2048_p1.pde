//week08-1-2048-p1
void setup(){
  size(410,410);
}
void draw(){
  background(188,174,162);//色彩用滴管範例的圖
  for(int i=0;i<=4;i++){//左手i
    for(int j=0;j<=4;j++){//右手j
      fill(206,194,185);//色彩用滴管範例的圖
      noStroke();//不要有黑框線
      rect(j*100+10,i*100+10,90,90,5);//弧角是5
    }
  }
}

//week08-2-2048-p2-color color array N_B
//增加不同板子 2,4,8,16,32,64
//要有陣列4*4
color [] c={#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63};//2*1,2*2,2*3...
color [] c2={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};//字色
int [] N={0,2,4,8,16,32};//對應的數字
int [][] B ={{0,0,0,0} , {1,2,3,4} , {5,0,0,0} ,{0,0,0,0}};//板子
void setup(){
  size(410,410);
}
void draw(){
  background(188,174,162);//色彩用滴管範例的圖
  for(int i=0;i<4;i++){//左手i
    for(int j=0;j<4;j++){//右手j
      int id =B[i][j];//對應的代碼
      fill(c[id]);
      //fill(206,194,185);//色彩用滴管範例的圖
      noStroke();//不要有黑框線
      rect(j*100+10,i*100+10,90,90,5);//弧角是5
      fill(c2[id]);
      textAlign(CENTER,CENTER);
      textSize(60);
      text(N[id],j*100+55,i*100+55);
    }
  }
}

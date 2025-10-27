//week08-4-2048-p4-_keyPressed_keyCode_RIGHT_only
//(1)按下方向鍵板子要往那個方向走
color [] c={#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#F69462,#EF7F63,#F76543};//2*1,2*2,2*3...
color [] c2={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5,#FDF8F5};//字色
int [] N={0,2,4,8,16,32,64};//對應的數字
int [][] B ={{0,0,0,0} , {1,2,3,4} , {5,0,0,0} ,{0,0,0,0}};//板子
void keyPressed(){
  if(keyCode==RIGHT){
    for(int i=0;i<4;i++){
      int now=3;
      for(int j=3;j>=0;j--){
        if(B[i][j]>0){//找到有板子
          B[i][now]=B[i][j];
          now--;
        }
      }//到這裡結束時，now左邊將不要放東西，都歸0
      for(int j=now;j>=0;j--){//剩下的都放0表空白
        B[i][j]=0;
      }
    }
  }
  genTwo();
}
void genTwo(){
  int zero=0;
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      if(B[i][j]==0) zero++;//找到0的板子
    }
  }//用亂數，決定第幾個 0要放2
  int ans=int(random(zero));//ex.有十格找到0-9格
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      if(B[i][j]==0){
        if(ans==0){
          B[i][j]=1;//2的 1次方2
          return;//結束
        }else ans--;//倒數用掉一個慢慢找是哪一個
    }
  }
}//找出陣列0的地方挑一個變空白
}
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

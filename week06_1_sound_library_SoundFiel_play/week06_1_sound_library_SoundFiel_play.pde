//week06-1_sound_library_SoundFiel_play
//File-Preference 字改大一點
//Sketch_Library_ManageLibraries，找到sound安裝他
//File-Example_Libraies核心函式庫-sound-soundfile-SimplePlaback
import processing.sound.*;//外掛模組
SoundFile sound;//宣告SoundFile物件變數
void setup(){
  size(500,400);
  //background(255);
  
  sound=new SoundFile(this,"beat.mp3");//music.mp3");//老師傳，拉進來
  sound.play();
}
void draw(){
}

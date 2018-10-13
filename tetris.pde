int rectx = 20;
int recty = 20; 
int gamespeed = 500;
boolean moveright = false;
boolean moveleft = false;

void setup(){
  size(640,480);
}

void draw(){
  background(0);
  for(int i = 0; i < 480; i+=20){
    stroke(255);
    line(640, i, 0, i);
  } for(int i = 0; i < 640; i+=20){
    stroke(255);
    line(i, 480, i, 0);
  }
  fill(255);
  rect(rectx, recty, 20, 20);
  if(moveright == true){
   rectx+=20;
   delay(150);
  }
  gravity();
  
}

void keyPressed(){
  if(key == CODED){
   if(keyCode == RIGHT){
    moveright = true;
   }
  }
}

void keyReleased(){
 if(key == CODED){
  if(keyCode == RIGHT){
   moveright = false; 
  }
 }
}

void gravity(){
 recty+=20;
  delay(gamespeed); 
}
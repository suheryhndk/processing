//suheryhandoko

class meteor {
  PVector pos;
  public meteor() {
    pos=new PVector(random(width, 2000), random(300));
  }
  void display() {
    fill(0);
   image(mtr,pos.x, pos.y,20,20);
    move();
  }
  void move() {  
  if (score < 20) {
   pos.x-=1;
   textSize(32);
   text("Level 1", 10, 30);
   fill(0, 102,153);
  } else if (score < 40) {
   pos.x-=2;
   textSize(32);
   text("Level 2", 10, 30);
   fill(0, 102,153);
  } else if (score < 60) {
   pos.x-=3; 
   textSize(32);
   text("Level 3", 10, 30);
   fill(0, 102,153);
  } else if (score < 80) {
   pos.x-=4;
   textSize(32);
   text("Level 4", 10, 30);
   fill(0, 102,153);
  } else
    pos.x-=5;
    textSize(32);
   
  }
} 

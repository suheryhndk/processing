//suhery handoko


Pesawat p;
meteor m;
PImage img,pru,mtr,bg;
float yrandom;
ArrayList<peluru> pel =new ArrayList<peluru>();
ArrayList<meteor> met = new ArrayList<meteor>();
boolean status=true;
int score = 0 ;
int lives =3;
void setup() {
  size(800, 500);
  smooth();
  mtr = loadImage("meteor.png");
  pru = loadImage("peluru.png");
  bg = loadImage("bg.png");
  img = loadImage("pesawat.png");
  p = new Pesawat(10,10);
  m = new meteor();
  met.add(m);
}
 
void draw() {
  if (status==true) {
    image(bg, 0, 0, width, height);
    p.display();
    // a.display();
    if (keyPressed==true) {
      p.move();
    }
    for (peluru d: pel ) {      
      d.display();
      d.move();
    }
    for (meteor j: met ) {
      j.display();
      j.move();
    }
    if (met.size()<10) {
      met.add(new meteor());
    }
 
    for (int i =met.size()-1;i>0;i--) {
      if (met.get(i).pos.x<0) {
        met.remove(i);
      }
    }
    for (int o=pel.size()-1;o>=0;o--) {
      peluru curPeluru = pel.get(o);
      boolean gantiPeluru = false;
      for (int l=met.size()-1;l>=0;l--) {
        meteor curRock = met.get(l);
        if (dist(curPeluru.pos.x, curPeluru.pos.y, curRock.pos.x, curRock.pos.y)<=10) {
          //met.remove(o);
          met.remove(l);
          gantiPeluru = true;
          score++;
          break;
        }
      }
      if (gantiPeluru==true) {
        pel.remove(o);
      }
    }
    for (int k = met.size()-1;k>0;k--) {
      meteor curRock=met.get(k);
      if (dist(curRock.pos.x, curRock.pos.y, p.pos.x+70, p.pos.y+19)<=10) {
        lives--;status=false;
      }
    }
    text("score:" +score, width/2-30,height/7-30);
    text("live:" +lives, width/3-30,height/7-30);
  } else {
   background(0);
  fill(255);
 text("game over",width/2,height/2);
noLoop();
  }
}

//suheryhandoko


class Pesawat {
  PVector pos;
  float xspeed;
  float yspeed;
  public Pesawat(float x, float y) {
    pos =new PVector(x, y);
  }
  void move() {
    keyPressed();
    pos.x+=xspeed;
    pos.y+=yspeed;
  }
  void keyPressed() {
    if (key== CODED) {
      if (keyCode== UP) {
        //loc.y-=speed;
        yspeed=-7;
        xspeed=0;
      }
      else if ( keyCode== DOWN) {
        yspeed=7;
        xspeed=0;
      }
      else if (keyCode==LEFT) {
        xspeed=-7;
        yspeed=0;
      }
      else if (keyCode==RIGHT) {
        xspeed=7;
        yspeed=0;
      }
    }
    else if (key==' ') {
      pel.add(new peluru());
      xspeed=0;
      yspeed=0;
    }
    else {
    }
  }
 
  void display() {
    image(img, pos.x, pos.y);
  }
}

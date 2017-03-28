class peluru {
  PVector pos;
  public peluru() {
    pos=new PVector(p.pos.x+50, p.pos.y+20);
  }
  void display() {
    fill(0);
    image(pru, pos.x, pos.y, 10, 10);
    move();
  }
  void move() {
    pos.x+=2;

  }
}

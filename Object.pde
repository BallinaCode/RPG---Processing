class Object {

  float x, y;
  String img;
  
  PImage spr;
  int d;

  Object(float x, float y, String img) {
    this.x = x;
    this.y = y;
    spr = loadImage(img);
    d = 0;
  }

  void Draw() {
    image(spr, x, y);
  }

  void Move(int d) {

    //horizontal
    if (d == 1 && x < width-32) {
      x += 32;
    } else if (d == 1) {
      x = 16;
    }

    if (d == 2 && x > 32) {
      x -= 32;
    }else if(d == 2){
      x = width-16;
    }

    //vertical
    if (d == 4 && y < height-32) {
      y += 32;
    } else if (d == 4) {
      y = 16;
    }
    
    if (d == 3 && y > 32) {
      y -= 32;
    }else if(d == 3){
      y = height-16;
    }
  }
}

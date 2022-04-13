int fps = 60;

int[][]map = {
  {0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
  {0, 1, 0, 1, 1, 0, 0, 0, 0, 0},
  {0, 1, 0, 0, 1, 0, 1, 0, 0, 0},
  {0, 1, 0, 0, 1, 1, 1, 0, 1, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
  {0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
  {0, 0, 0, 0, 1, 1, 1, 0, 0, 0},
  {0, 1, 0, 0, 1, 0, 1, 0, 0, 0},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

Object p;

void setup() {
  size(320, 320);
  frameRate(fps);

  p = new Object(16, 16, "Tree.png");
}

void draw() {

  //Grid
  //for (int x = 1; x < 10; x++) {
  //  line(x*32, 0, x*32, height);
  //  for (int y = 1; y < 10; y++) {
  //    line(0, y*32, width, y*32);
  //  }
  //}

  //Map
  for (int x = 0; x < 10; x++) {
    for (int y = 0; y < 10; y++) {

      //Grass
      Object grass = new Object(x*32, y*32, "Grass.png");
      grass.Draw();

      if (map[y][x] == 1) {
        //Trees
        Object tree = new Object(x*32, y*32, "Tree.png");
        tree.Draw();
      }
    }
  }

  //Player
  circle(p.x, p.y, 32);
}

void keyPressed() {
  if (key == 'd') {
    p.Move(1);
  } else if (key == 'a') {
    p.Move(2);
  } else if (key == 'w') {
    p.Move(3);
  } else if (key == 's') {
    p.Move(4);
  }
}

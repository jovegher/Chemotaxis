Star[] andromeda;

void setup() {
  frameRate(60);
  size(1000, 1000);
  andromeda = new Star[100];
  for (int i = 0; i < andromeda.length; i++) {
    andromeda[i] = new Star();
  }
}

void draw() {
  //background(0);
  for (int i = 0; i < andromeda.length; i++) {
    andromeda[i].boom();
    andromeda[i].show();
  }
} 

class Star
{
  int myX, myY, myColor;
  Star() {
    myX = 500;
    myY = 500;
    myColor = color((int)(Math.random()*200)+50, (int)(Math.random()*200)+50, (int)(Math.random()*200)+50);
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 3, 3);
  }
  void boom() {
    myX = myX + (int)(Math.random()*9) -4;
    myY = myY + (int)(Math.random()*9) -4;
    if (mousePressed == true) {
      myX = myX + (int)(Math.random()*21) -10;
      myY = myY + (int)(Math.random()*21) -10;
    }
  }
}

 Star[] andromeda;

void setup() {
  size(500, 500);
  andromeda = new Star[2000];
  for (int i = 0; i < andromeda.length; i++) {
    andromeda[i] = new Star();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < andromeda.length; i++) {
    andromeda[i].boom();
    andromeda[i].show();
  }
} 

class Star
{
  int myX, myY, myR, myG, myB, myColor;
  Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, 3, 3);
  }
  void boom() {
    myX = myX + (int)(Math.random()*10);
    myY = myY + (int)(Math.random()*10);
  }
}

//https://edchen5.github.io/Chemotaxis/

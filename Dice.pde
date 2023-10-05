Die bro;
int sum =0;
void setup()
{
  size(500,600);
  noLoop();
  noStroke();
}
void draw()
{
  background(255);
 
  for (int i = 25; i <= 500; i+=50) {
    for (int j = 25; j <= 500; j+=50) {
      bro = new Die(i,j);
      bro.show();
      bro.roll();
    }
  }
  fill(0);
  textSize(30);
  text("Total: " + sum, 175,550);
}

void mousePressed()
{
  sum=0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int X, Y;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    X = x;
    Y = y;
  }
  void roll()
  {
    int rol = (int)(Math.random()*6+1);
    fill(0);
    if (rol == 1) {
      ellipse(X,Y,10,10);
    }
    else if (rol == 2) {
      ellipse(X,Y+10,10,10);
      ellipse(X,Y-10,10,10);
    }
    else if (rol == 3) {
      ellipse(X-10,Y-10,10,10);
      ellipse(X,Y,10,10);
      ellipse(X+10,Y+10,10,10);
    }
    else if (rol == 4) {
      ellipse(X+10,Y+10,10,10);
      ellipse(X+10,Y-10,10,10);
      ellipse(X-10,Y+10,10,10);
      ellipse(X-10,Y-10,10,10);
    }  
    else if (rol == 5) {
      ellipse(X+10,Y+10,10,10);
      ellipse(X+10,Y-10,10,10);
      ellipse(X-10,Y+10,10,10);
      ellipse(X-10,Y-10,10,10);
      ellipse(X,Y,10,10);
    } else {
      ellipse(X+10,Y+10,10,10);
      ellipse(X+10,Y-10,10,10);
      ellipse(X-10,Y+10,10,10);
      ellipse(X-10,Y-10,10,10);
      ellipse(X-10,Y,10,10);
      ellipse(X+10,Y,10,10);
    }
    sum +=rol;
  }
  void show()
  {
    if (Math.random() < 0.1666667)
    fill(#AC92EB);
    else if (Math.random() < 0.2)
    fill(#4FC1E8);
    else if (Math.random() < 0.25)
    fill(#A0D568);
    else if (Math.random() < 0.3333333)
    fill(#FFCE54);
    else if (Math.random() < 0.5)
    fill(#ED5564);
    else
    fill(#EF597B);
    rect(X-20,Y-20,40,40,6);
  }
}



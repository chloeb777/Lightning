int startX = 220;
int startY = 92;
int endX = 220;
int endY = 92;
int x = (((int)(Math.random()*20))-10);



void setup()
{
  size(500,200);
  strokeWeight(1);
  background(0,0,0);
  fill(153, 222, 169);
  ellipse(100, 50, 80, 80);
  rect(60, 90, 80, 80);
  triangle(60, 50, 60, 35, 30, 20);
  triangle(140, 50, 140, 35, 170, 20);
  triangle(120, 170, 140, 185, 170, 170);
  triangle(40, 170, 60, 185, 90, 170);
  rect(140, 90, 80, 10);
  
}
void draw()
{ stroke(255,255,255);
  while(endX < 800)
  {
    endX = startX + (int)(Math.random()*9);
    endY = startY +(int)(Math.random()*9)+ x;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  x = (((int)(Math.random()*20))-10);
  startX = 220;
  startY = 92;
  endX = 220;
  endY = 92;
}

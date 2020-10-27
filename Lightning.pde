int startX = 220;
int startY = 92;
int endX = 220;
int endY = 92;
int x = (((int)(Math.random()*20))-10);
//Creates a random value between -10 and 9
int canvasx = 500;
int canvasy = 200;



void setup()
{
  size(500,200);
  //Unfortunately I couldn't use the size variables for size. I still kept them because I'm using them for the while loop
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
  //Image of Yoda
  
}
void draw()
{ stroke(255,255,255);
  while((endX < canvasx)&&(endY <canvasy))
  {
    //goes while the line is within the canvas
    endX = startX + (int)(Math.random()*9);
    //Sets ending x value to something random plus the beginning
    endY = startY +(int)(Math.random()*9)+ x;
    ////Sets ending y value to something random plus the beginning
    line(startX,startY,endX,endY);
    //draws the line, with a random x and y ending, thus a random slope
    startX = endX;
    startY = endY;
    //starts the line where the last is ending
  }
}
void mousePressed()
{
  x = (((int)(Math.random()*20))-10);
  //Create another random value between -10 and 9
  startX = 220;
  startY = 92;
  endX = 220;
  endY = 92;
  //draw the line again when the mouse is presssed
}

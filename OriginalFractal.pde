int limit = 400;

public void setup()
{
  size(1000, 1000);
  background(0, 0, 0);
  shapeMode(CENTER);
}

public void draw()
{
  background(0, 0, 0);
  circleLoop(500, 500, limit);
}

public void mouseDragged()
{  
  if (mouseX < 1)
  {
    limit = 1;
  }
  else
  {
    limit = mouseX; 
  }
}

public void circleLoop(int x, int y, int len)
{
  if (len <= 20)
  {
    ellipse(x, y, len, len);
  }
  else // if r big == 1 then r small == 1 + root(2)
  {
    ellipse(x, y, len, len);
    circleLoop(x, y - len * 6 / 8, len/2);
    circleLoop(x, y + len * 6 / 8, len/2);
    circleLoop(x - len * 6 / 8, y, len/2);
    circleLoop(x + len * 6 / 8, y, len/2);
  }
}

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
  hexagon(500, 500, limit);
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

public void hexagon(int x, int y, int len)
{
  if (len <= 20)
  {
    circle(x, y, len);
  }
  else // if r big == 1 then r small == 1 + root(2)
  {
    circle(x, y, len);
    hexagon(x, y - len * 6 / 8, len/2);
    hexagon(x, y + len * 6 / 8, len/2);
    hexagon(x - len * 6 / 8, y, len/2);
    hexagon(x + len * 6 / 8, y, len/2);
  }
}

public void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

PVector position;
PVector direction;
int ballSize = 10;

void setup()
{
  size(400, 400);
  
  position = new PVector(width / 2, height / 2);
 
  NewDirection();
}

void draw()
{
  background(0);
  
  ellipse(position.x, position.y, ballSize, ballSize);
  position.add(direction);
  
  if(position.x > width || position.x < 0)
  {
    direction.x *= -1;
  }
  if(position.y > height || position.y < 0)
  {
    direction.y *= -1;
  }
}

void NewDirection()
{
  direction = new PVector((int)random(-5, 5), (int)random(-5, 5));
  direction.normalize();
  direction.mult(3);
}

void keyPressed()
{
  NewDirection();
}

Ball ball = new Ball();

void setup()
{
  size(400, 400);
  
  ball.position = new PVector(width / 2, height / 2);
 
  ball.NewDirection();
}

void draw()
{
  background(0);
  
  ellipse(ball.position.x, ball.position.y, ball.ballSize, ball.ballSize);
  ball.position.add(ball.direction);
  
  if(ball.position.x > width || ball.position.x < 0)
  {
    ball.direction.x *= -1;
  }
  if(ball.position.y > height || ball.position.y < 0)
  {
    ball.direction.y *= -1;
  }
}

void keyPressed()
{
  ball.NewDirection();
}

public class Ball
{
  PVector position;
  PVector direction;
  int ballSize = 10;

  void NewDirection()
  {
    direction = new PVector((int)random(-5, 5), (int)random(-5, 5));
    direction.normalize();
    direction.mult(3);
  }
}

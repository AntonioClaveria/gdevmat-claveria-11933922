public class Walker
{
  
   
   int red = int(random(256));
   int green = int(random(256));
   int blue = int(random(256));
   color random = color (red,green,blue);
    
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = 1;

  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force,this.mass);
    this.acceleration.add(f);
  }
  public void update()
  {    
     this.velocity.add(this.acceleration);
     this.velocity.limit(velocityLimit);
     this.position.add(this.velocity); 
     this.acceleration.mult(0);
  }
  public void render()
  {
  
    
    fill(random);
    noStroke();
    circle(position.x, position.y, scale); 
  }
  
}

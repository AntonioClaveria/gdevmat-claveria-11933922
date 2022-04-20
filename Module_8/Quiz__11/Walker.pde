public class Walker
{
  
   float y = random(-Window.windowHeight / 2, Window.windowHeight / 2 );
   float x = random(-Window.windowWidth / 2, Window.windowWidth / 2 );
   int red = int(random(256));
   int green = int(random(256));
   int blue = int(random(256));
   color random = color (red,green,blue, 75);
   
   public float gravitationalConstant = 1;
    
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
  

  
  public PVector calculateAttraction(Walker walker)
  {
    PVector force = PVector.sub(this.position,walker.position);
    float distance = force.mag();
    force.normalize();
    distance = constrain(distance, 10,15);
    float strength = (this.gravitationalConstant * this.mass * walker.mass)/(distance*distance);
    force.mult(strength);
    return force;
  }
}

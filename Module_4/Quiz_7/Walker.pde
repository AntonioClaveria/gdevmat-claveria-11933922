public class Walker
{
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  float y = random(-Window.windowHeight / 2, Window.windowHeight / 2 );
  float x = random(-Window.windowWidth / 2, Window.windowWidth / 2 );
  
  public PVector position = new PVector(x,y);

  
  
  public void update()
  {
    
     PVector mouse = new PVector(mouseX,mouseY);

     
     mouse.sub(position);
     mouse.normalize().mult(.5);
     acceleration = mouse;
     
     
     this.velocity.add(this.acceleration);
     this.velocity.limit(velocityLimit);
     this.position.add(this.velocity);
     
  }
  public void render()
  {
    
    circle(position.x, position.y, scale); 
  }
  
 public void spawn()
 {
   circle(position.x, position.y, scale); 
 }
}

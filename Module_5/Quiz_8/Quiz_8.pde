Walker walker[] = new Walker[10];


PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector (0,-0.4);

void setup()
{
 size(1280,720,P3D);
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);  
 
   for (int i = 0; i < walker.length; i++)
  {
   walker[i] = new Walker();
   walker[i].mass = (10-i);
   walker[i].scale = walker[i].mass * 15;
   
  }
 

}


void draw()
{
  background(80);
  
  walkers();
 
}

void walkers()
{  
      for (int i = 0; i < walker.length; i++)
     {
      walker[i].render();
      
      walker[i].update();
      
      walker[i].applyForce(wind);
      walker[i].applyForce(gravity);
      
       
  if (walker[i].position.y <= Window.bottom)
  {
    walker[i].velocity.y *= -1;
  }
  
   if (walker[i].position.x >= Window.right)
  {
    walker[i].velocity.x *= -1;
  }
     }
}

Walker walker[] = new Walker[10];
Liquid ocean = new Liquid(0,-100,Window.right, Window.bottom, 0.1f);


void setup()
{
 size(1280,720,P3D);
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);  
 int posX = 0;
 
   for (int i = 0; i < walker.length; i++)
  {
   posX = (Window.windowWidth/10) * (i - 5);
   walker[i] = new Walker();
   walker[i].position = new PVector (posX, 200);
   walker[i].mass = (10-i);
   walker[i].scale = walker[i].mass * 15;
   
  }
 

}


void draw()
{
  background(80);
  ocean.render();
  walkers();
 
}

void walkers()
{  
 
 
      for (int i = 0; i < walker.length; i++)
      {
       
      
      float mew = 0.1;
      float normal = 1;
      float frictionMagnitude = mew * normal;
      PVector friction = walker[i].velocity.copy();
      friction.normalize();
      friction.mult(-1);
      friction.mult(frictionMagnitude);
      walker[i].applyForce(friction);
      
      PVector gravity = new PVector(0,-0.15f * walker[i].mass);
      PVector wind = new PVector(0.1f,0);

      walker[i].render();
      
      walker[i].update();
      
     
      walker[i].applyForce(gravity);
      walker[i].applyForce(wind);
      
  
   if (walker[i].position.y <= Window.bottom)
  {
    walker[i].position.y = Window.bottom;
    walker[i].velocity.y *= -1;
  }
  
   if (walker[i].position.x >= Window.right)
  {
    walker[i].position.x = Window.right;
    walker[i].velocity.x *= -1;
  }
  
  if (ocean.isCollingWith(walker[i]))
  {
    PVector dragForce = ocean.calculateDragForce(walker[i]);
    walker[i].applyForce(dragForce);
  }

  }
  
}

  void mouseClicked()
  {
    clear();
    setup();
  }

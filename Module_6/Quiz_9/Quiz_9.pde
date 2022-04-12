Walker walker[] = new Walker[8];



void setup()
{
 size(1280,720,P3D);
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);  
 int posY = 0;
 
   for (int i = 0; i < walker.length; i++)
  {
   posY = 2 *(Window.windowHeight/2/ 8) * (i - (8/2));
   walker[i] = new Walker();
   walker[i].position = new PVector (-500, posY);
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
 
  float mew;
      for (int i = 0; i < walker.length; i++)
      {
       
        if (walker[i].position.x >= 0)
       {
        mew = 0.4f;
        
       }
       else 
       {
        mew = 0.01f;
       }
       
      
      float normal = 1;
      float frictionMagnitude = mew * normal;
      PVector friction = walker[i].velocity.copy();
      friction.normalize();
      friction.mult(-1);
      friction.mult(frictionMagnitude);
      walker[i].applyForce(friction);
      
      PVector acceleration = new PVector(0.2,0);
      walker[i].render();
      
      walker[i].update();
      
     
      walker[i].applyForce(acceleration);
      
      
 
 
  
   if (walker[i].position.x >= Window.right)
  {
    walker[i].position.x = Window.right;
    walker[i].velocity.x *= -1;
  }
   print(mew);
  }
  
}

  void mouseClicked()
  {
    clear();
    setup();
  }

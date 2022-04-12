Walker myWalker = new Walker();
Walker[] walkers = new Walker[101];
void setup()
{
 size(1280,720,P3D);
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 
     for (int i = 0; i < walkers.length; i++)
  {
   walkers[i] = new Walker();
   walkers[i].spawn();
  }
  
  
 myWalker.acceleration = new PVector(-0.2,.2);
 myWalker.scale = 100;
}

void draw()
{
   background(80);
   walkers();
   

}

void walkers()
{  
      for (int i = 0; i < walkers.length; i++)
     {
      walkers[i].render();
      
      walkers[i].update();
      
     }
}

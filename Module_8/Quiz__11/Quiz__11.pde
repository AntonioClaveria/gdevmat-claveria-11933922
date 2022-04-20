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
   walker[i].position = new PVector( random(-Window.windowWidth / 2, Window.windowWidth / 2 ),random(-Window.windowHeight / 2, Window.windowHeight / 2 ));
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
      
     
        for (int j = 0; j < walker.length; j++)
          {
            if( i != j)
             walker[i].applyForce(walker[j].calculateAttraction(walker[i]));
          }
     }

}

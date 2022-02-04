class Walker
{
  float x;
  float y;
  
  void render()
  {
    int alpha = int(random(50,101));
    int red = int(random(256));
    int green = int(random(256));
    int blue = int(random(256));
    color random = color (red,green,blue,alpha);
    
    fill(random);
    noStroke();
    circle (x,y,30);
  }
  void randomWalkBiased()
  {
     
  int rng = int(random(1,11));
    if (rng==1 || rng <= 4)
    {
      y+=5;
    }
    else if (rng == 5 || rng == 6 )
    {
      y-=5;
    }
      else if (rng ==7 || rng == 8)
    {
      x+=5;
    }
      else if (rng ==9 || rng == 10)
    {
      x-=5;
    }
  }
  
  void randomWalk()
  {
    int rng = int(random(1,9));
    if (rng==1) //north
    {
      y+=5;
    }
     else if (rng == 2 ) //north east
    {
      x+=5;
      y+=5;
    }
    else if (rng == 3 ) //east
    {
      x +=5;
    }
      else if (rng ==4) //south east
    {
      x +=5;
      y -=5;
    }
      else if (rng ==5 )//south
    {
      y -=5;
    }
    else if (rng ==6 )//south west
    {
      y -=5;
      x -=5;
    }
    else if (rng ==7 )//west
    {
      x-=5;
    }
    else if (rng ==8 )//north west
    {
      y +=5;
      x -=5;
    }
  }
}

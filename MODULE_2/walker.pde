class Walker
{
  float x;
  float y;
  
  void render()
  {
    circle (x,y,30);
  }
  void randomWalk()
  {
     
  int rng = int(random(1,5));
    if (rng==1)
    {
      y+=5;
    }
    else if (rng ==2)
    {
      y-=5;
    }
      else if (rng ==3)
    {
      x+=5;
    }
      else if (rng ==4)
    {
      x-=5;
    }
  }
}

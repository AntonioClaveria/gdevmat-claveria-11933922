class Walker
{
  public float x;
  public float y;
  float tx = 0, ty = 10000;
  void render ()
   {
    
    
    circle (x,y,10);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx),0,1, -640, 640);
    y = map(noise(ty),0,1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
    
  }
}

class Walker
{
  public float x;
  public float y;
  float tx = 5, ty = 10;
  float tr = 255, tg = 255, tb = 255;
  float tp = 1;
  
  void render ()
   {
    float red = map(noise(tr),0,1, 0, 255);
    float green = map(noise(tg),0,1, 0, 255);
    float blue = map(noise(tb),0,1, 0, 255);
    float radius = map(noise(tg),0,1, 5, 150);
    color random = color (red, green, blue);
    
    tr += 0.0001f;
    tg += 0.1f;
    tb += 0.03f;
    tp += 0.002f;
    
    fill(random);
    noStroke();
    circle (x,y,radius);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx),0,1, -640, 640);
    y = map(noise(ty),0,1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
    
  }
}

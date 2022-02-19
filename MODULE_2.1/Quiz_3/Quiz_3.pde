void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(240);
}
  Walker Paint = new Walker();

void draw()
{
  
  Paint.render();
  Paint.randomSplatter();

  if (frameCount == 300)
  {
    frameCount = 0;
    clear();
    background(240);
  }
  
  
}

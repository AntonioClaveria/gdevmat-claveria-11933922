void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker biasedWalker = new Walker();
Walker randomWalker = new Walker();
void draw()
{
  biasedWalker.render();
  biasedWalker.randomWalkBiased();
  
  randomWalker.render();
  randomWalker.randomWalk();
}

void setup()
{
   size(1280,720,P3D);
   background(255);
   camera(0,0, -(height/2.0) / tan(PI*30 / 180.0), 0, 0, 0, 0, -1, 0);
}

float t = 0;
Walker perlinWalker = new Walker();
void draw()
{
  //float random = noise(t);
  //println(random);
  //t+= 0.01f;
  //float n = noise(t);
  //float x = map(n, 0,1, 0, 360);
  //t += 0.01f;
  
  perlinWalker.render();
  perlinWalker.perlinWalk();
}

 //controls for amplitude UP increase DOWN decrease
 //controls for frequency RIGHT increase LEFT decrease
 //sir gumagalaw po yan
 
void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(255);
  drawCartesianPlane();
  drawQuadraticFunction();
  drawLinearFunction();
  drawSinFunction();
}

void drawCartesianPlane()
{
  stroke(4);
  line(0, 320, 0, -320);
  line(320, 0, -320, 0);
  
  for ( int i = -320; i <= 320; i += 40)
  {
    line(i,5,i,-5);
    line(5,i,-5,i);
  }
}
void drawQuadraticFunction()
{
    //f(x) = x^2−15x−3 (yellow color)
    color yellow = color (255,255,0);
    fill(yellow);
    noStroke();
    
      for (float x = -300; x<=300; x += 0.1f)
   {
     circle(x, ((float)Math.pow(x, 2) -  (x*15) - 3), 5);
   }
 }
void drawLinearFunction()
{
  //f(x) =−5x +30(purple color)
  color purple = color (128,0,128);
  
  
  for (int x = -300; x<=300; x++)
  {
    fill(purple);
    noStroke();
    circle(x, (-5 * x + 30), 5);

  }
}

 float amplitude = 50;
 float frequency = 0.1;

void drawSinFunction()
{
  float wave = sin(radians(frameCount));
  color brown = color (165, 42, 42);
  //Sine Wave (any color of your choosing)
    
      for (float x = -300; x<=300; x += 0.1f)
      {
     fill(brown);
     noStroke();
     circle(x + wave*100,(float)(Math.sin(frequency*x) * amplitude) + wave*100, 5);
    }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP)
    {
      amplitude = amplitude + 10;
    } 
    else if (keyCode == DOWN) 
    {
      amplitude = amplitude -10;
    } 
      else if (keyCode == RIGHT) 
    {
      frequency = frequency + 0.1;
    } 
      else if (keyCode == LEFT) 
    {
      frequency = frequency -0.1;
    } 
  } else 
  {
  }
}

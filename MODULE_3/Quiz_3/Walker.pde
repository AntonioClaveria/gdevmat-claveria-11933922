class Walker
{
  float x;
  float y;
  void render ()
   {
    float gaussian = randomGaussian();
    float standardDeviation = 40;
    float mean = 30;
    float radius = standardDeviation * gaussian + mean;
    int alpha = int(random(10,101));
    int red = int(random(256));
    int green = int(random(256));
    int blue = int(random(256));
    color random = color (red,green,blue,alpha);
    
    fill(random);
    noStroke();
    
    circle (x,y,radius);
  }
  
  void randomSplatter()
  {
  float gaussian = randomGaussian();
  float standardDeviation = 300;
  float mean = 0;
  
   y = int(random(-360, 361));
   x = standardDeviation * gaussian + mean;
   
  }
}

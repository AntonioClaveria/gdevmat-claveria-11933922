class Walker
{
  float gaussian = randomGaussian();
  float standardDeviation = 600;
  float mean = 0;
  float y = random(-Window.windowHeight / 2, Window.windowHeight / 2 );
  float x = standardDeviation * gaussian + mean + y;
     
  PVector particle = new PVector(x, y);
  float size = random(20,40);
  void physics()
  { 
  PVector Direction = PVector.sub(BH,particle);
  
  particle.add(Direction.normalize().mult(3));
    
    
  }
   
  float tr = 255, tg = 255, tb = 255;
  void renderParticle()
  {

    float red = random(200,255);
    float green = map(noise(tg),0,1, 0, 255);
    float blue = map(noise(tb),0,1, 0, 255);
    color random = color (red, green, blue);
    
    tg += 0.1f;
    tb += 0.03f;

    noStroke();
    fill(random);
    circle(particle.x, particle.y, size);
  }
  
}

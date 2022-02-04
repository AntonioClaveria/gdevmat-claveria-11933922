void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  //background(25);
  
  //color green = color (57, 255, 20);
  //color white = color (255,255,255);
 
  //fill(green);
  //circle(0,0,250);
  
  //strokeWeight(2);
  
  //stroke(white);
  //line(0, -125, 0, 125);
  //line(-125, 0, 125, 0); 
  drawCartesianPlane();
  drawQuadraticFunction();
  drawLinearFunction();
  drawCircleFunction();
}
void drawCartesianPlane()
{
    //Cartesian Plane
  stroke(4);
  line(0, 320, 0, -320);
  line(320, 0, -320, 0);
  
  for ( int i = -320; i <= 320; i += 40)
  {
    line(i,5,i,-5);
    line(5,i,-5,i);
  }
}

void drawLinearFunction()
{
  color green = color (57, 255, 20);
  color red = color (255, 0, 0);
  
  
  for (int x = -300; x<=300; x++)
  {
    fill(green);
    noStroke();
    circle(x, x + 2, 3);
    fill(red);
    noStroke();
    circle(x,-x + 2, 3);
  }
}
  
 void drawQuadraticFunction()
 {
   color blue = color (0, 0, 255);
   
   fill(blue);
   noStroke();
   
   for (float x = -300; x<=300; x += 0.1f)
   {
     circle(x, ((float)Math.pow(x, 2) +  (x*2) - 40), 3);
   }
 }
 
 void drawCircleFunction()
 {
    color purple = color (255, 0, 255);
    
    fill(purple);
    noStroke();
    float radius = 100;
    
    for (float x = 0; x<=360; x++)
    {
      circle((float) Math.cos(x) * radius, (float)Math.sin(x) * radius, 3);
    }
 }

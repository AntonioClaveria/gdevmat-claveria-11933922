void setup()
{
 size(1280,720,P3D);
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

void draw()

{
  background(10);

  PVector mouse = mousePos();
  


 //GLOW
  strokeWeight(15);
  stroke(255,100,100,70);


  mouse.normalize().mult(405);
  line(0, 0, mouse.x, mouse.y);
  println(mag(mouse.x,mouse.y));
  mouse.normalize().mult(405);
  line(0, 0, -mouse.x, -mouse.y);
  
  //SABER

  strokeWeight(8);
  stroke(255, 0, 0);


  mouse.normalize().mult(400);
  line(0, 0, mouse.x, mouse.y);
  mouse.normalize().mult(400);
  line(0, 0, -mouse.x, -mouse.y);
  
  //LIGHT

  strokeWeight(3);
  stroke(255,255,255);


  mouse.normalize().mult(399);
  line(0, 0, mouse.x, mouse.y);
  mouse.normalize().mult(399);
  line(0, 0, -mouse.x, -mouse.y);
 

 //HANDLE

  strokeWeight(18);
  stroke(50);


  mouse.normalize().mult(70);
  line(0, 0, mouse.x, mouse.y);
  mouse.normalize().mult(70);
  line(0, 0, -mouse.x, -mouse.y);
 

}

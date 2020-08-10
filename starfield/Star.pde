class Star
{

  float x;
  float y;
  float z;
  
  Star() 
  {
     x = random(-width, width); // x will have a value between 0 and the width of the window
     y = random(-height, height); // y will have a value between 0 and the height of the window
     z = random(width);
  }
  
  void update()
  {
    z = z - 20; // this regulates the speed of the stars: the higher the value, the faster the stars will go
    if(z < 1)
    {
      z = width;
      x = random(-width, width); // x will have a value between 0 and the width of the window
      y = random(-height, height); // y will have a value between 0 and the height of the window
    }
  }
  
  void show()
  {
    fill(255);
    noStroke();
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    float r = map(z, 0, width, 16, 0);
    ellipse(sx, sy, r, r); //ellipse are drawb at 8 pixels
  }
  

}
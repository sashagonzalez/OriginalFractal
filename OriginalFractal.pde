void setup()
{
  size(1000,1000);
  background(0);
  noFill();
  noLoop();
}

void draw()
{
  fractal(500,500,370);
}

void mouseDragged()
{
  fractal(500,500,370);
}

void fractal(float x,float y,float radius)
{ stroke(255);
  if(radius>60)
  {
  stroke(255);
  ellipse(x,y,2*radius,2*radius);
  triangle(x-( sqrt((float)3/4)*radius), y-(radius/2), x,y, x-( sqrt((float)3/4)*radius), y+(radius/2) );
  triangle(x+( sqrt((float)3/4)*radius), y-(radius/2), x,y, x+( sqrt((float)3/4)*radius), y+(radius/2) );
  triangle(x-(radius/2), y-( sqrt((float)3/4)*radius), x,y, x+(radius/2), y-( sqrt((float)3/4)*radius) );
  triangle(x-( radius/2), y+( sqrt((float)3/4)*radius), x,y, x+(radius/2), y+( sqrt((float)3/4)*radius) );
 // line(x-(sqrt((float)3/4)*radius), y-(radius/2), x-(sqrt((float)3/4)*radius*2.67/4),y);
  //line(x-(sqrt((float)3/4)*radius), y+(radius/2), x-(sqrt((float)3/4)*radius*2.67/4),y);
  ellipse(x-(sqrt((float)3/4)*radius*2.67/4),y ,(sqrt((float)3/4)*radius*2.67/4), (sqrt((float)3/4)*radius*2.67/4) );
  ellipse(x,y-(sqrt((float)3/4)*radius*2.67/4),(sqrt((float)3/4)*radius*2.67/4), (sqrt((float)3/4)*radius*2.67/4) );
  ellipse(x,y+(sqrt((float)3/4)*radius*2.67/4),(sqrt((float)3/4)*radius*2.67/4), (sqrt((float)3/4)*radius*2.67/4) );
  ellipse(x+(sqrt((float)3/4)*radius*2.67/4),y ,(sqrt((float)3/4)*radius*2.67/4), (sqrt((float)3/4)*radius*2.67/4) );
  fractal(x-(sqrt((float)3/4)*radius*2.67/4),y, (sqrt((float)3/4)*radius*2.67/4));
  fractal(x+(sqrt((float)3/4)*radius*2.67/4),y, (sqrt((float)3/4)*radius*2.67/4));
  fractal(x,y-(sqrt((float)3/4)*radius*2.67/4), (sqrt((float)3/4)*radius*2.67/4));
  fractal(x,y+(sqrt((float)3/4)*radius*2.67/4), (sqrt((float)3/4)*radius*2.67/4)); 
  
  }
  
}

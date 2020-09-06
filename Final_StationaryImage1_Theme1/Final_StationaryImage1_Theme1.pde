// https://www.worldwildlife.org/species/elephant

ImageEditor myIE;
ImageEditor myIE2;
void setup()
{
  size(800,600);
  myIE = new ImageEditor("elephant.jpg");
  myIE2 = new ImageEditor("elephant.jpg");
  noLoop();
}

void draw()
{
  myIE.startEditing();
  
  for (int s = 0; s <myIE.height(); s = s + 1)
  {
    for (int t = 0; t <myIE.width(); t = t + 1)
    {
      //stripes
      if (s%20 > 10)
      {
        //black and white
        int bw = (myIE.getRedAt(t,s) +
                myIE.getGreenAt(t,s) +
                myIE.getBlueAt(t,s))/3;
         myIE.setRedAt(bw,t,s);
         myIE.setGreenAt(bw,t,s);
         myIE.setBlueAt(bw,t,s);
      }
    }
  }
  
  myIE2.startEditing();
  
  for (int y = 0; y <myIE2.height(); y = y + 1)
  {
    for (int x = 0; x <myIE2.width(); x = x + 1)
    {    
      //stripes
      if (x%20 > 10)
      {
        //black and white
        int bw = (myIE.getRedAt(x,y) +
                myIE.getGreenAt(x,y) +
                myIE.getBlueAt(x,y))/3;
         myIE2.setRedAt(bw,x,y);
         myIE2.setGreenAt(bw,x,y);
         myIE2.setBlueAt(bw,x,y);
      }
    }
  }
  
  myIE.stopEditing();
  myIE2.stopEditing();
  myIE.drawAt(0,0);
  scale(0.8);
  myIE2.drawAt(100,75);
  save("resultInWindow.png");
}

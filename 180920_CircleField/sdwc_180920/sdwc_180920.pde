/*
  She Draws with Code   
  180920
  Jessica In 

  >> email      jin@jessicain.net   
  >> twitter    @innjesst
  >> instagram  @shedrawswithcode

  Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) 
  
  You are free to:
    Share — copy and redistribute the material in any medium or format
    Adapt — remix, transform, and build upon the material
    The licensor cannot revoke these freedoms as long as you follow the license terms.

  Under the following terms:
    Attribution — You must give appropriate credit, provide a link to the license, 
    and indicate if changes were made. You may do so in any reasonable manner, 
    but not in any way that suggests the licensor endorses you or your use.
    NonCommercial — You may not use the material for commercial purposes.
    ShareAlike — If you remix, transform, or build upon the material, you must distribute 
    your contributions under the same license as the original.
    No additional restrictions — You may not apply legal terms or technological measures 
    that legally restrict others from doing anything the license permits.

*/

int divX, divY;
float gridX, gridY;
color col1 = 0;
color col2 = #A0E307;
float t;

void setup() {
  size(900, 900);
  divX = 10;                 
  divY = 6;                  
  gridX = (float)width/divX;  
  gridY = (float)height/divY;
  smooth(16);
  rectMode(CENTER);
}//setup

void draw() {
  background(col1);
  for (int i=0; i<=divX; i++) {
    for (int j=0; j<=divY; j++) {
      float x;
       x = i*gridX + gridX*0.5;
      
      float y = j*gridY + gridY*0.5;
      stroke(col2); 
      strokeWeight(5);
      point(x, y);
      float dia = map(sin(t*2+i+cos(i+j)), -1, 1, 0, gridX);
      fill(col2); strokeWeight(2);
      rect(x,y, gridX, gridY);
      fill(col1); ellipse(x,y, dia, dia);
      
      float aX = x + cos(t+i+j)*dia*0.5;
      float aY = y + sin(t+i+j)*dia*0.5;
      stroke(col1); noFill(); strokeWeight(4);  rect(aX, aY, 15, 15);
      fill(col2); strokeWeight(5); 
      line(aX, aY, x - gridX*0.5, y- gridY*0.5);
      line(aX, aY, x + gridX*0.5, y+ gridY*0.5);
      strokeWeight(3);  stroke(col2); line(x,y, aX, aY); 
      fill(col2); ellipse(x,y, dia*0.66, dia*0.66);
      stroke(col1); fill(col1); ellipse(x + gridX*0.5, y+ gridY*0.5, 40, 40);
    }//j
  }//i
  t = t+0.06;

  if (t<TWO_PI) {
    //saveFrame("myFrames/frames-######.png");
  }
}//draw

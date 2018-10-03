/*
  She Draws with Code   
  180915
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
color bg = #2A1D7C;
color str = 240;
color col1 = 255; 
color col2 = 200;
float t;

void setup() {
  size(900, 900);
  divX = 64;                  //number of grid divisions in X axis
      //number of grid divisions in Y axis
  gridX = (float)width/divX;  //'length' of the grid spacing in X
  gridY = (float)height/divY; //'length' of the grid spacing in Y
  smooth(16);
  rectMode(CENTER);
  
}//setup

void draw() {
  background(bg);
  for (int i=0; i<=divX; i++) {
      float x =  x= i*gridX + gridX*0.5;
      float y = height*0.5;
      stroke(str); 
      strokeWeight(5);
      point(x, y);
      
      float distFromMouse = dist(mouseX, mouseY, x, y); 
      float dia = map(sin(t*2+i+1)* distFromMouse, 0, width,0, height); 
      strokeWeight(2); 

      fill(col1, 50);
      stroke(col2);  
      rect(x, y, gridX, dia);

  }//i
  float inc = map(mouseX, 0, width, 0.01, 0.06);
  t = t+inc;

  if (t<TWO_PI*2) {
   // saveFrame("myFrames/frames-######.png");
  }
}//draw

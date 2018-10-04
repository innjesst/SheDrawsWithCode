/*
  She Draws with Code   
  180923
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

color bgCol = 0; float xGrid, yGrid; int xNum, yNum;
float t =0;

void setup(){
  size(900, 900);
  xNum = 10;       yNum = 10;
  xGrid = (float)width/xNum;
  yGrid = (float)height/yNum;

}//setup

void draw(){
  background(bgCol);
  drawTheTriangles();
  t = t+0.06;
  
  if (t<TWO_PI){
    saveFrame("frames/frame-######.png");
  }
  
}//draw


void drawTheTriangles(){
  int count =0;
  
  for (int i=1; i<xNum-1; i++){
    for (int j=1; j<yNum-1; j++){
      
      //calc triangle centre pt
      float x = xGrid*i + xGrid*0.5;
      float y = yGrid*j + yGrid*0.5;
      
      //calc triangle centre pt 1
      float x1 = x-xGrid*0.5;
      float y1 = y+yGrid*0.5;
      
      //calc triangle centre pt 2
      float x2 = x+xGrid*0.5;
      float y2 = y-yGrid*0.5;
      
      //calc triangle centre pt 3
      float x3LowerRange = x-xGrid*0.5;
      float x3UpperRange = x+xGrid*0.5;
      float y3LowerRange = y-yGrid*0.5;
      float y3UpperRange = y+yGrid*0.5;
      
      float x3 =0; float y3 =0;
      if (count%2==0){
        x3 = map(sin(t+i*j), -1, 1, x3LowerRange, x3UpperRange); 
        y3 = map(sin(t+i*j), -1, 1, y3LowerRange, y3UpperRange); 
      }else{
        x3 = map(cos(t+i*j), -1, 1, x3LowerRange, x3UpperRange); 
        y3 = map(cos(t+i*j), -1, 1, y3LowerRange, y3UpperRange); 
      }
      noFill(); stroke(255); strokeWeight(3);
      triangle(x1, y1, x2, y2, x3, y3); 
      strokeWeight(1); line(x,y, x3, y3);
      count++;
    }
  }
  
  
 
}//setup

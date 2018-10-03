/*
  She Draws with Code   
  171128
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

int gridX = 20; 
int gridY = 20;
PVector gridPos = new PVector (0, 0, 0);
int xDivs, yDivs;
float factor;
float t = 0.0;
color bg = 0;
color strCol = 255;

void setup(){
  size(900, 900);
  xDivs = int(width/gridX);  
  yDivs = int(height/gridY);
  strokeCap(SQUARE);
  factor =0.5;
}


void draw(){
  background(bg); 
  stroke(strCol);
  
  if (factor<0){
    bg = 255; strCol = 0;
  }else{
    bg = 0; strCol = 255;
  }
  
  //main Grid
  for (int i=-xDivs; i<width+xDivs; i=i+xDivs) {
    for (int j=-yDivs; j<height+yDivs; j=j+yDivs) {
      gridPos = new PVector(i+xDivs*0.5, j+yDivs*0.5);
      PVector a = new PVector(i+xDivs*0.5, j+yDivs*0.5);
      PVector b = new PVector(mouseX, mouseY);
      PVector lookAt = a.sub(b);
      float dist = lookAt.mag();
      lookAt.normalize(); 
      lookAt.mult(dist*factor); 
      strokeWeight(dist*0.1);
      line(gridPos.x, gridPos.y, gridPos.x+lookAt.x, gridPos.y+lookAt.y);
    }
  }
  
  factor = sin(t);
  t = t+0.03;
  
  if (frameCount<1000){
    //saveFrame("frames/frame-######.png");
  }



}

void setup(){
  size(2000, 1000);
 
}
  int y = 500;int x = 100;
void draw(){
 fill(0, 100, 0);
rect(x, y, 200, 2000);

  background(100, 300, 500);
fill(0, 0, 400);
stroke(500, 500, 500);
ellipse(100,y, 90, 90);
y ++; 
y++;
  if (mousePressed){
    y = y - 10;
  }
  if(y== 0){
   y=0; 
  }
  if(y == 2000){
   y= y -5; 
  }
}

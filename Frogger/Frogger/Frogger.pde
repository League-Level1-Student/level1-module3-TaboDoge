void setup(){
  size(800, 600);
  
}
  int x;
  int y;
  int size;
  int speed;
  int fy = 584;
int fx = 400;
void draw(){
  background(#767575);
  fill(#578B0A);
ellipse(fx, fy, 30, 30);

if(fx >= 800){
  fx = 790;
}
if(fx <= 0){
  fx = 10;
}
if(fy <= 30){
  fy = 30;
}
if(fy >= 780){
  
}
}
 rect car x, y, size, speed;
  


 void display()
  {
    fill(0,255,0);
    rect(x , y,  size, 50);
  }


void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            fy = fy - 30;
        }
        else if(keyCode == DOWN)
        {
            fy = fy + 30;
        }
        else if(keyCode == RIGHT)
        {
            fx = fx + 30;
        }
        else if(keyCode == LEFT)
        {
            fx = fx - 30;
        }
    }
}

car car2 = new car(5, 30, 40, 10);
void setup(){
  size(800, 600);
 
}

  int fy = 584;
int fx = 400;

void draw(){
 
   background(#767575); 
  
  car2.drive();
  car2.display();
  

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
public class car{
  int x;
  int y;
  int size;
  int speed;
  public car(int x, int y, int size, int speed){
   this.x = x;
   this.y = y;
   this.size = size;
   this.speed = speed;
 }
 public void display()
  {
    fill(0,255,0);
    rect(x , y,  size, 50);
  }
 public void drive(){
    x = x + speed;
    if(x > width){
      x = 0 - size;
    }
    
    
  }
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

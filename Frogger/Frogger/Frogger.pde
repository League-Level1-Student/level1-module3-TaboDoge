car car2 = new car(5, 30, 40, 10);
void setup(){
  size(800, 600);
 
}

  int fy = 584;
int fx = 400;

void draw(){
 
   background(#767575); 
  
  car2.getSize();
  car2.display();
  boolean cr2 = intersects(car2);
  

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
 public void driveRight(){
    x = x + speed;
    if(x > width){
      x = 0 - size;
    }
 }
     public void driveLeft(){
      x = x - speed;
      if(x < 0){
        x = 800;
      }
    }
    
    public  int getX(){
      return(x);
    }
    
    public int getY(){
      return(y);
    }
  public int getSize(){
    return(size);
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

 boolean intersects(car car2) {
 if ((fy > car2.getY() && fy < car2.getY()+50) &&
                (fx > car2.getX() && fx < car2.getX()+car2.getSize())) {
              fy = 600;    
   return true;
   
  }
 else  {
  return false;
 }
}

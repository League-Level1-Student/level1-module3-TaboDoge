car car2 = new car(5, 30, 40, 10);
car car1 = new car(5, 90, 40, 7);
car car3 = new car(795, 250, 40, 12);
car car4 = new car(795, 310, 40, 8);
void setup(){
  size(800, 600);
 
}

  int fy = 584;
int fx = 400;

void draw(){
 
   background(#E3F2FA); 
  
  car2.getSize();
  car2.driveRight();
  car2.display();
  boolean cr2 = intersects(car2);
  
   car1.getSize();
  car1.driveRight();
  car1.display();
  boolean cr1 = intersects(car1);

 car3.getSize();
  car3.driveLeft();
  car3.display();
  boolean cr3 = intersects(car3);
  
  car4.getSize();
  car4.driveLeft();
  car4.display();
  boolean cr4 = intersects(car4);
  
   fill(#CBEDFF);
 rect(20, 190, 760, 10);
  
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
    fill(#82CFF7);
    rect(x , y,  size, 20);
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
              fx = 400;
   return true;
   
  }
 else  {
  return false;
 }
}
boolean intersect(car car1) {
 if ((fy > car1.getY() && fy < car1.getY()+50) &&
                (fx > car1.getX() && fx < car1.getX()+car2.getSize())) {
              fy = 600;  
              fx = 400;
   return true;
   
  }
 else  {
  return false;
 }
}
boolean intersectss(car car3) {
 if ((fy > car3.getY() && fy < car3.getY()+50) &&
                (fx > car3.getX() && fx < car3.getX()+car3.getSize())) {
              fy = 600;  
              fx = 400;
   return true;
   
  }
 else  {
  return false;
 }
}

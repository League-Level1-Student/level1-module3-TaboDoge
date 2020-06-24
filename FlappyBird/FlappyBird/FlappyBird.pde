      PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
       
void setup(){
 size(500, 750);
 back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);
}
  int y = 325;int x = 250;
  int px = 500;    int upperPipeHeight;
  int pipegap = 60;
 
void draw(){
  
   background(back);
   background(loadImage("flappyBackground.jpg"));
            image (pipeBottom,px,upperPipeHeight-75);
            image (pipeTop,px,-130);
           

fill(#FC1225);
stroke(#000000);
 ellipse(x, y, 50, 50);
y++;
y++;
px = px-5;
  if (mousePressed){
    y = y - 7;
  }
  if(y== 0){
   y=0; 
  }
  if(y == 2000){
   y= y -5; 
  }
  if(px == -45){
    px = 500;
     upperPipeHeight = (int) random(300, 700);
  }
   
}



boolean intersectsPipes() {
         if (y < upperPipeHeight && x > px && x < (x+60)){
            return true; }
        else if (y>upperPipeHeight && x > px && x < (px+60)) {
            return true; }
        else { return false; }
   }

      PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
       boolean intersectsPipes;
void setup(){
 size(500, 750);
 back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);
}
  int y = 525;int x = 250;
  int px = 500;    int upperPipeHeight;
  int pipegap = 60;
 
void draw(){
  
   background(back);
   background(loadImage("flappyBackground.jpg"));
            image (pipeBottom,px,upperPipeHeight+575);
            image (pipeTop,px, upperPipeHeight);
           

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
     upperPipeHeight = (int) random(-200, 0);
  }
   
if(upperPipeHeight + 435.5 > y && x == px){
  print("GAME OVER");
  System.exit(0);
}
if(upperPipeHeight + 575 < y && x == px){
  print("GAME OVER");
   System.exit(0);
}



        
       
}

    ////////
   //ball//
  ////////

//click the red botton to change the size and position of the rectangle
//click the blue botton to change the speed and direction of the rectangle 
//keypress to reset the position of the ball

float rectx=400;
float recty=400;
float rectw=200;
float recth=100;
float x=25;
float y=25;
float dx=5;
float dy=5;

void setup(){
  size(800,800);
}

void draw(){
  background(180);
  noStroke();
  fill(255,100,100);
  rect(width-30,10,20,20);
  fill(100,100,225);
  rect(width-30,40,20,20);
  
  stroke(255);
  strokeWeight(2);
  noFill();
  
  ellipse(x,y,50,50);
  rect(rectx,recty,rectw,recth);
  
  x=x+dx;
  y=y+dy;
  
  if( x<25 || x>width-25 || (y>recty-25 && y<recty+recth+25 && x>rectx-25 &&x<rectx-10) 
  || (y>recty-25 && y<recty+recth+25 && x<rectx+rectw+25 && x>rectx+rectw+10)){
    dx=-dx;
  }
  if( y<25 || y>height-25 || (x>rectx-25 && x<rectx+rectw+25 && y>=recty-25 && y<recty-10)
  || (x>rectx-25 && x<rectx+rectw+25 && y<=recty+recth+25 && y>recty+recth+10)){
    dy=-dy;
  }
  println(x,y,dx,dy,rectx,recty,rectw,recth);

  if(mouseX>width-30 & mouseX<width-10 & mouseY>10 & mouseY<30 & mousePressed){
    rect(width-30,10,20,20);
    rectw=random(700);
    recth=random(700);
    rectx=random(0,width-rectw);
    recty=random(0,width-recth);
  }
  if(mouseX>width-30 & mouseX<width-10 & mouseY>40 & mouseY<60 & mousePressed){
    rect(width-30,40,20,20);
    dx=random(-15,15);
    dy=random(-15,15);
  }
} 

void keyPressed(){
  x=25;
  y=25;
}
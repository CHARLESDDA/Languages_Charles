  //////////
 //Boring//
//////////


int x = 50;
int y = 50;
int s = 5;
int a = 0;
float r;
float z=0.00866;

void setup(){

  size(1000,1000,P3D);
}



void draw(){

  background(255,200,100);
  stroke(0,x/8,y/8);  
  strokeWeight(5);  
  noFill();  
  rectMode(CENTER);
  rect(x,y,100,100);  
  
  if( a==0 ){
    x=x+s; 
  }  
  if(x > width-50){
    x=width-50;
    a=1;
  }else if( a==1 ){
    y=y+s;
  }  
  if(y > height-50){
    y=height-50;
    a=2;
  }else if( a==2 ){
    x=x-s;   
  }
  if(x < 50){
    x=50;
    a=3;
  }else if(a == 3){
    y=y-s;
  }   
  if(y < 50){
    y=50;
    a=0;
  } 

  //eye 
  noStroke(); 
  fill(255);  
  ellipse(width/2,height/2,200,200);  
  fill(20);  
  translate(width/2,height/2);  
  r=r+z;  
  rotateZ(r);  
  ellipse(-20,-20,140,140);   
}



void mousePressed(){
 
  //r=-r;
  z=-z;
  s=-s;  
}
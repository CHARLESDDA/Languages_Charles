class Bubble{
  float x,y,sx,sy,d,g,R,G,B;
  
  Bubble(float tempX,float tempY,float tempD){
    x=tempX;
    y=tempY;
    d=tempD;
    sx=random(-3,3);
    sy=random(-3,3);
    g=random(-0.05,0.05);
    R=random(50,255);
    G=random(50,255);
    B=random(50,255);
  }
  
  void fall(){
    sx=sx+g;
    sy=sy+g;
    y=y+sy;
    x=x+sx;
  }
  
  void display() {
    strokeWeight(2);
    stroke(R,G,B);
    noFill();
    ellipse(x,y,d,d);
    strokeWeight(1);
    stroke(255);
    ellipse(x-12,y-12,d-42,d-42);
  }
}
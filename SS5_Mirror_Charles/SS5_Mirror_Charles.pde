//Mirror
//Click to change mode

import processing.video.*;
int cellsize = 8;
int cols, rows;
float m,n;
int q,w,i,j;
String state="1";
Capture video;

void setup(){
  size(640,480);
  frameRate(30);
  cols = width/cellsize;
  rows = height/cellsize;
  colorMode(RGB,255,255,255,200);
  video = new Capture(this,640,480,20);
  video.start();
  background(0);
}

void captureEvent(Capture camera){
  camera.read();
}

void draw(){ 
  background(0);

  if(state=="1"){ 
    for ( int i = 0; i < cols;i++) {
      for ( int j = 0; j < rows;j++) {
        int x = i*cellsize;
        int y = j*cellsize;
        int loc = (video.width - x - 1) + y*video.width;
        color c = video.pixels[loc];
        float sz = (brightness(c)/255.0f)*(cellsize);
        stroke(round(brightness(c)));
        strokeWeight(1);
        m=random(0,1);
        if(m>0&m<=0.5){
          line(x+cellsize+random(-5,5),y+cellsize+random(-5,5),x+random(-5,5),y+random(-5,5));
        }else{
          line(x+cellsize+random(-5,5),y+random(-5,5),x+random(-5,5),y+cellsize+random(-5,5));
        }
        //rect(x+cellsize/2,y+cellsize/2,sz,sz);
        //ellipse(x+cellsize,y+cellsize/2,sz,sz);
        smooth();
      }
    }
  }else if(state=="2"){ 
    for ( int i = 0; i < cols;i++) {
      for ( int j = 0; j < rows;j++) {   
        int x = i*cellsize;
        int y = j*cellsize;
        int loc = (video.width - x - 1) + y*video.width;
        color c = video.pixels[loc];
        float sz = (brightness(c)/255.0f)*(cellsize);
        ellipseMode(CENTER);
        stroke(round(brightness(c)));
        strokeWeight(1);
        noFill();
        n=random(5);
        //rect(x+cellsize/2,y+cellsize/2,sz,sz);
        ellipse(x+cellsize,y+cellsize/2,sz+n,sz+n);
        smooth();
      }
    }
  }
}

void mousePressed(){
  if(state=="1"){
    state="2";
  }else if(state=="2"){
    state="1";
  }

}
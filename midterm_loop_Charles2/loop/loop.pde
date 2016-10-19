PImage a01,a02,a03,a04,a06,a09,a10,a11,a12,a13,a14,a16,a18,a20,
       a23,a25,a26,a27,a29,a30,a31,a32,a34;
String s = "start";
int x,ct,st;



void setup() {
  size(1000, 800);
  background(0);
  a01 = loadImage("a01.png");
  a02 = loadImage("a02.png");
  a03 = loadImage("a03.png");
  a04 = loadImage("a04.png");
  a06 = loadImage("a06.png");
  a09 = loadImage("a09.png");
  a10 = loadImage("a10.png");
  a11 = loadImage("a11.png");
  a12 = loadImage("a12.png");
  a13 = loadImage("a13.png");
  a14 = loadImage("a14.png");
  a16 = loadImage("a16.png");
  a18 = loadImage("a18.png");
  a20 = loadImage("a20.png");
  a23 = loadImage("a23.png");
  a25 = loadImage("a25.png");
  a26 = loadImage("a26.png");
  a27 = loadImage("a27.png");
  a29 = loadImage("a29.png");
  a30 = loadImage("a30.png");
  a31 = loadImage("a31.png");
  a32 = loadImage("a32.png");
  a34 = loadImage("a34.png");
}


void draw() {  
  textSize(24);
  textAlign(CENTER);
  noFill();
  stroke(220);
  rectMode(CENTER);
  ct=millis();
  println(ct,st);
  
  if(s == "start"){
    background(0);
    rect(width/2,height/4*3,220,60);
    text("CLICK TO START",width/2,height/4*3);
  }else if(s == "plot 1"){ //do works 
    image(a01,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 2"){ //hear noises 
    image(a01,0,0);
    text("What's the sounds.Let me check.[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 3"){ //open the door  
    image(a02,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 4"){ //see someone  
    image(a03,0,0);
    text("On my god.[>]",width/2,height/4*3+100); 
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 5"){                               //make a choice 1   
    image(a03,0,0);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("turn on the light",width/4,height/4*3+100);
    text("take a baseball bar",width/4*3,height/4*3+100);   
  }else if(s == "plot 6"){ //see the man  
    image(a04,0,0);   
    if(ct-st>2000&ct-st<4000){
      text("Who are you?",width/2,height/4*3+100);
    }else if(ct-st>4000&ct-st<6000){
      text("That is what I want to say.Who are you?[>]",width/2,height/4-100);
    }else if(ct-st>6000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 8"){ //hit by the man   
    image(a06,0,0); 
    text("Go to hell.[>]",width/2,height/4-100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 10"){    
    background(0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 11"){ //open eyes  in the car  
    background(0);
    if(ct-st>2500&ct-st<5000){
      text("Where am I?",width/2,height/4*3+100);
    }else if(ct-st>2000&ct-st<4000){
      text("I think I am in the trunk.",width/2,height/4*3+100);
    }else if(ct-st>4000&ct-st<6000){
      text("Who's driving?I need to get out of here!",width/2,height/4*3+100);
    }else if(ct-st>6000&ct-st<8000){
      text("Wait.It's stopped[>]",width/2,height/4*3+100);
    }else if(ct-st>8000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 12"){ //car stop   the trunk open   
    image(a09,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 13"){ //hit the woman
    image(a10,0,0);
    text("You go to hell,bitch.[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 14"){ //look at the body
    image(a11,0,0);
    if(ct-st>2000&ct-st<4000){
      text("Oh god,I killed her.",width/2,height/4*3+100);
    }else if(ct-st>4000&ct-st<6000){
      text("Why she looks the same with me?",width/2,height/4*3+100);
    }else if(ct-st>6000&ct-st<8000){
      text("Who is she?[>]",width/2,height/4*3+100);
    }else if(ct-st>8000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 15"){ //drop the body   
    image(a12,0,0);
    text("Shit.[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 16"){ //drive away   
    image(a13,0,0);
    text("That's not my fault.[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 17"){ //see someone in the room
    image(a14,0,0);
    text("Someone in my room.[>]",width/2,height/4*3+100); 
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 18"){ //enter in   
    image(a14,0,0);
    text("What's happened?[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }
  // chapter 1 finished
  
  else if(s == "plot 19"){ //take a baseball bar        //make a choice 2
    image(a16,0,0);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("ask her",width/4,height/4*3+100);
    text("hide",width/4*3,height/4*3+100);  
  }else if(s == "plot 20"){ //face the man  
    image(a03,0,0);
    if(ct-st>2000&ct-st<4000){
      text("Who are you?",width/2,height/4*3+100);
    }else if(ct-st>4000&ct-st<6000){
      text("How can you get in my house?",width/2,height/4*3+100);
    }else if(ct-st>6000&ct-st<8000){
      text("Answer me or I will beat you.",width/2,height/4*3+100);
    }else if(ct-st>8000&ct-st<10000){
      text("You must be a thief.[>]",width/2,height/4*3+100);
    }else if(ct-st>10000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 21"){ //hide at connor  
    image(a18,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 23"){ //hit him from behind 
    image(a20,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 24"){ //look at the body  back
    image(a11,0,0);
    text("Oh god,I killed her.[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 25"){ //turn the body around  shocked
    image(a11,0,0);
    if(ct-st>2000&ct-st<4000){
      text("Oh god!",width/2,height/4*3+100);
    }else if(ct-st>4000&ct-st<6000){
      text("Why she looks the same with me?",width/2,height/4-100);
    }else if(ct-st>6000&ct-st<8000){
      text("Who is she?[>]",width/2,height/4-100);
    }else if(ct-st>8000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 26"){ //put the body in a bag
    image(a23,0,0);
    text("That's not my fault.[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 28"){ //drive away   
    image(a13,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 29"){ //driving               //make a choice 3
    image(a13,0,0);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("hill",width/4,height/4*3+100);
    text("beach",width/4*3,height/4*3+100); 
  }else if(s == "plot 30"){ //moving   
    image(a13,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 31"){ //hit something           //make a choice 4
    image(a25,0,0);
    text("Jesus.What's that?[>]",width/2,height/4*3-100);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("check what happened",width/4,height/4*3+100);
    text("drive away",width/4*3,height/4*3+100); 
  }else if(s == "plot 32"){ //hit the bird
    image(a26,0,0);
    text("I'd better drop it away.[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 34"){ //drop and see lots of birds    
    image(a27,0,0); 
    text("What?[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 35"){ //moving   
    image(a13,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 37"){ //bury the body
    image(a12,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  //chapter 2 finished
  
  }else if(s == "plot 38"){ //moving   
    image(a13,0,0);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 39"){ //see the truck   
    image(a29,0,0);
    text("Hey,watch out.[>]",width/2,height/4-100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 40"){ //car accident   
    background(0);
    text("CRASH[>]",width/2,height/4-100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 41"){ //scene of accident     
    image(a30,x,0);
    x=x-5;
    if(x<=-1000){
      x=-1000;
    }
    text("Is that me?I'm... dead?[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 42"){ //old man comming    
    image(a31,0,0);
    if(ct-st>2000&ct-st<4000){
      text("Are you all right?",width/2,height/4-100);
    }else if(ct-st>4000&ct-st<6000){
      text("Who are you",width/2,height/4*3+100);
    }else if(ct-st>6000&ct-st<8000){
      text("Just a driver.",width/2,height/4-100);
    }else if(ct-st>8000&ct-st<10000){
      text("No point trying to save yourself.",width/2,height/4-100);
    }else if(ct-st>10000&ct-st<12000){
      text("Can I give you a ride?",width/2,height/4-100);
    }else if(ct-st>12000&ct-st<14000){
      text("Yes.Take me home.[>]",width/2,height/4*3+100);
    }else if(ct-st>14000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }

  }else if(s == "plot 44"){ //in the taxi 
    image(a32,0,0); 
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 46"){ //wake up in the taxi and see the home
    image(a14,0,0); 
    text("Stop.That's my home[>]",width/2,height/4*3+100);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 47"){ //stop
    //sound  brake
    image(a34,0,0);
    if(ct-st>2000&ct-st<4000){
      text("Hey,I will leave the meter running.",width/2,height/4-100);
    }else if(ct-st>4000&ct-st<6000){
      text("You will come back,won't you?",width/2,height/4-100);
    }else if(ct-st>6000&ct-st<8000){
      text("Yes.I promise.[>]",width/2,height/4*3+100);
    }else if(ct-st>8000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }else if(s == "plot 49"){ //camera far
    background(0); 
    text("You still have choice",width/2,height/2);
    if(ct-st>2000){
      rect(950,50,50,50);
      triangle(935,35,935,65,965,50);
    }
  }
  //chapter 3 finished
}


void mousePressed(){
  if(s == "start" & mouseX > width/2-110 & mouseX < width/2+110 
  & mouseY > height/4*3-30 & mouseY < height/4*3+30){
    s = "plot 1";
    st=ct;
  }else if(s == "plot 5" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-1
    s = "plot 6";
    st=ct;
  }else if(s == "plot 5" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-2
    s = "plot 19"; 
    st=ct;
  }else if(s == "plot 19" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    s = "plot 20";
    st=ct;
  }else if(s == "plot 19" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    s = "plot 21";
    st=ct;
  }else if(s == "plot 29" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-2-1
    s = "plot 30";
    st=ct;
  }else if(s == "plot 29" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-2-2
    s = "plot 38";
    st=ct;
  }else if(s == "plot 31" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 
    s = "plot 32";
    st=ct;
  }else if(s == "plot 31" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 
    s = "plot 37";
    st=ct;
  }
}


void mouseClicked(){
  if(s == "plot 1"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 2";
    st=ct;
  }else if(s == "plot 2"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 3";
    st=ct;
  }else if(s == "plot 3"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 4";
    st=ct;
  }else if(s == "plot 4"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 5";
    st=ct;
  }else if(s == "plot 6"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>7500){
    s = "plot 8";
    st=ct;
  }else if(s == "plot 8"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 10";
    st=ct;
  }else if(s == "plot 10"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 11";
    st=ct;
  }else if(s == "plot 11"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>8000){
    s = "plot 12";
    st=ct;
  }else if(s == "plot 12"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 13";
    st=ct;
  }else if(s == "plot 13"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 14";
    st=ct;
  }else if(s == "plot 14"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>8000){
    s = "plot 15";
    st=ct;
  }else if(s == "plot 15"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 16";
    st=ct;
  }else if(s == "plot 16"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 17";
    st=ct;
  }else if(s == "plot 17"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 18";
    st=ct;
  }else if(s == "plot 18"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "start";
    st=ct;
  }else if(s == "plot 20"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>10000){
    s = "plot 23";
    st=ct;
  }else if(s == "plot 21"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 23";
    st=ct;
  }else if(s == "plot 23"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 24";
    st=ct;
  }else if(s == "plot 24"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 25";
    st=ct;
  }else if(s == "plot 25"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>8000){
    s = "plot 26";
    st=ct;
  }else if(s == "plot 26"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 28";
    st=ct;
  }else if(s == "plot 28"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 29";
    st=ct;
  }else if(s == "plot 30"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 31";
    st=ct;
  }else if(s == "plot 32"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 34";
    st=ct;
  }else if(s == "plot 34"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 35";
    st=ct;
  }else if(s == "plot 35"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 37";
    st=ct;
  }else if(s == "plot 37"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 15";
    st=ct;
  }else if(s == "plot 38"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 39";
    st=ct;
  }else if(s == "plot 39"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 40";
    st=ct;
  }else if(s == "plot 40"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 41";
    st=ct;
  }else if(s == "plot 41"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 42";
    st=ct;
  }else if(s == "plot 42"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>14000){
    s = "plot 44";
    st=ct;
  }else if(s == "plot 44"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 46";
    st=ct;    
  }else if(s == "plot 46"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "plot 47";
    st=ct;
  }else if(s == "plot 47"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>8000){
    s = "plot 49";
    st=ct;
  }else if(s == "plot 49"&&mouseX>925&&mouseX<975&&mouseY>25&&mouseY<75&&ct-st>2000){
    s = "start";
  }
}
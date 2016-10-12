PImage a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,
       a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32,a33,a34,a35;
String s = "start";
int x;
int T=0;


void setup() {
  size(1000, 800);
  background(0);
  a01 = loadImage("a01.png");
  a02 = loadImage("a02.png");
  a03 = loadImage("a03.png");
  a04 = loadImage("a04.png");
  a05 = loadImage("a05.png");
  a06 = loadImage("a06.png");
  a07 = loadImage("a07.png");
  a08 = loadImage("a08.png");
  a09 = loadImage("a09.png");
  a10 = loadImage("a10.png");
  a11 = loadImage("a11.png");
  a12 = loadImage("a12.png");
  a13 = loadImage("a13.png");
  a14 = loadImage("a14.png");
  a15 = loadImage("a15.png");
  a16 = loadImage("a16.png");
  a17 = loadImage("a17.png");
  a18 = loadImage("a18.png");
  a19 = loadImage("a19.png");
  a20 = loadImage("a20.png");
  a21 = loadImage("a21.png");
  a22 = loadImage("a22.png");
  a23 = loadImage("a23.png");
  a24 = loadImage("a24.png");
  a25 = loadImage("a25.png");
  a26 = loadImage("a26.png");
  a27 = loadImage("a27.png");
  a28 = loadImage("a28.png");
  a29 = loadImage("a29.png");
  a30 = loadImage("a30.png");
  a31 = loadImage("a31.png");
  a32 = loadImage("a32.png");
  a33 = loadImage("a33.png");
  a34 = loadImage("a34.png");
  a35 = loadImage("a35.png");
}


void draw() {  
  textSize(24);
  textAlign(CENTER);
  noFill();
  stroke(220);
  rectMode(CENTER);
  println(T);
  
  if(s == "start"){
    background(0);
    rect(width/2,height/4*3,220,60);
    text("CLICK TO START",width/2,height/4*3);
  }else if(s == "plot 1"){ //do works 
    image(a01,0,0);
  }else if(s == "plot 2"){ //hear noises 
    //sound  noise
    image(a01,0,0);
    text("What's the sounds.Let me check.[>]",width/2,height/4*3+100);  
    //text  what sound?
  }else if(s == "plot 3"){ //open the door  
    //sound  open the door
    image(a02,0,0);
  }else if(s == "plot 4"){ //see someone  
    image(a03,0,0);
    text("On my god.[>]",width/2,height/4*3+100); 
    //text  oh my god
  }else if(s == "plot 5"){                               //make a choice 1   
    image(a03,0,0);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("turn on the light",width/4,height/4*3+100);
    text("take a baseball bar",width/4*3,height/4*3+100);   
  }else if(s == "plot 6"){ //see the man  
    //sound  push the button
    image(a04,0,0);   
    T=T+1;
    if(T>0&T<80){
      text("Who are you?",width/2,height/4*3+100);
    }else if(T>80){
      text("That is what I want to say.Who are you?[>]",width/2,height/4-100);
    }else if(T>160){
      T=0;
    }
    //text  conversation  timer
  //}else if(s == "plot 7"){ //the man take the baseball bar      
    //image(a05,0,0);
    //text  what are u doing, what do u want
  }else if(s == "plot 8"){ //hit by the man   
    //sound  hit
    image(a06,0,0); 
    text("Go to hell.[>]",width/2,height/4-100);
  //}else if(s == "plot 9"){ //camera lying down and close eyes
    // open eyes
    //image(a07,0,0);
  }else if(s == "plot 10"){    
    //sound  car (timer)
    background(0);
  }else if(s == "plot 11"){ //open eyes  in the car  
    //sound  car stop (timer)
    // open eyes (timer)
    //text  what is this ? oh my baseball bar
    background(0);
    
    T=T+1;
    if(T>0&T<150){
      text("Where am I?",width/2,height/4*3+100);
    }else if(T>150&T<250){
      text("I think I am in the trunk.",width/2,height/4*3+100);
    }else if(T>250&T<400){
      text("Who's driving?I need to get out of here!",width/2,height/4*3+100);
    }else if(T>400){
      text("Wait.It's stopped[>]",width/2,height/4*3+100);
    }else if(T>600){
      T=0;
    }
  }else if(s == "plot 12"){ //car stop   the trunk open   
    //sound  car stop
    //trunk open
    image(a09,0,0);
  }else if(s == "plot 13"){ //hit the woman
    //sound  hit
    image(a10,0,0);
    text("You go to hell,bitch.[>]",width/2,height/4*3+100);
  }else if(s == "plot 14"){ //look at the body
    //text  oh my god I killed him
    image(a11,0,0);
    T=T+1;
    if(T>0&T<150){
      text("Oh god,I killed her.",width/2,height/4*3+100);
    }else if(T>150&T<250){
      text("Why she looks the same with me?",width/2,height/4-100);
    }else if(T>250){
      text("Who is she?[>]",width/2,height/4*3+100);
    }else if(T>350){
      T=0;
    }
  }else if(s == "plot 15"){ //drop the body   
    image(a12,0,0);
    text("Shit.[>]",width/2,height/4*3+100);
  }else if(s == "plot 16"){ //drive away   
    //sound  road
    image(a13,0,0);
    text("Thats not my fault.[>]",width/2,height/4*3+100);
  }else if(s == "plot 17"){ //see someone in the room
    //sound  brake
    image(a14,0,0);
    text("Someone in my room.[>]",width/2,height/4*3+100); 
  }else if(s == "plot 18"){ //enter in   
    //sound 
    image(a14,0,0);
    text("What happened today?[>]",width/2,height/4*3+100);
  }
  // chapter 1 finished
  
  else if(s == "plot 19"){ //take a baseball bar        //make a choice 2
    image(a16,0,0);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("ask her",width/4,height/4*3+100);
    text("hide",width/4*3,height/4*3+100);  
  }else if(s == "plot 20"){ //face the man  
    //ask her  
    //text  who are you ? what are u doing here ? u must be a thief
    image(a03,0,0);
    T=T+1;
    if(T>0&T<100){
      text("Who are you?",width/2,height/4*3+100);
    }else if(T>100&T<200){
      text("How can you get in my house?",width/2,height/4*3+100);
    }else if(T>200&T<300){
      text("Answer me or I will beat you.",width/2,height/4*3+100);
    }else if(T>300){
      text("You must be a thief.[>]",width/2,height/4*3+100);
    }else if(T>500){
      T=0;
    }
  }else if(s == "plot 21"){ //hide at connor  
    image(a18,0,0);
  //}else if(s == "plot 22"){ //the man tries to run   follow
    //text  stop or I will beat u
    //image(a03,0,0);
  }else if(s == "plot 23"){ //hit him from behind 
    //sound  hit
    image(a20,0,0);
  }else if(s == "plot 24"){ //look at the body  back
    //text  dead? 
    image(a11,0,0);
    text("Oh god,I killed her.[>]",width/2,height/4*3+100);
  }else if(s == "plot 25"){ //turn the body around  shocked
    //sound  shocked
    //text  what? who are u? hey wake up. shit, I killed him
    image(a11,0,0);
    T=T+1;
    if(T>0&T<150){
      text("Oh god!",width/2,height/4*3+100);
    }else if(T>150&T<250){
      text("Why she looks the same with me?",width/2,height/4-100);
    }else if(T>250){
      text("Who is she?[>]",width/2,height/4-100);
    }else if(T>450){
      T=0;
    }
  }else if(s == "plot 26"){ //put the body in a bag
    image(a23,0,0);
    text("Thats not my fault.[>]",width/2,height/4*3+100);
    //text shit
  //}else if(s == "plot 27"){ //get out and walk to the car
  //  image(a24,0,0);
  }else if(s == "plot 28"){ //drive away   
    //sound  road
    //moving background
    image(a13,0,0);
  }else if(s == "plot 29"){ //driving               //make a choice 3
    //sound  road
    //moving background
    image(a13,0,0);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("hill",width/4,height/4*3+100);
    text("beach",width/4*3,height/4*3+100); 
  }else if(s == "plot 30"){ //moving   
    //sound  car
    //moving background
    image(a13,0,0);
  }else if(s == "plot 31"){ //hit something           //make a choice 4
    //sound  hit brake
    //background stop
    image(a25,0,0);
    text("Jesus.What's that?[>]",width/2,height/4*3-100);
    rect(width/4,height/4*3+95,490,60);
    rect(width/4*3,height/4*3+95,490,60);
    text("check what happened",width/4,height/4*3+100);
    text("drive away",width/4*3,height/4*3+100); 
  }else if(s == "plot 32"){ //hit the bird
    image(a26,0,0);
    text("I'd better drop it away.[>]",width/2,height/4*3+100);
  //}else if(s == "plot 33"){ //drop the bird
  // image(a26,0,0);
  }else if(s == "plot 34"){ //drop and see lots of birds    
    image(a27,0,0); 
    text("What?[>]",width/2,height/4*3+100);
    //text  shit  whats the hell
  }else if(s == "plot 35"){ //moving   
    //sound  car
    //moving background
    image(a13,0,0);
  //}else if(s == "plot 36"){ //dig a hole
  //  image(a28,0,0);
  }
  else if(s == "plot 37"){ //bury the body
    image(a12,0,0);
  //chapter 2 finished
  
  }else if(s == "plot 38"){ //moving   
    //sound  car
    //moving background
    image(a13,0,0);
  }else if(s == "plot 39"){ //see the truck   
    //sound  laba
    image(a29,0,0);
    text("Hey,watch out.[>]",width/2,height/4-100);
  }else if(s == "plot 40"){ //car accident   
    //sound  crash
    background(0);
    text("CRASH[>]",width/2,height/4-100);
  }else if(s == "plot 41"){ //scene of accident     
    image(a30,x,0);
    x=x-5;
    if(x<=-1000){
      x=-1000;
    }
    text("Is that me?I'm... dead?[>]",width/2,height/4*3+100);
    //text  Is that me?
  }else if(s == "plot 42"){ //old man comming    
    image(a31,0,0);
     T=T+1;
    if(T>0&T<150){
      text("Are you all right?",width/2,height/4-100);
    }else if(T>150&T<300){
      text("Who are you",width/2,height/4*3+100);
    }else if(T>300&T<450){
      text("Just a driver.",width/2,height/4-100);
    }else if(T>450&T<600){
      text("No point trying to save yourself.",width/2,height/4-100);
    }else if(T>600&T<750){
      text("Can I give you a ride?",width/2,height/4-100);
    }else if(T>800&T<900){
      text("Yes.Take me home.[>]",width/2,height/4*3+100);
    }else if(T>1100){
      T=0;
    }
    //text  Are u okay? Im not sure, who are u?Im just a driver...
  //}else if(s == "plot 43"){ //old man     
  //  image(a31,0,0);
    //text  
  }else if(s == "plot 44"){ //in the taxi 
    image(a32,0,0); 
  //}else if(s == "plot 45"){ //sleep in the taxi
  //  image(a32,0,0); 
  }else if(s == "plot 46"){ //wake up in the taxi and see the home
    image(a14,0,0); 
    text("Stop.That's my home[>]",width/2,height/4*3+100);
  }else if(s == "plot 47"){ //stop
    //sound  brake
    image(a34,0,0);
    T=T+1;
    if(T>0&T<200){
      text("Hey,I will leave the meter running.",width/2,height/4-100);
    }else if(T>200&T<400){
      text("You will come back,won't you?",width/2,height/4-100);
    }else if(T>500&T<700){
      text("Yes.I promise.[>]",width/2,height/4*3+100);
    }else if(T>9000){
      T=0;
    }
    //text  conversation
  //}else if(s == "plot 48"){ //get out of the car
    //image(a35,0,0); 
    //text  conversation
  }else if(s == "plot 49"){ //camera far
    background(0); 
  }
  //chapter 3 finished
}


void mousePressed(){
  if(s == "start" & mouseX > width/2-110 & mouseX < width/2+110 
  & mouseY > height/4*3-30 & mouseY < height/4*3+30){
    //fill(100);  
    //noStroke();
    //rectMode(CENTER);
    //rect(width/2,height/4*3,220,60);
    s = "plot 1";
  }else if(s == "plot 5" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-1
    s = "plot 6";
  }else if(s == "plot 5" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-2
    s = "plot 19";    
  }else if(s == "plot 19" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    s = "plot 20";
  }else if(s == "plot 19" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    s = "plot 21";
  }else if(s == "plot 29" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-2-1
    s = "plot 30";
  }else if(s == "plot 29" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 1-2-2
    s = "plot 38";
  }else if(s == "plot 31" & mouseX > width/4-245 & mouseX < width/4+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 
    s = "plot 32";
  }else if(s == "plot 31" & mouseX > width/4*3-245 & mouseX < width/4*3+245 
  & mouseY > height/4*3+65 & mouseY < height/4*3+125){
    //branch 
    s = "plot 37";
  }
}


void keyPressed(){
  if(s == "plot 1"){
    s = "plot 2";
  }else if(s == "plot 2"){
    s = "plot 3";
  }else if(s == "plot 3"){
    s = "plot 4";
  }else if(s == "plot 4"){
    s = "plot 5";
  }else if(s == "plot 6"){
    s = "plot 8";
  //}else if(s == "plot 7"){
  //  s = "plot 8";
  }else if(s == "plot 8"){
    s = "plot 10";
  //}else if(s == "plot 9"){
  //  s = "plot 10";
  }else if(s == "plot 10"){
    s = "plot 11";
  }else if(s == "plot 11"){
    s = "plot 12";
  }else if(s == "plot 12"){
    s = "plot 13";
  }else if(s == "plot 13"){
    s = "plot 14";
  }else if(s == "plot 14"){
    s = "plot 15";
  }else if(s == "plot 15"){
    s = "plot 16";
  }else if(s == "plot 16"){
    s = "plot 17";
  }else if(s == "plot 17"){
    s = "plot 18";
  }else if(s == "plot 18"){
    s = "start";
  }else if(s == "plot 20"){
    s = "plot 23";
  }else if(s == "plot 21"){
    s = "plot 23";
  //}else if(s == "plot 22"){
    //s = "plot 23";
  }else if(s == "plot 23"){
    s = "plot 24";
  }else if(s == "plot 24"){
    s = "plot 25";
  }else if(s == "plot 25"){
    s = "plot 26";
  }else if(s == "plot 26"){
    s = "plot 28";
  //}else if(s == "plot 27"){
  //  s = "plot 28";
  }else if(s == "plot 28"){
    s = "plot 29";
  }else if(s == "plot 30"){
    s = "plot 31";
  }else if(s == "plot 32"){
    s = "plot 34";
  //}else if(s == "plot 33"){
  //  s = "plot 34";
  }else if(s == "plot 34"){
    s = "plot 35";
  }else if(s == "plot 35"){
    s = "plot 37";
  //}else if(s == "plot 36"){
  //  s = "plot 37";
  }else if(s == "plot 37"){
    s = "plot 15";
  }else if(s == "plot 38"){
    s = "plot 39";
  }else if(s == "plot 39"){
    s = "plot 40";
  }else if(s == "plot 40"){
    s = "plot 41";
  }else if(s == "plot 41"){
    s = "plot 42";
  }else if(s == "plot 42"){
    s = "plot 44";
  //}else if(s == "plot 43"){
  //  s = "plot 44";
  }else if(s == "plot 44"){
    s = "plot 46";
  //}else if(s == "plot 45"){
  //  s = "plot 46";
  }else if(s == "plot 46"){
    s = "plot 47";
  }else if(s == "plot 47"){
    s = "plot 49";
  //}else if(s == "plot 48"){
  //  s = "plot 49";
  }else if(s == "plot 49"){
    s = "start";
  }
}
//click the small yellow dot!

var song;
var amp;
var button;
var r;
var state="1";
var volhistory=[];

//have my music preloaded
function preload() {
  song = loadSound('MUJI.mp3');
}

function setup() {
  createCanvas(400, 400); 
  song.play();
  amp = new p5.Amplitude();
  
}

function draw() {
  
  var vol = amp.getLevel();
  volhistory.push(vol);
  fill(0, 0, 77);
  rect(-1, -1, width+1, height+1);
  translate(width/2, height/2);
  
  
  for (var i = 0; i < volhistory.length; i++) {
    var r = map(volhistory[i], 0, 1, height, 0);
    console.log(r);
  }
  
  
  for (var x = -100; x <= 100; x+=10) {
    for (var y = -100; y <= 100; y+=10) {
      var d = dist(x, y, 0, 0);
      var d2 = sin(radians(d))*d;
      stroke(179, 179, 255, 255-d2*3);
      if(state=="1"){
    
        
     fill(255, 204, 0);
     ellipse(0,0,5,5);

      push();
      translate(x*2, y*2);
      rotate(radians(r/4));
      line(x, y, 0, 0);
      pop();
      
      push();
      translate(x*2, y*2);
      rotate(radians(-r));
      line(x, y, 0, 0);
      pop();
        
  //when click the dot button        
    }else if(state=="2"){    
    
     song.pause();
     fill(255, 204, 0);
     ellipse(0,0,5,5);

      push();
      translate(x*2, y*2);
      rotate(radians(frameCount));
      line(x, y, 0, 0);
      pop();
      
      push();
      translate(x*2, y*2);
      rotate(radians(-frameCount));
      line(x, y, 0, 0);
      pop();
    }
    }
  }
  //text here
  fill(0, 68, 204);

  text('Press the Yellow Dot',0,190);
  textFont("Helvetica");
  textAlign(CENTER);
  textSize(10);
}
  // call 2 states here
function mousePressed(){
  if(mouseX<205&&mouseX>195&&mouseY<205&&mouseY>195&&state=="1"){
    state="2";
  }else if(mouseX<205&&mouseX>195&&mouseY<205&&mouseY>195&&state=="2"){
    state="1";  
    song.play();
  }
}
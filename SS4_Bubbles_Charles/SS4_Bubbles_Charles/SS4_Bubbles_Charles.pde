ArrayList<Bubble>bubbles=new ArrayList<Bubble>();

void setup(){
  size(800,800);
}

void draw(){
  background(0,0,50);
  for(int i=0;i<bubbles.size();i++){ 
    Bubble bubble=bubbles.get(i);
    bubble.fall();
    bubble.display();  
    println(i);
  }    
}

void mousePressed(){
  bubbles.add(new Bubble(mouseX,mouseY,50));
}

  


  
  
  
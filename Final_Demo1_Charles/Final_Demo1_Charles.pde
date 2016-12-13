import java.util.ArrayList;

import com.thomasdiewald.pixelflow.java.DwPixelFlow;
import com.thomasdiewald.pixelflow.java.softbodydynamics.DwPhysics;
import com.thomasdiewald.pixelflow.java.softbodydynamics.constraint.DwSpringConstraint;
import com.thomasdiewald.pixelflow.java.softbodydynamics.particle.DwParticle;
import com.thomasdiewald.pixelflow.java.softbodydynamics.particle.DwParticle2D;
import com.thomasdiewald.pixelflow.java.softbodydynamics.softbody.DwSoftBody2D;
import com.thomasdiewald.pixelflow.java.softbodydynamics.softbody.DwSoftGrid2D;

import processing.core.*;
import processing.opengl.PGraphics2D;

  PImage img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,img13,img14,img16,img17,img18,img19,img20;

  // physics parameters
  DwPhysics.Param param_physics = new DwPhysics.Param();
  
  // spring parameters
  DwSpringConstraint.Param param_spring_cloth1 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth2 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth3 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth4 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth5 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth6 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth7 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth8 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth9 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth10 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth11 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth12 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth13 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth14 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth15 = new DwSpringConstraint.Param();
  DwSpringConstraint.Param param_spring_cloth16 = new DwSpringConstraint.Param();
  
  // physics simulation
  DwPhysics<DwParticle2D> physics;
  
  // cloth objects
  DwSoftGrid2D cloth1 = new DwSoftGrid2D();
  DwSoftGrid2D cloth2 = new DwSoftGrid2D();
  DwSoftGrid2D cloth3 = new DwSoftGrid2D();
  DwSoftGrid2D cloth4 = new DwSoftGrid2D();
  DwSoftGrid2D cloth5 = new DwSoftGrid2D();
  DwSoftGrid2D cloth6 = new DwSoftGrid2D();
  DwSoftGrid2D cloth7 = new DwSoftGrid2D();
  DwSoftGrid2D cloth8 = new DwSoftGrid2D();
  DwSoftGrid2D cloth9 = new DwSoftGrid2D();
  DwSoftGrid2D cloth10 = new DwSoftGrid2D();
  DwSoftGrid2D cloth11 = new DwSoftGrid2D();
  DwSoftGrid2D cloth12 = new DwSoftGrid2D();
  DwSoftGrid2D cloth13 = new DwSoftGrid2D();
  DwSoftGrid2D cloth14 = new DwSoftGrid2D();
  DwSoftGrid2D cloth15 = new DwSoftGrid2D();
  DwSoftGrid2D cloth16 = new DwSoftGrid2D();
  
  ArrayList<DwSoftBody2D> softbodies = new ArrayList<DwSoftBody2D>();
  
  int DISPLAY_MODE = 0;
  
  boolean DISPLAY_MESH           = true;
  boolean DISPLAY_SPRINGS_BEND   = true;  
  boolean UPDATE_PHYSICS         = true;  

  boolean NEED_REBUILD = false;
  
  void setup() {
    size(1400,850,P2D); 
    smooth(4);
    surface.setLocation(0, 0);
    
    // main library context
    DwPixelFlow context = new DwPixelFlow(this);
    context.print();
    
    physics = new DwPhysics<DwParticle2D>(param_physics);

    param_physics.GRAVITY = new float[]{ 0, 0.2f };
    param_physics.bounds  = new float[]{ 0, 0, width, height };
    //param_physics.iterations_collisions = 4;
   // param_physics.iterations_springs    = 4;

    // spring parameters for Cloth
    param_spring_cloth1.damp_dec = 0.999999f;
    param_spring_cloth1.damp_inc = 0.000199f;
    param_spring_cloth2.damp_dec = 0.999999f;
    param_spring_cloth2.damp_inc = 0.000199f;
    param_spring_cloth3.damp_dec = 0.999999f;
    param_spring_cloth3.damp_inc = 0.000199f;    
    param_spring_cloth4.damp_dec = 0.999999f;
    param_spring_cloth4.damp_inc = 0.000199f;
    param_spring_cloth5.damp_dec = 0.999999f;
    param_spring_cloth5.damp_inc = 0.000199f;
    param_spring_cloth6.damp_dec = 0.999999f;
    param_spring_cloth6.damp_inc = 0.000199f;
    param_spring_cloth7.damp_dec = 0.999999f;
    param_spring_cloth7.damp_inc = 0.000199f;
    param_spring_cloth8.damp_dec = 0.999999f;
    param_spring_cloth8.damp_inc = 0.000199f;
    param_spring_cloth9.damp_dec = 0.999999f;
    param_spring_cloth9.damp_inc = 0.000199f;
    param_spring_cloth10.damp_dec = 0.999999f;
    param_spring_cloth10.damp_inc = 0.000199f;
    param_spring_cloth11.damp_dec = 0.999999f;
    param_spring_cloth11.damp_inc = 0.000199f;
    param_spring_cloth12.damp_dec = 0.999999f;
    param_spring_cloth12.damp_inc = 0.000199f;    
    param_spring_cloth13.damp_dec = 0.999999f;
    param_spring_cloth13.damp_inc = 0.000199f;
    param_spring_cloth14.damp_dec = 0.999999f;
    param_spring_cloth14.damp_inc = 0.000199f;
    param_spring_cloth15.damp_dec = 0.999999f;
    param_spring_cloth15.damp_inc = 0.000199f;
    param_spring_cloth16.damp_dec = 0.999999f;
    param_spring_cloth16.damp_inc = 0.000199f;
    
    // initial cloth building parameters, both cloth start the same
    cloth1.CREATE_BEND_SPRINGS   = true;
    cloth1.bend_spring_mode      = 0;
    cloth1.bend_spring_dist      = 3;    
    cloth2.CREATE_BEND_SPRINGS   = true;
    cloth2.bend_spring_mode      = 0;
    cloth2.bend_spring_dist      = 3;   
    cloth3.CREATE_BEND_SPRINGS   = true;
    cloth3.bend_spring_mode      = 0;
    cloth3.bend_spring_dist      = 3;
    cloth4.CREATE_BEND_SPRINGS   = true;
    cloth4.bend_spring_mode      = 0;
    cloth4.bend_spring_dist      = 3;
    cloth5.CREATE_BEND_SPRINGS   = true;
    cloth5.bend_spring_mode      = 0;
    cloth5.bend_spring_dist      = 3;
    cloth6.CREATE_BEND_SPRINGS   = true;
    cloth6.bend_spring_mode      = 0;
    cloth6.bend_spring_dist      = 3;
    cloth7.CREATE_BEND_SPRINGS   = true;
    cloth7.bend_spring_mode      = 0;
    cloth7.bend_spring_dist      = 3;
    cloth8.CREATE_BEND_SPRINGS   = true;
    cloth8.bend_spring_mode      = 0;
    cloth8.bend_spring_dist      = 3;
    cloth9.CREATE_BEND_SPRINGS   = true;
    cloth9.bend_spring_mode      = 0;
    cloth9.bend_spring_dist      = 3;
    cloth10.CREATE_BEND_SPRINGS   = true;
    cloth10.bend_spring_mode      = 0;
    cloth10.bend_spring_dist      = 3;    
    cloth11.CREATE_BEND_SPRINGS   = true;
    cloth11.bend_spring_mode      = 0;
    cloth11.bend_spring_dist      = 3;   
    cloth12.CREATE_BEND_SPRINGS   = true;
    cloth12.bend_spring_mode      = 0;
    cloth12.bend_spring_dist      = 3;
    cloth13.CREATE_BEND_SPRINGS   = true;
    cloth13.bend_spring_mode      = 0;
    cloth13.bend_spring_dist      = 3;
    cloth14.CREATE_BEND_SPRINGS   = true;
    cloth14.bend_spring_mode      = 0;
    cloth14.bend_spring_dist      = 3;
    cloth15.CREATE_BEND_SPRINGS   = true;
    cloth15.bend_spring_mode      = 0;
    cloth15.bend_spring_dist      = 3;
    cloth16.CREATE_BEND_SPRINGS   = true;
    cloth16.bend_spring_mode      = 0;
    cloth16.bend_spring_dist      = 5;
        
    img1 = loadImage("img1.png");
    img2 = loadImage("img2.png");
    img3 = loadImage("img3.png");
    img4 = loadImage("img4.png");
    img5 = loadImage("img5.png");
    img6 = loadImage("img6.png");
    img7 = loadImage("img7.png");
    img8 = loadImage("img8.png");
    img9 = loadImage("img9.png");
    img10 = loadImage("img10.png");
    img11 = loadImage("img11.png");
    img12 = loadImage("img12.png");
    img13 = loadImage("img13.png");
    img14 = loadImage("img14.png");
    img17 = loadImage("img17.png");
    img16 = loadImage("img16.png");
    img18 = loadImage("img18.png");
    img19 = loadImage("img19.png");
    img20 = loadImage("img20.png");
    
    createBodies();
  
    frameRate(60);
  }
  
  void createBodies(){
    
    physics.reset();
    
    softbodies.clear();
    
    softbodies.add(cloth1);
    softbodies.add(cloth2);
    softbodies.add(cloth3);
    softbodies.add(cloth4);
    softbodies.add(cloth5);
    softbodies.add(cloth6);
    softbodies.add(cloth7);
    softbodies.add(cloth8);
    softbodies.add(cloth9);
    softbodies.add(cloth10);
    softbodies.add(cloth11);

    
    cloth1.setMaterialColor(color(120,30,50));
    cloth2.setMaterialColor(color(120,30,50));
    cloth3.setMaterialColor(color(120,30,50));
    cloth4.setMaterialColor(color(120,30,50));
    cloth5.setMaterialColor(color(120,30,50));
    cloth6.setMaterialColor(color(120,30,50));
    cloth7.setMaterialColor(color(120,30,50));
    cloth8.setMaterialColor(color(120,30,50));
    cloth9.setMaterialColor(color(120,30,50));
    cloth10.setMaterialColor(color(120,30,50));
    cloth11.setMaterialColor(color(120,30,50));

    
    cloth1.setParam(param_spring_cloth1);
    cloth2.setParam(param_spring_cloth2);
    cloth3.setParam(param_spring_cloth3);
    cloth4.setParam(param_spring_cloth4);
    cloth5.setParam(param_spring_cloth5);
    cloth6.setParam(param_spring_cloth6);
    cloth7.setParam(param_spring_cloth7);
    cloth8.setParam(param_spring_cloth8);
    cloth9.setParam(param_spring_cloth9);
    cloth10.setParam(param_spring_cloth10);
    cloth11.setParam(param_spring_cloth11);


    // both cloth are of the same size
    int nodex_x = 20;
    int nodes_y = 20;
    int nodes_r = 6;
    int nodes_start_x = 0;
    int nodes_start_y = 10;
    
    int   num_cloth = softbodies.size();
    float cloth_width = 20;
    float spacing = 100;
    
    
    // create all cloth in the list
    for(int i = 0; i < num_cloth; i++){
      nodes_start_x += spacing*3;
      if(nodes_start_x>1000){
        nodes_start_y +=spacing*3;
        nodes_start_x = 100;
      }
      DwSoftGrid2D cloth = (DwSoftGrid2D) softbodies.get(i);
      cloth.create(physics, nodex_x, nodes_y, nodes_r, nodes_start_x, nodes_start_y);
      cloth.getNode(              0, 0).enable(false, false, false); // fix node to current location
      cloth.getNode(cloth.nodes_x-1, 0).enable(false, false, false); // fix node to current location
      cloth.createParticlesShape(this);
    }
  }

 
  void draw() {
    
    if(NEED_REBUILD){
      createBodies();
      NEED_REBUILD = false;
    }   
    updateMouseInteractions();
    // update physics simulation
    physics.update(1);
    
    // render
    background(255);
    
    image(img18,0,0);
    image(img17,0,0);
    
    
    // 3) mesh, solid
    //scale(0.1);
    if(DISPLAY_MESH){
      stroke(0);
      strokeWeight(0.1f);
      noStroke();
      for(DwSoftBody2D body : softbodies){
        body.displayMesh(this.g);   
      }
    }
    //ellipse(mouseX,mouseY,50,50);
    //fill(100);
    image(img16,0,0);
    image(img19,0,0);
    image(img20,0,0);
    
  }
   
  // this resets all springs and particles, to some of its initial states
  // can be used after deactivating springs with the mouse
  public void repairAllSprings(){
    for(DwSoftBody2D body : softbodies){
      for(DwParticle pa : body.particles){
        pa.setCollisionGroup(body.collision_group_id);
        pa.setRadiusCollision(pa.rad());
        pa.enableAllSprings(true);
      }
    }
  }
  
  
  // update all springs rest-lengths, based on current particle position
  // the effect is, that the body keeps the current shape
  public void applySpringMemoryEffect(){
    ArrayList<DwSpringConstraint> springs = physics.getSprings();
    for(DwSpringConstraint spring : springs){
      spring.updateRestlength();
    }
  }
  
  
  

 //User Interaction

 
  DwParticle particle_mouse = null;
  
  public DwParticle findNearestParticle(float mx, float my){
    return findNearestParticle(mx, my, Float.MAX_VALUE);
  }
  
  public DwParticle findNearestParticle(float mx, float my, float search_radius){
    float dd_min_sq = search_radius * search_radius;
    DwParticle2D[] particles = physics.getParticles();
    DwParticle particle = null;
    for(int i = 0; i < particles.length; i++){
      float dx = mx - particles[i].cx;
      float dy = my - particles[i].cy;
      float dd_sq =  dx*dx + dy*dy;
      if( dd_sq < dd_min_sq){
        dd_min_sq = dd_sq;
        particle = particles[i];
      }
    }
    return particle;
  }
  
  public ArrayList<DwParticle> findParticlesWithinRadius(float mx, float my, float search_radius){
    float dd_min_sq = search_radius * search_radius;
    DwParticle2D[] particles = physics.getParticles();
    ArrayList<DwParticle> list = new ArrayList<DwParticle>();
    for(int i = 0; i < particles.length; i++){
      float dx = mx - particles[i].cx;
      float dy = my - particles[i].cy;
      float dd_sq =  dx*dx + dy*dy;
      if(dd_sq < dd_min_sq){
        list.add(particles[i]);
      }
    }
    return list;
  }
    
  public void updateMouseInteractions(){
      if(particle_mouse != null){
        float[] mouse = {mouseX, mouseY};
        particle_mouse.moveTo(mouse, 0.2f);
    }
  }

  public void mousePressed(){
        particle_mouse = findNearestParticle(mouseX, mouseY, 100);
        if(particle_mouse != null) particle_mouse.enable(false, false, false);
  }
  
  public void mouseReleased(){
    if( particle_mouse != null){
      if(mouseButton == LEFT || mouseButton == RIGHT) particle_mouse.enable(true, true, true);
      particle_mouse = null;
    }
  }
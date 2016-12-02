//Add your plane here, name it p1



/*
********************
FEEL FREE TO IGNORE ALL CODE BELOW THIS COMMENT.
YOU CAN CHECK HOW THE METHODS ARE USED IF YOU LIKE. 
*********************
*/

int stroke = 6;
//PImage plane;
int listSpot = 0;
int tunnelSize = 200;
int[] lineSpot = new int[800/stroke];
float random = 0;
float randDelt = .009;
int tunnelGrow = 300;
boolean gameOver = false;

void setup(){
  size(800,600);
  for(int i = 0; i < lineSpot.length ; i++){
    random += .001;
   lineSpot[i] =  (int)(400*noise(random)) ; 
  }  
  frameRate(40);
  strokeWeight(stroke);
}

void draw(){
  
      if(gameOver){
      delay(2000);
      exit(); 
    }
  
  background(200);
  
  if(tunnelGrow > 0){
   tunnelGrow--; 
  }
//  listSpot++;
  //if(listSpot >= lineSpot.length){
  // listSpot = 0; 
  //}
  
  lineSpot[lineSpot.length-1]= (int)(400*noise(random));
  
 // lineSpot[listSpot] = (int)(600*noise(random));

    for(int i = 0; i < lineSpot.length; i++){
      line(i*stroke,0,i*stroke,lineSpot[i]-tunnelGrow);
      line(i*stroke,lineSpot[i] + tunnelSize+tunnelGrow,i*stroke, height);
    }
    
    for(int i = 0; i < lineSpot.length-1; i++){
      lineSpot[i] = lineSpot[i+1];
    }
    
      random += randDelt;
      

    p1.fly();
    p1.drawPlane();
//  println(noise(33+i));
    if(p1.isCrashing(lineSpot[50/stroke]-tunnelGrow,lineSpot[50/stroke] + tunnelSize+tunnelGrow )){
     fill(255,0,0);
     textSize(100);
      text("You Lose,\nExiting...",200,300); 
      gameOver = true;
    }
    
 }

void keyPressed(){
 if(keyCode == UP){
   p1.decelerate();
 }
   if(keyCode == DOWN){
   p1.accelerate();
 }
}
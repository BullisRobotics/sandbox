public class Airplane{
 //how high up the plane is (in pixels)
 double myAlt;
 //how fast plane is changing speed
 double myAcc;
 //how fast plane is moving
 double myVelo;
 //size of the sides of the plane, plane is drawn down from the top-left pixel
 int mySides;
 
 // ************ Missing Constructor ********************
 
 
 //When written correctly, this method will change the altitude based on the current velocity
 public void fly(){

 }
 
 //When written correctly, this method will cause the planes velocity to change based on the acceleration
 public void accelerate(){

 }
 
  //When written correctly, this method will cause the planes velocity to change based on the acceleration
 public void decelerate(){

 }
  
  
  //floor is the value of the bottom of the tunnel, cieling is the value of the top of the cieling
  //The rectangle is drawn from the top right, so when you consider the sides, keep that in mind, ask Mr. Stanford for details if you still have questions
  public boolean isCrashing(double cieling, double floor){
    return true; 
  }
  
  
  //This one is taken care of for you! It colors and draws the ball, and prints some useful information
  public void drawPlane(){
   fill(255);
   rect(50,(float)myAlt,mySides,mySides);
    println("my Alt is: " + myAlt);
    println("my velo is: " + myVelo); 
    println("my acc is: " + myAcc);
    println(millis()/1000 + " seconds passed");

  }
}
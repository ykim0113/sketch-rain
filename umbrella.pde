class umbrella {  
  float x, y, a, b;
  float speedX, speedY;
  color c;
  
  umbrella() {
    x = 0;
    y = 0;
    c = 0;
    speedX = 0;
    speedY = 0;
  }
  
  
  void display() {
    x = mouseX;
    y = mouseY;
   

   
   //umbrella top 
   rect(x,y-75,5,10);
   
    
   //umbrella bottom
   rect(x,y,5,60);
    
  }
  
  /**
  * Change size of umbrella top size
  */
  void topSize(float x, float y, float a) {
    arc(x, y, a, 130, radians(180), radians(360));
  }
  


}
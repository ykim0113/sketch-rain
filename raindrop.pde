class raindrop {
  float x;
  float y;
  float z;
  float speedY;
  color c;
  
 
  raindrop() {
    x = random(width);
    y = random(-200,-100);
    z = random(0,20);
    speedY = random(2,4);
    c = color(255,255,255);
  }
  
  
  void display() {
    noStroke();
    for (int i = 2; i < 5; i++ ) {
      ellipse(x,y + i*4,i*2,i*2);
      fill(c);
    }
  }
  
  void fall() {
    y = y + speedY / 1.2;
    
    if (y > height) {
      y = random(-100,-100);
      speedY = random(4,10);
    }
  }
  
  /**
   * Umbrella changes color
   * Raindrops bounce once hit on umbrella and changes color
   */
  void changeColor(umbrella u, float a) { 
    if ( y > u.y && x > u.x - (a-50) && x < u.x + (a-50)) {
      //change color to default grey
      c = color(211,211,211);
    } else {
      c = color(255,255,255);
    }
  }
  
   


  /**
   *
   */
  void colorGradient(umbrella u, float r, float g, float b, float a) { 
    if ( y > u.y && x > u.x - (a-50) && x < u.x + (a-50)) {
      //change color
      setColor(r,g,b);     
    } else {
      c = color(255,255,255);
    }
  }
  
  void setColor(float r, float g, float b) {
    c = color(r,g,b);
  }
  

 
}
class fallingtext {
  float x,y;
  String s;

    fallingtext(float _x, float _y, String _s) {
      x = _x;
      y = _y;
      s = _s;
    }
  
   void drawText() {
     text(s, x, y);
     textSize(32);
   }
  
  
    void fall(float distance) {
      y = y+ distance;
    }  
}
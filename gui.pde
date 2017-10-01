/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void happyButton(GButton source, GEvent event) { //_CODE_:happyb:532997:
  println("happyb clicked");
  mood = 0;
} //_CODE_:happyb:532997:

public void sadButton(GButton source, GEvent event) { //_CODE_:sadb:884497:
  println("sadb clicked");
  mood = 1;
} //_CODE_:sadb:884497:

public void funButton(GButton source, GEvent event) { //_CODE_:funb:801541:
  println("funb clicked");
  mood = 2;
} //_CODE_:funb:801541:

public void umbrellaSize(GSlider source, GEvent event) { //_CODE_:umbrellasize:394891:
  println("umbrellasize - GSlider >> GEvent." + event + " @ " + millis());
  usize = source.getValueF();
  
} //_CODE_:umbrellasize:394891:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.PURPLE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  happyb = new GButton(this, 16, 102, 80, 30);
  happyb.setText("happy");
  happyb.addEventHandler(this, "happyButton");
  sadb = new GButton(this, 15, 144, 80, 30);
  sadb.setText("sad");
  sadb.addEventHandler(this, "sadButton");
  funb = new GButton(this, 16, 188, 80, 30);
  funb.setText("fun");
  funb.addEventHandler(this, "funButton");
  umbrellasize = new GSlider(this, 13, 12, 100, 40, 10.0);
  umbrellasize.setLimits(0, -200, 200);
  umbrellasize.setNumberFormat(G4P.INTEGER, 0);
  umbrellasize.setOpaque(false);
  umbrellasize.addEventHandler(this, "umbrellaSize");
}

// Variable declarations 
// autogenerated do not edit
GButton happyb; 
GButton sadb; 
GButton funb; 
GSlider umbrellasize; 

import processing.sound.*;
import g4p_controls.*;

AudioIn input;
Amplitude rms;

raindrop[] raindrops = new raindrop[200];
//particle[] particles = new particle[100];
umbrella aumbrella;
fallingtext text;

int scale=1;

boolean sound = false;


int mood;
float usize;
float uwidth;




void setup() {
  size(600, 700);
  smooth();
  
  createGUI();
  customGUI();
  
  
    //Create an Audio input and grab the 1st channel
    input = new AudioIn(this, 0);
    // start the Audio Input
    input.start();
    // create a new Amplitude analyzer
    rms = new Amplitude(this);
    // Patch the input to an volume analyzer
    rms.input(input);
  
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new raindrop();
  }
  
  //for (int i = 0; i < particles.length; i++) {
  //  particles[i] = new particle();
  //}
  
  
  aumbrella = new umbrella();
  text = new fallingtext(100, 100,"raindrops");
  

 
}

void draw() {
  background(230, 230, 250);
  
  
  

   // adjust the volume of the audio input
    input.amp(map(mouseY, 0, height, 0.0, 1.0));
    


   
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i].fall();
    raindrops[i].display(); 
    //if have sound input, colorGradient
    
    if (rms.analyze() > 0.04) { //0.04 = voice / music input
        //change color to colorGradient
        
        raindrops[i].colorGradient(aumbrella, 211,211,211, uwidth);
       
        //need to specify
        if (mood == 0) {
           //happy && !sad && !fun
          raindrops[i].colorGradient(aumbrella, 255,random(60,255),0,uwidth);
        } else if (mood == 1) {
          //!happy && sad && !fun
          raindrops[i].colorGradient(aumbrella, 0,random(0,255),255,uwidth);
        } else if (mood == 2) {
          //!happy && !sad && fun
          raindrops[i].colorGradient(aumbrella, random(255),random(255),random(255),uwidth);
        }

        
    } else {
      raindrops[i].changeColor(aumbrella, uwidth);
    }

  }
  


  aumbrella.display();
 
  
  text.drawText();
  text.fall(2);
  
  
  uwidth = 150 + usize;
  

  
  aumbrella.topSize(mouseX,mouseY,uwidth);

}

void customGUI() {
}

void update() {
  mood = 0;
}
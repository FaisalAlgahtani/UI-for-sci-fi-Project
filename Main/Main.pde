

import ddf.minim.*;

PImage sata;
PImage earth;
Space_field s;
Cabin  c;
Radar radar;
Minim minim;
AudioPlayer player;
AudioPlayer alarmSound;
Alarm alarm;
Clock clock;
 

void setup() {

  size (800, 600);
  background (0);
  stroke(255);
  //noCursor();
  minim = new Minim(this);

  s = new Space_field();
  c = new Cabin();
  radar = new Radar(width/2, height/1.16, 75, 0.5, 200);
  alarm = new Alarm(width/1.53, height/1.25, 75, 0.5, 200);
  clock = new Clock();
  player = minim.loadFile("Space.mp3");
  alarmSound = minim.loadFile("alarm.mp3");
  
  
    sata = loadImage("Satellite.png");
    earth = loadImage("Earth.png");
  
}
void draw () {

  background (0);
  noFill();
  strokeWeight(2);
  stroke(17, 255, 41);
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, 50, 50); 
  ellipse(mouseX, mouseY, 15, 15);
  ellipse(mouseX, mouseY, 5, 5);

  image(sata, 360,50, 100, 60);
  image(earth,460,50, 300, 260);




  s.looping();
  c.draw_cabin();
  radar.display_Radar();
  radar.movement();
   alarm.movement1();
   alarm.display_Alarm();
  clock.draw_clock();
  clock.time();
   
 
  player.play();
  //player.rewind();

}
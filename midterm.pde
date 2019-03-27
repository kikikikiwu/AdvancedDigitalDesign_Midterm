import processing.sound.*;
import processing.serial.*;

SoundFile[] notes; // empty place for notes
Serial port;
int op = -1;

void setup(){
  
    //load sound files into array
    //8 music tracks
    notes = new SoundFile[8];
    notes[0] = new SoundFile (this,"FunkRock_.wav");
    notes[1] = new SoundFile (this,"ViolinBass_.wav");
    notes[2] = new SoundFile (this,"Pop_.wav");
    notes[3] = new SoundFile (this,"PianoSolo_.wav");
    notes[4] = new SoundFile (this,"VocalCello_.wav");
    notes[5] = new SoundFile (this,"HardRock_.wav");
    notes[6] = new SoundFile (this,"AcousticJazz_.wav");
    notes[7] = new SoundFile (this,"Harmonica_.wav");

    //communicate with arduino
   // String portName = Serial.list()[3]; // replace this number with the port you are using
   // port = new Serial(this, portName, 9600); 
}

void draw(){
 
  println(op);
  //when op is given value
  if(op >= 0){

    if(notes[op].isPlaying() == false){
    notes[op].play();
    //break the 2nd if loop
    op = -1;
    }
  }
/*  
  //button = port.read();  

  
  //reset the flag
  if(musicIsPlayed == true){
  musicIsPlayed = false;
  }
  
  if(musicIsPlayed == false){
  //call out music player function
  music();
  }
  */
}

void keyPressed(){
  
  //test switcher
  //if(keyCode == UP || keyCode == DOWN){
    if(keyCode == UP){
          op = 0;
    }
    if(keyCode == DOWN){
          op = 1;
    }
    if(keyCode == SHIFT){
          op = 2;
    }
    if(keyCode == ALT){
          op = 3;
    }
    if(keyCode == CONTROL){
          op = 4;
    }
    
   // }   
}

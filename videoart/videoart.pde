import processing.video.*;
import processing.sound.*;
SoundFile file;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;
PFont letra1;


Movie movie1;
Movie movie3;
Movie movie4;
Movie movie5;


void setup() {
file=new SoundFile (this, "magia.mp3");
file2=new SoundFile (this, "tierritamojada.mp3");
file3=new SoundFile (this,"recuerdo.mp3");
file4=new SoundFile (this,"extrañar.mp3");
file5=new SoundFile (this,"piano.mp3");
  file5.loop();
  background(0);
  size(600,600);
  letra1 =createFont ("Maquina.otf", 20);
  fill(255);
  textFont (letra1);
  textSize (20);
  text ("LA VIDA", 250,430);
  text ("Presiona:", 252,455);
  text ("'a' para recordar           's' para ser niño otra vez", 10,505);
  text ("'d' para tener fé           'f' para volver con tu familia", 10,530);
  
  movie1 = new Movie(this, "recuerdos.mp4");
  movie3=new Movie (this, "infancia.mp4");
  movie4=new Movie (this, "religion.mp4");
  movie5=new Movie (this, "recuerdos2.mp4");


  movie1.loop();
  movie3.loop();
  movie4.loop();
  movie5.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
if  (key == 'a'){image(movie1, 60, 0, 300, 180);}
else if (key == 's'){image (movie3, 380,60,140,90);}
else if (key == 'd'){image (movie4, 80,250,150,100);}
else if (key == 'f'){image (movie5, 320,220,150,100);}

}
void keyPressed(){
  if (key=='a'){
    file.play();
  file2.stop();
file3.stop();
file4.stop();}
  else if (key =='s'){
    file2.play();
  file.stop();
file3.stop();
file4.stop();}
else if (key == 'd'){
file3.play();
file.stop();
file2.stop();
file4.stop();}
else if (key =='f'){
file4.loop();
file.stop();
file2.stop();
file3.stop();}}
    
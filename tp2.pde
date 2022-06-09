//link video: https://youtu.be/-XZJcSqfokc

int cant=10;
int c=255;
int tam;
int pantalla;
int y= 500;
int x= 500;
int Ay= 100;
int Ax= 500;
int radius = 30;
PFont titulo;

void setup(){
  size(600,600);
  rectMode(CENTER);
  tam= width/cant;
 titulo= loadFont("titulo.vlw");
 ellipseMode(RADIUS);
    fill(255);
    textSize(15);
    text("Acerca tu mouse al circulo y deja apretada una tecla", 75, 550);

   

}
void draw() {
  
  
  if(pantalla==0){
  background(0);
  float d= dist(mouseX, mouseY, x, y);
  if(d<radius) {
    pantalla=1;
  
  }
  ellipse(x, y, radius, radius);
  
   fill(255);
    textSize(15);
    text("Acerca tu mouse al circulo y deja apretada una tecla", 75, 550);
    textSize(30);
    textFont(titulo);
    text("Ilusión Optica tp2", 130, 300);

    
  } else if(pantalla==1 ){
    background(0);
    float s= dist(mouseX, mouseY, Ax, Ay);
  if(s<radius) {
    pantalla=0;
  }
  fill(255);
  ellipse(Ax, Ay, radius, radius);
  fill(255, 0, 0);
 textSize(10);
  text("REINICIAR", 527, 148, 100, 100);

    if(keyPressed==true){
     background (255);
  for(int r= width; r>0; r-=20) {



    strokeWeight(5);
    fill(random(0, 255));
   rect(width/2, height/2, r, r);
   
   
     
     
   
  }
    

  }
 
  }
  
  
  
  
  
  
 

}

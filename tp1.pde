int pantalla ;//esto es una variable y vale 0 por que no le di ningun valor y solamente le puse un nombre
int Y=410;
int X1=0-2;
int X2=650;
int numero=1;
int YY=610;
PFont tituloa;
PFont haceclick;
PFont nombres;
PFont actoresfuente;
PImage marvels ;
PImage creditos;
PImage ironman ;
PImage cap ;
PImage thor ;
PImage rocket ;
PImage blackwidow ;
PImage hawkeye ;
PImage loki ;
PImage antman ;
PImage hulk ;
PImage actoresf ;


float movimiento;
float posicionx;
float posiciony;
float suma; 
float tiempo;

float y=200;
float x=300;
float velocidad=3.0;
float textomov =55.0;



void setup() {
   size(600, 400);
   
  
   
   creditos =loadImage("creditos.jpg");
   marvels = loadImage("marvels.jpg");
    ironman = loadImage("ironman.jpg");
    cap = loadImage("cap.jpg");
     thor = loadImage("thor.jpg");
      rocket = loadImage("rocket.jpg");
    blackwidow = loadImage("blackwidow.jpg");
   hawkeye = loadImage("hawkeye.jpg");
    loki = loadImage("loki.jpg");
    antman = loadImage("antman.jpg");
    hulk = loadImage("hulk.jpg");
    
    
    
 actoresfuente=loadFont("actoresfuente.vlw");
     tituloa=createFont("tituloa.ttf", 20);
     haceclick=loadFont("haceclick.vlw");
     nombres = loadFont("nombres.vlw");
      
     
 
}
 
void draw() {
  background(0);
  
  
  if(pantalla==0){
    background(0);
    image(marvels, 0, 0, 600, 400);
    strokeWeight(3);
    fill(#830C0C);
 fill(255);
textFont(actoresfuente, 25);
    text("HACE CLICK", 255, 380);
  } 
  else if(pantalla==1){
    background(0);
    image(ironman, 0, 0, 300, 400);
    fill(255);
    textFont(actoresfuente, 20);
    text("ROBERT DOWNEY JR" ,400, 300 );
    textSize(20);
    
    
    
  }
  else if(pantalla==2){
    background(0);
    image(cap, 300, 0, 300, 400);
     text("CHRIS EVANS", 130, 300);
  
  }
  else if(pantalla==3){
    
     background(0);
    image(thor, 0, 0, 300, 400);
     text("CHRIS HEMSWORTH", 400, 300);
   
  }
  else if(pantalla==4){
 background(0);
     image(rocket, 300, 0, 300, 400);
     text("BRADLEY COOPER", 130, 300);
     
  }
  else if(pantalla==5){
     background(0);
    image(blackwidow, 0, 0, 300, 400);
   text("SCARLETT JOHANSSON", 370, 300);
   
  }
  else if(pantalla==6){
     background(0);
    image(hawkeye, 300, 0, 300, 400);
   text("JEREMY RENNER", 130, 300);
   
  }
  else if(pantalla==7){
    
background(0);
    image(loki, 0, 0, 300, 400);
   text("TOM HIDDLESTON", 400, 300);
   
 }
  else if(pantalla==8){
     background(0);
    image(antman, 300, 0, 300, 400);
   text("PAUL RUDD", 130, 300);
   
  }
  else if(pantalla==9){
 background(0);
    image(hulk, 0, 0, 300, 400);
   text("MARK RUFFALO", 400, 300);
 
  }
  else if(pantalla==10){
    
     image(creditos, 0, 0, 600, 400);
   textFont(actoresfuente, 20);
   fill(0);
   textSize(16);

   fill(255);
    fill(#7C7C7C);
    textFont(tituloa, 55);
   text("AVENGERS-ENDGAME", 95, 170);
   textSize(22);
      textFont(actoresfuente, 30);
      text("DIRECTED BY", 250, Y);
   text("SCREENPLAY BY", 245,  Y+70);
   text("PRODUCED BY" , 250, Y+140);
   text("MUSIC BY", 265, Y+210);
   text("CO-PRODUCER", 255, Y+280);
   textSize (20);
   textFont(nombres, 15);
    text("ANTHONY RUSSO & JOE RUSSO ", 220, Y+20);
    text("JEFFREY FORD AND MATTHEW SCHMIDT", 220, Y+90);
    text("KEVIN FEIGE", 290, Y+160);
    text("ALAN SILVESTRI", 270, Y+230);
    text("MITCHELL BELL", 270, Y+300);
    
   if(Y<610 & Y>0-1000){
     Y=Y-numero;}
//<> &
} 
 else if(pantalla==11){
    text("PANTALLA 11",300,YY);
    if(YY<619 & YY>300){
    YY=YY-numero;} 

}
else if(pantalla==12){
    text("fin",300,300);}

}
void mouseClicked() {
  if (pantalla == 0) {
    pantalla=1;
  } else if (pantalla == 1){
    pantalla=2;
  }
  else if (pantalla == 2){
    pantalla=3;
  }
  else if (pantalla == 3){
    pantalla=4;
  }
  else if (pantalla == 4){
    pantalla=5;
  }
  else if (pantalla == 5){
    pantalla=6;
  }
  else if (pantalla == 6){
    pantalla=7;
  }
  else if (pantalla == 7){
    pantalla=8;
  }
  else if (pantalla == 8){
    pantalla=9;
  }
  else if (pantalla == 9){
    pantalla=10;
  }
  
   
  
}

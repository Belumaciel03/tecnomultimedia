//link video: https://www.youtube.com/watch?v=r3jJ67WOAsk
int pantalla;
int jugar=1;//defino el estado de fin de la partida
int pintar =1;//pintar la pantalla
int tamano=100;
int puntos=0;
int posX=0;//posicióncap
int posY=0;//.-
PImage cap;
PImage thor;
PImage logomarvel;
PFont tituloa;
PFont instrucciones;
PImage [] imag = new PImage[3];

void setup(){
  size(800,600);
  instrucciones=loadFont("instrucciones.vlw");
  logomarvel=loadImage("logomarvel.png");
  tituloa=createFont("tituloa.ttf" ,50);
  imag [0] = loadImage("cap.png");
  imag [1] = loadImage("thor.png");



}







void draw(){
  
  
  if(pantalla==0 ){
    jugar=1;
    background(0);
                                                        
    fill(255); 
                                      
    //rect(200,450,400,40);
    textSize(40);             
    textFont(tituloa, 25);
    fill(255);
    text("espace para iniciar",320,482);
    image(logomarvel, 200, 200, 400, 200);
    fill(255);
    textFont(instrucciones, 10);
    text("HACE CLICK SOBRE CAPITÁN AMERICA PARA GANAR PUNTOS", 335, 80);
    text("SI HACES CLICK SOBRE THOR PERDES", 335, 100);
   text("SI PERDES EL JUEGO SE REINICIA", 335,120);
    if(keyPressed==true){
    pantalla=1;}
  
  
    
  } 
  
  else  if ((jugar==1)&&(pintar==1)&&(pantalla==1)){//dibuja la pantalla
  ;
  personajes();}
  
  
  

  else if(jugar==0){
  puntos=0;
pantalla=0;
background(0);} //cuando pierdo vuelve a la pantalla de inicio
  
  
  
}


void personajes (){
  
  
  
  if(pantalla==1){
  background(0);
  for(int i=0; i<=puntos; i++){    //thorss
   image(imag[1],(floor(random(50,750))), floor(random(100,550)), tamano, tamano);}} //posición aleatoria de thor
//cap
   
  posX=floor(random(50,750));
  posY=floor(random(100,550));//posicion aleatoria de cap.
  image(imag[0], posX, posY, tamano, tamano);
 
 //puntos
 textAlign(CENTER);
  textSize(18);
  fill(255, 0, 0);
  text("PUNTOS: "+ (puntos), 250, 30);
 //tiempo
 
  fill(255,0,0);
  textAlign(LEFT);
  textSize(18);
  text("TIEMPO:" + millis()/1000, 20, 30);
   
   //nueva pantalla
  
   pintar=0;
 
 
 
 }
 
 
 
 void mousePressed(){
  if(jugar ==1 & pantalla==1)
  { 

    if (pintar == 0)
    {
      pintar =1;
      
    }
    if ((mouseX > posX-tamano)&&(mouseX< posX+tamano) && (mouseY >posY-tamano) && (mouseY<posY + tamano))//comparo coordenadas del mouse con las de cap. mouse sobre cap.
    {
      puntos+=1;//incrementan puntos
    }
    else
    {
      jugar=0;
      
      fill(255, 0 , 0);
      textAlign(RIGHT);
      textSize(30);
      text ("GAME OVER:" + puntos + "en" + millis()/1000 + "segs", 780, 30);//si jugar no se cumple.
      
      
      
      
      
      
      
      
    } 
}




}

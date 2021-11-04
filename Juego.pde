class Juego{
  
  // VARIABLES
   int estado = 0; 
   PFont Titulo, Cartel;
   int disparos; // contador de disparos que hacen contacto con el rey fantasma
   int vidas = 3;
   int c = 12;
   PImage [] imagen = new PImage [8];
  
   Reyfantasma rey;
   Petrone jugador;
   Fantasmita[] fantasmitas = new Fantasmita [c];
  
  Juego (){
   jugador = new Petrone();
   rey = new Reyfantasma();
  
   for ( int i = 0; i < c; i++ ) {
   fantasmitas[i] = new Fantasmita ();
  }
    for (int p = 0 ; p < 7 ; p++) {
  imagen [p] = loadImage ("foto" + p + ".png"); } 

   Titulo = loadFont ( "ShowcardGothic-Reg-48.vlw" );
   Cartel = loadFont ( "Arial-BoldMT-15.vlw");
 
 
  }    
  
  void jugar(){
   menu();
   empezar();
   ganaste();
   perdiste();
  } 
  
 
  // FUNCIONES 
 
  
  void menu(){ 
    if (estado ==0){
    textSize (width*0.13);
    imageMode (CENTER);    
    textFont ( Cartel );  
     image (imagen [0], width/2, height/2, width, height);
    image (imagen [1], width*0.15, height*0.80, width*0.32, height*0.40);
    fill(230, 230, 45 );
    beginShape ();
    noStroke ();
    fill (255);
    textSize (15);
    text ("Este lugar esta embrujado\n¡Debes ayudarme!\n\nEsquiva los fantasmas con\nlas teclas LEFT Y RIGHT y derriba\na su rey utilizando\nlas balas con la tecla UP.\n\nTen cuidado,si fallas me atraparan. ", width*0.38 , height*0.70);
    textFont ( Titulo );
    textSize (85);
    fill (0);
    text ( "Play", width*0.35, height/2 );
    
    if ( mousePressed && mouseX > (width*0.4) && mouseX < (width*0.67) && mouseY > (height*0.35) && mouseY < (height*0.55))estado= 1; 
    vidas = 3; disparos =0;    
}
  }
   void empezar(){      
    if (estado==1){
       
    image (imagen [2], width/2, height/2, width, height);
    jugador.dibujar();
    rey.dibujar();
    disparoFantasma(); 
    perderVidas();
    
    for ( int i = 0; i < c; i++ ) {  
    fantasmitas[i].dibujar();
    fantasmitas[i].actualizar();
  }
      
    fill(0);
    stroke (255);
    ellipse (width*0.66, 70, 85, 85);
    fill(0);
    stroke (255);
    ellipse (width*0.35, 70, 85, 85);   
    fill(255);
    textFont ( Cartel );
    text("Puntos", width*0.63, 70);
    text (disparos, width*0.65, 87);
    text("Vidas", width*0.33, 70);
    text(vidas, width*0.35,  87);  
    if (vidas == 0) estado=2;
    if (disparos == 30) estado =3; 
   }
  } 
  
   void perdiste(){
    if (estado == 2){ 
    image (imagen [3],width/2, height/2, width, height);
    fill ( 0 );
    textFont ( Titulo );
    textSize (80);
    text ( "GAME OVER", width/2-220, height*0.25 );
    fill ( 230, 230, 45 );
    text ( "GAME OVER", width/2-220, height*0.255 ); 
    if ( mousePressed && mouseX > (width*0.4) && mouseX < (width*0.67) && mouseY > (height*0.35) && mouseY < (height*0.55))estado= 1; 
    vidas = 3; disparos =0; 
   }
  }
    
   void ganaste(){
    if (estado == 3){
    image (imagen [4], width/2, height/2, width, height); 
    textFont ( Titulo );
    textSize (80);
    fill ( 50 );
    text ( "GANASTE", width/2-200, height*0.25 );
    fill ( 230, 230, 45 );
    text ( "GANASTE", width/2-200, height*0.255 );  
    if ( mousePressed && mouseX > (width*0.4) && mouseX < (width*0.67) && mouseY > (height*0.35) && mouseY < (height*0.55))estado= 1; 
    vidas = 3; disparos =0; 
   }  
  }
  
    //----- método para descontar vida cuando un fantasmita toca a petrone --//
   void perderVidas() {
    for (int i=0; i<c; i++) {
    float distan = dist(fantasmitas[i].mx, fantasmitas[i].my, jugador.x, jugador.y );
    if (distan < fantasmitas[i].mtam ) {
    fantasmitas[i].reciclar();
    fantasmitas[i].chocado();
    image (imagen [5], jugador.x, jugador.y, 300,300);
    vidas--; 
    fill(255);
    ellipse (width*0.35, 70, 100, 100);      
    }
   }
  }
  
   //----- método para detectar el contacto entre la bala y el rey fantasma --//
  void disparoFantasma() {
   for (int i=0; i<c; i++) {
   float distan = dist(jugador.bala.bx, jugador.bala.by, rey.posx, rey.posy );
   if (distan < rey.nt/2 ) {
   disparos = disparos + 10;
   image (imagen [6], rey.posx, rey.posy, 300,300);
   jugador.bala.actualizar(); // reinicia la bala
   fill(255);
   ellipse (width*0.66, 70, 100, 100);
    }
   }
  }    
    
   void teclas() {
    jugador.moverDer();
    jugador.moverIzq();
    jugador.bala.disparar();
    jugador.mover();
   }

 }

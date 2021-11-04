class Petrone{
//(JUGADOR)
 
  int x, y;
  int tam;
  PImage petrone;
  Bala bala;
  
  Petrone ( ) {
    x = width/2;
    y = 535 ;
    tam = 140;
   
    petrone = loadImage ("petrone.png");
    bala = new Bala();
  } 
   
  void dibujar(){   
    image(petrone, x, y, tam, tam);
    bala.dibujar (x,y-67);
    if (x>width) {
     x= -tam; 
   }
  }

    
  void mover( ) {
    //evito que pase borde izquierdo
    if( x > width-tam/4 ){  
    if ( keyCode == RIGHT )
    x =width-tam/4;
  }
    //evito que pase borde derecho
    if( x < tam/4 ){  
     if ( keyCode == LEFT )
     x =tam/4;
   }    
  } 
   
   // --mueve al personaje hacia la izquierda
   void moverIzq() {
   if ( keyCode == LEFT )
   x -= 15;
 }

  
  // --mueve al personaje hacia la derecha
   void moverDer() {
    if ( keyCode == RIGHT )
      x += 15;
  }
 }

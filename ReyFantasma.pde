class Reyfantasma{
  
  float posx, posy;
  float nt;
  PImage reyfan; 
  boolean sentido; 
  
 Reyfantasma() {
   posx = width/2;
   posy = height*0.30;
   nt = 90;
   reyfan = loadImage ("reyfantasma.png");
   }
   
  void dibujar (){
   image (reyfan, posx, posy, nt, nt);   
    if( posx > width-nt/2 ){
    sentido = false; //cuando toca el borde derecho
  }
  
  if( posx < nt/2 ){
    sentido = true; //cuando toca el borde izquierdo
  }
 
 //actualizar valores: ejecutar movimiento
  if( sentido ){
    posx= posx +6; //va hacia la derecha
  } 
    
   else {
    posx = posx -6; //va hacia la izquierda
   }
   }
 }

 

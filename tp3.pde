/*
TRABAJO PRACTICO N3: ILUSION OPTICA

ALUMNO : MORALES MIRKO 

COMISION 1

LINK A VIDEO: https://youtu.be/NdkkerztSB8
*/

float s=0;

void setup () {
  size (400, 400) ;
  ellipseMode (CENTER) ;
  noStroke () ;
  
}

void draw () {
  translate (width/2, height/2) ;

 rotate(map (mouseY, 0, width, 0, PI/2)) ;
  background(8,171,248);
  for (int i= 0; i<40 ; i++) {

   rotate(map(mouseX,0,width/3,PI/80,PI/10));
   rotate(PI/8);
    translate (map (mouseY,0,height,10,-10),0) ;
    if (i%2 == 0) fill(7,244,255);
    else fill (8,171,248);
    float radio = (width) -i*10.0 ;
   
    
   pushMatrix() ;
   rotate (s) ;
   ellipse (10,-10, radio, radio) ;
   popMatrix() ;
   s+=0.1;
  }
}

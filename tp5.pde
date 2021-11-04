//TECNO MULTIMEDIA 1
//ALUMNO: Morales Mirko LEGAJO: 88216/2
//https://youtu.be/pCuC0QD19kE
Juego juego;

void setup() {
  size( 800, 600 );
  juego = new Juego();
}

void draw() {
 juego.jugar();
}

void keyPressed() {
  juego.teclas();
  
}

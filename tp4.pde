//https://youtu.be/y65eUr1E6zU


PImage [] imagen = new PImage [50];
String [] texto = new String [20];
String estado;
PFont Titulo;
PFont Dialogo;
int posx;
int posy;
int tamanio;
int posX1, posY1, posX2, posX3, posX4, posX5, posX6, posY2, posY3, posY4, posY5, posY6;
int tamX1;
int tamY1;
float g,g1,g2,g3,g4,g5,h,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11 ;
void setup () {

g=30;
g1=45;
g2=50;
g3=100;
g4 =80 ;
g5=150 ;
h=200 ;
h1= 230 ;
h2=250 ;
h3=280;
h4=300 ;
h5=350 ;
h6=400 ;
h7=500;
h8=550 ;
h9=600 ;
h10= 800 ;
h11=900 ;

  size (800, 600);

  estado = "inicio";  
  
 texto [0] = "LA PUERTA";
 texto [1] = "CONDENADA";
 texto [2] = "Hola! Soy Petrone,\nacabo de llegar a la ciudad.\nEstoy hospedandome en este hotel\nque un conocido me lo recomendo,\n\n¿Me acompañas a conocerlo?";
 texto [3] = "¡Bienvenido! Soy Reynaldo\nel gerente de este hotel.\n¡Su habitacion esta lista!\nEs la Numero 2, en el piso superior.\n¡Puedes preguntarme lo que necesites!\n\nTe ves bastante cansado\n¿Porque no vas a descansar?";
 texto [4] = "Tengo el presentimiento de que\nalgo malo paso en este cuarto.\nNo afirmo tener miedo, pero algo me incomoda.\nO quizas solo es el estres del viaje\n\n¿Que deberia hacer?";
 texto [5] = "Investigar fuera";
 texto [6] = "Habitacion de al lado";
 texto [7] = "¡¡¡OH POR DIOS!!!!\n\n\n¿¿¿¿Has visto lo mismo que yo?????\n\nSabia que este lugar escondia algo.\nCon lo que he visto creo\nque me he hecho en los pantalones\n\n¿Crees que deberia marcharme\no continuar investigando?" ;
 texto [8] = "¡MALDITA SEA! \n\nAlgo en mi interior me decia que no continuara.\n\n¡ESTE LUGAR ESTA EMBRUJADO!\n\n¡Y ahora soy uno mas de ellos!";
 texto [9] = "¡Hasta la vista horripilante lugar!\nmejor me vuelvo a casa.\nSospecho que algo muy malo paso aqui." ;
 texto [10] = "Rayos, esta muy oscuro aqui.\n\n\n¡Deberiamos encender las luces! ";
 texto [11] = "¡AJA! No estaba enloqueciendo\nel llanto que escuche\nparece ser una grabacion\nque viene de esa antigua radio.\n\n¡APAGALO,ESTA MUY FUERTE!";
 texto [12] = "¡Carajo! Algo muy extraño paso,\nde repente desperte en esta habitacion\ncon esta arma y toda esta sangre.\n\n\n¿Que rayos paso?\nLo unico que recuerdo es que\nalguien en la radio repetia\n¡Libera tu mal!";
 texto [13] = "        CONTINUARA...\n\n\nAlumno Morales Mirko\n\nUNLP-Facultad de Artes\n\nInspirada en el cuento\n\nLA PUERTA CONDENADA\n\nde Julio Cortazar";
 texto [14] = "Buscar a Reynaldo";
  texto [15] = "Presiona en tu teclado el numero de habitacion\nque el gerente te indico.";
   texto [16] = "(A)Preguntar historia del hotel a Reynaldo\n\n(B)Volver a investigar la habitacion deal lado\n\n(C) Salir a tomar aire";
  imagen [0] = loadImage ( "foto0.png" );
  imageMode ( CENTER );
  
 for (int i = 0 ; i < 50 ; i++) {
 imagen [i] = loadImage ("foto" + i + ".png"); } 

  Titulo = loadFont ( "ShowcardGothic-Reg-48.vlw" );
  Dialogo = loadFont ( "NirmalaUI-Bold-48.vlw" );
  
  posx = 100;
  posy = 600; 
  tamanio = 30;


  posX1 = 450;
  posY1 = 0;
  posX2 = 500;
  posY2 = -400;
  posX3 = 550;
  posY3 = 300;
  posX4 = 900;
  posY4 = -200; 
  posX5 = 0;
  posY5 = 250;
  posY6 = -150 ;


  tamX1 = 250;
  tamY1 = 250;
 
}


void draw () {


  if ( estado.equals( "inicio" ) ) {
    image ( imagen [0], (width/2), (height/2), width, height );
   
    image ( imagen [5], (h9), ((height*50)/70), (h3), (h5) );
    image ( imagen [6], (width/2), ((height*11)/12), (h), (g2) );
    image ( imagen [39], (250), (350), 380, 200 );
    textFont ( Titulo );
    textSize ( (width*0.0875) );
    fill ( 255 );
    text ( texto [0], (width*0.300), (height*0.20) );
    fill ( 255);
    text ( texto [1], (width*0.3), (height*0.30) );
    fill ( 255 );
    
    textFont ( Dialogo );
    textSize ( (width*0.0220) );
    fill ( 0,0,0 );
    
    text ( texto [2], (100), (300), -h); 
   
    textSize ( (width*0.0250) );
     }
 
  else if ( estado.equals("Habitacion" ) ) {
  
    image ( imagen [7], width/2, height/2, width, height );

    posx += 6;
    posy -= 8;
    tamanio = tamanio + 3;

    image ( imagen [10], ((h9)), ((height*50)/70), h3, h5);
   image ( imagen [39], (250), (320), 480, 250 );
    textSize ( (width*0.0220) );
    text ( texto [3] , (70), (250) , -h);
    fill ( 0, 0, 0 );
   
  } 
  
  else if ( estado.equals("Escena1" ) ) {

    background ( 0 );
  
    image ( imagen [11], (width/2), (height/2), width, height );
    image ( imagen [12], (h9), ((height*50)/70), h3, h5 );
   
    image ( imagen [39], (220), (194), 530, 300 );
    fill ( 0,0,0);
    
    textFont ( Dialogo );
    textSize ( (width*0.0220) );
    text ( texto [4] , 40, 94);
    fill ( 0);
     text ( texto [16] , 40, 240);
  }


  else if ( estado.equals( "Investigar fuera" ) ) {

   image ( imagen [13], width/2, height/2, width, height );
    posX1 = posX1 - 3 ;
    posY1 = posY1 + 3 ;
  
    image ( imagen [19], (h9), (430), 280, h5 );
    textFont ( Dialogo );
   
  }


  else if ( estado.equals( "Escena2" ) ) {

    image ( imagen [20], (width/2), (height/2), width, height );
  
  }


  

  else if ( estado.equals("Escena3" ) ) {

    image ( imagen [23], width/2, height/2, width, height);
    image ( imagen [24], (150), ((height*50)/70), (h2), (h5) );
    
    textFont ( Dialogo );
    textSize ( (width*0.0250) );
    text ( texto [9], (100), (g3) );
    fill ( 230, 230, 45 );
    
  }


  else if ( estado.equals("Habitacion de al lado" ) ) {

    image ( imagen [26], width/2, height/2, width, height );
    image ( imagen [27], (h), ((height*50)/70), 280, 350 );
    
    image ( imagen [28], posX5, posY5, tamX1, tamY1 );
    posX5 = posX5 + 200;
    tamX1 -= -1;
    tamY1 -= 1;
    image ( imagen [9], (h6), (h6), (h), (g2) );
  } 



  else if ( estado.equals( "Escena5" ) ) {

    image ( imagen [31], width/2, height/2, width, height );
    image ( imagen [32], (150), ((height*50)/70), (h2), (h5) );
    
    
    textFont ( Dialogo );
    textSize ( (width*0.0250) );
    text ( texto [12], (300), (200) );
    fill ( 230, 230, 45 );  

}


  else if ( estado.equals("creditos") ) {

    image ( imagen [34], width/2, height/2, width, height );
    fill ( 255 );
    
    textSize ( width*0.0375 );
    text ( texto [13], (width/3.8), posY6 );
    posY6 += 1;
    image ( imagen [35], width/2, (height*5)/6, (200), (50) );
  }
  
  
   else if ( estado.equals("Charla") ) {

    image ( imagen [38], width/2, height/2, width, height );
    fill ( 255 );
    
    textSize ( width*0.0375 );
    text ( texto [5], (width/3.8), posY6 );
    posY6 += 1;
  
   }
   else if ( estado.equals("Pasillo") ) {

    image ( imagen [40], width/2, height/2, width, height );
    fill ( 0 );
    image ( imagen [39], (400), (500), 500, 200 );
    textFont ( Dialogo );
    textSize ( (width*0.0220) );
    text ( texto [15], (200), (500) );
    fill ( 0, 0, 0 );
   }
  

 else if ( estado.equals("Bruja") ) {

    image ( imagen [41], width/2, height/2, width, height );
    fill ( 0 );
   
   }
   else if ( estado.equals("Anciano") ) {

    image ( imagen [42], width/2, height/2, width, height );
    fill ( 0 );
   
   }

else if ( estado.equals("Anciano2") ) {

    image ( imagen [43], width/2, height/2, width, height );
    fill ( 0 );
    
}
else if ( estado.equals("Elevador") ) {

    image ( imagen [44], width/2, height/2, width, height );
    fill ( 0 );
}
else if ( estado.equals("Parque") ) {

    image ( imagen [45], width/2, height/2, width, height );
    fill ( 0 );
   
}
else if ( estado.equals("Habitacion bruja") ) {

    image ( imagen [47], width/2, height/2, width, height );
    fill ( 0 );
    image ( imagen [18], posX5, posY5, tamX1, tamY1 );
    posX5 = posX5 + 50;
    tamX1 -= 2.5;
    tamY1 -= 2;
}
else if ( estado.equals("Petrone y bruja") ) {

    image ( imagen [46], width/2, height/2, width, height );
    fill ( 0 );
   
}
else if ( estado.equals("Pelea") ) {

    image ( imagen [49], width/2, height/2, width, height );
    fill ( 0 );
   
}
else if ( estado.equals("Prision") ) {

    image ( imagen [46], width/2, height/2, width, height );
    fill ( 0 );
   
}
}

void keyPressed() {
 

  if ( key == ENTER && estado.equals("creditos")) {
  
    estado = "inicio";
  }
   if ( key == ' ' && estado.equals("Habitacion" ) ) {
    
    estado = "Pasillo"; posx = 100; posy = 600; tamanio = 30;
  }  


  if ( key == BACKSPACE && estado.equals( "Escena5" ) ) {posY6 = -150 ;
    
    estado = "creditos";
  }

 if ( key == BACKSPACE && estado.equals( "Escena3" ) ) {posY6 = -150 ;
    
    estado = "creditos";
 }
 
  if ( key == BACKSPACE && estado.equals( "Escena2" ) ) {posY6 = -150 ;
    
    estado = "creditos";
} 
  
 if ( key == 'q' && estado.equals( "Investigar fuera")) {
    
    estado = "Habitacion de al lado";
  }

  if ( key == 'w'&& estado.equals("Investigar fuera" ) ) {
    
    estado = "Escena3";
  }

  if ( key == BACKSPACE && estado.equals( "Charla" ) ) {posY6 = -150 ;
    
    estado = "creditos";
  }
 if ( key == 'a' && estado.equals( "Escena1")) {
    
    estado = "Anciano";
 }

 if ( key == 'b' && estado.equals( "Escena1")) {
    
    estado = "Habitacion bruja";
 }
  if ( key == 'c' && estado.equals( "Escena1")) {
    
    estado = "Parque";
 }

if ( key == '2' && estado.equals( "Pasillo")) {
    
    estado = "Escena1";
 }
 if ( key == '1' && estado.equals( "Pasillo")) {
    
    estado = "Bruja";
 }
 if ( key == BACKSPACE && estado.equals( "Bruja" ) ) {posY6 = -150 ;
    
    estado = "Pasillo";
  }
   if ( key ==  ' ' && estado.equals("Anciano")) {
  
    estado = "Anciano2";
  }

if ( key ==  ENTER && estado.equals("Anciano2")) {
  
    estado = "Elevador";
  }
  if ( key == '0'  && estado.equals("Elevador")) {
  
    estado = "Investigar fuera";
  }
  
  if ( key ==  'c' && estado.equals("Habitacion bruja")) {
  
    estado = "Pelea";
  }
   if ( key ==  'd' && estado.equals("Habitacion bruja")) {
  
    estado = "Escena3";
  }
   if ( key ==  ENTER && estado.equals("Pelea")) {
  
    estado = "Prision";
  }
   if ( key ==  'e' && estado.equals("Investigar fuera")) {
  
    estado = "Habitacion de al lado";
   }
   if ( key == BACKSPACE && estado.equals( "Escena2" ) ) {posY6 = -150 ;
    
    estado = "creditos";
   }
    if ( key == BACKSPACE && estado.equals( "Prision" ) ) {posY6 = -150 ;
    
    estado = "creditos";
   }
   if ( key ==  BACKSPACE && estado.equals("Habitacion bruja")) {
  
    estado = "creditos";
  }
   if ( key == BACKSPACE && estado.equals( "Parque")) {
    
    estado = "creditos";
   }
}


void mousePressed() {

  
  if ( estado.equals( "inicio" ) && mouseX > (width*0.3737) && mouseX < (width*0.625) && mouseY > (height*0.88) && mouseY < (height*0.9516) ) {
    
    estado = "Habitacion";
  }

  
  if ( estado.equals( "Habitacion de al lado" ) && mouseX > (width*0.63) && mouseX < width && mouseY > (height*0.0166) && mouseY < (height*0.9834) ) {
    
    estado = "Escena2"; posx = 100; posy = 600; tamanio = 30;
  }
  

   println (mouseX+"X"+","+mouseY+"Y");
  println (estado);
  
}

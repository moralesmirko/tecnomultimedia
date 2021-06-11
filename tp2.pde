PImage img ;
PImage img2 ;
PImage img3 ;
PImage img4 ;
String s1 = "THE" ;
String s2 = "P U R G U E : " ;
String s3 = " Anarchy † " ;
String s4= "Frank Grillo" ;
String s5= "Carmen Ejogo" ;
String s6 = "Zach Gilford" ;
String s7 = "Kiele Sanchez" ;
String s8 = "Zoë Soul" ;
String S9 = "Michael K. Williams" ;
String s10 = "Edwin Hodge" ;
String s11 = s6 + s7 ;
float y = 230.0;
float vel = 1.0;
float radio = 200.0;
int direccion = 2;
PFont font ;
int time1 = 2000 ;
int time2 = 7000 ;
int time3 = 5500 ;
int time4 = 7000 ;
int o, p ;
color colRGB;// 
float u = 300.0;

float x = 5 ;
void setup () {
  size (750, 422) ;
  background (0) ;
  img = loadImage ("FONDO.jpg");
  img2 = loadImage ("TPA.jpg");
  img3 = loadImage ("TPAXjpg.jpg") ;
  smooth() ;
  x = width/2;

  o=170;
  p=290;


  colRGB= color(0, 0, 0);
}


void draw () {
  image (img, 0, 0) ;



  {
    font = loadFont ("Stencil-48.vlw") ;
    text(s1, y, radio, radio);
    textFont (font) ;
    textSize(58) ;
    text(s2, y, 250, 620) ;
    text (s3, y, 320, 200) ;

    int currentTime =  millis() ;
    if (currentTime > time2) {

      x +=1.0;

      background (0) ;

      x=x-1;
      y=y-1;

      fill(colRGB);
      image (img2, 0, 0) ;
      textSize(35);
      text("Frank Grillo", 400, y+200, 0) ;
      text("Carmen Ejogo", 400, y+300, 0) ;
      text("Zach Gilford", 400, y+100, 0) ;
      text("Kiele Sanchez", 400, y+400, 0) ;
      text("Zoë Soul", 400, y+500, 0) ;
      text ("Michael Williams", 400, y+600, 0) ;
      text ("Edwin Hodge ", 400, y+700, 0) ;


      textSize(20) ;
      text ("Dirección", 400, y+800, 0) ;
      textSize(35) ;
      text ("James DeMonaco", 400, y+850, 0) ;
      textSize(20) ;
      text ("Producción", 400, y+900, 0) ;
      textSize(35) ;
      text ("Jason Blum", 400, y+950, 0) ;
      text ("Michael Bay", 400, y+1000, 0) ;
      text ("Andrew Form", 400, y+1050, 0) ;
      text ("Brad Fuller", 400, y+1100, 0) ;
      textSize(28) ;
      text ("Sébastien K.Lemercier", 400, y+1150, 0) ;
      textSize(20) ;
      text ("Guion", 400, y+1200, 0) ;
      textSize(35) ;
      text ("James DeMonaco", 400, y+1250, 0) ;
      textSize(20) ;
      text ("Música", 400, y+1350, 0) ;
      textSize(30) ;
      text ("Nathan Whitehead", 400, y+1400, 0) ;
      textSize(20) ;
      text ("Fotografia", 400, y+1500, 0) ;
      textSize(35) ;
      text ("Jacques Jouffret", 400, y+1550, 0) ;
      textSize(20) ;
      text ("Montaje", 400, y+1650, 0) ;
      textSize(35) ;
      text ("Todd E. Miller", 400, y+1700, 0) ;
      text ("Vince Filippone", 400, y+1750, 0) ;
      
      textSize(50) ;
       text (" - The End - ", 400, y+1900, 0) ;
      
      
     
















      img2 = loadImage ("TPA.jpg");
    } else if (currentTime > time1) {

      y += vel * direccion;
      if ((y > height-radio) || (y < radio)) {
        direccion = -direccion;
      }
    }
  }

  ;
}

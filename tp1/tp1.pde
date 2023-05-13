//Facundo Martinez Zuffi
//legajo 93489/0
//tp1 comision 1
int pantalla ;
int segundos;
boolean empieza;
boolean estandoSobre;
int px;
int py;
int ancho;
int alto;
int pos ;
int mov ;
int cam ;
PImage fondo1;
PImage fondo2;
PImage fondo3;
PFont fuente;




void setup() {
  size(640, 480);
  fuente=loadFont("Calibri-Bold-30.vlw");
  textSize(20);
  textAlign(CENTER);
  px= 540;
  py= 430;
  ancho =200;
  alto=50;
  pos=500 ;
  mov = 0;
  cam=500;
  fondo1 = loadImage ("fondo 1.jpg");
  fondo2 = loadImage ("fondo 2.jpg");
  fondo3 = loadImage ("fondo 3.jpg");
}
void draw() {
  background(0);

  empieza= true;


  if (empieza == true) {
    if (frameCount%60==0) {
      segundos ++;
    }
  }

  if (pantalla==0) {
    image(fondo1, 0, 0, 640, 480);
    textFont(fuente);
    text("Bienvenidos a Bariloche", width/2, mov);
    text("Una ciudad magica, llena de aventura", width/2, 350);
    if (mov < width/2) {
      mov ++;
    }
  }


  if (pantalla==1) {
    image(fondo2, 0, 0, 640, 480);
    text("Donde encontraras el mejor cerro para esquiar", pos, 100);
    text("Y las mejores vistas", pos, pos);
    if (pos>width/2) {
      pos --;
    }
  }

  if (pantalla==2) {
    image(fondo3, 0, 0, 640, 480);

    text("Venite a Bariloche", width/2, cam);
    if (cam > width/4) {
      cam--;
    }
  }






  if (segundos<=6) {
    pantalla = 0;
  } else if (segundos>6 && segundos<= 12) {
    pantalla = 1;
  } else {
    pantalla = 2;

    fill (255, 0, 0);


    rect(px, py, ancho, alto);
    fill (255);
  }
}


void mousePressed () {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    segundos = 0;
    mov = 0;
    pos=500 ;
    cam=500;

    fill (255);
  }
}

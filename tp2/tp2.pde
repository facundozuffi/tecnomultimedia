//Facundo Martinez Zuffi, legajo 93489/0
//tp2 comision 1
// https://www.youtube.com/watch?v=TW5WUEs-cPI

int cant;
int tam;
int des;
PImage foto;
color colo;
color x;
float mas;

void setup() {
  size (800, 400);
  background(0);
  cant=5;
  mas=1.0;
  foto =loadImage ("arte.jpg");
  image (foto, 0, 0, 400, 400);
  tam=400/cant;
  des=40;
  colo=color(255);
  x= color(255);
}
void draw() {
  circulos(cant,tam,colo,x,mas);
}


void circulos(int can, int tam, color colo, color co, float mas) {
  for (int i=0; i<can; i++) {
    for (int j=0; j<=can; j++) {
      for (int e=0; e<10; e++) {
        float ancho=map(e, 2, 8, tam, 2);
        fill(colo);
        ellipse((845-(can*tam))+i*tam, j*tam+tam/2-40, ancho, ancho);
      }
    }
  }
  for (int i=0; i<can; i++) {
    for (int j=0; j<can; j++) {
      for (int e=0; e<10; e++) {
        float ancho=map(e, 0, 8, tam, 2);
        fill(co);
        ellipse((880-(can*tam))+i*tam, j*tam+tam/2, ancho*mas, ancho*mas);
      }
    }
  }
}

void mousePressed() {
  colo=color(random(255), random(255), random(255), random(255));
}
void keyPressed() {
  if (key == ' ') {
    x=color(random(255), random(255), random(255), random(255));
      mas+= 0.1;
  }
  if (key == 'r') {
    colo = color(255);
    x= color(255);
    mas= 1.0;
    background(0);
    image (foto, 0, 0, 400, 400);
  }
}

//facundo Martinez Zuffi 93489/0 
// tp2



PImage[] imagenes;
int indiceimagenactual = 0;
int tiempoinicio;
int texto2posx = 0;

void setup() {
  size(800, 600);
  imagenes = new PImage[3];
  imagenes[0] = loadImage("imagen1.jpg");
  imagenes[1] = loadImage("imagen2.jpg");
  imagenes[2] = loadImage("imagen3.jpg");
  
  tiempoinicio = millis();
}

void draw() {
  background(255);
  int tiempotranscurrido = millis() - tiempoinicio;
  
  if (tiempotranscurrido < 4000) {
    image(imagenes[indiceimagenactual], 0, 0, width, height);
    
    if (indiceimagenactual == 0) {
      fill(255, 0, 0);
      textSize(32);
      textAlign(CENTER, CENTER);
      text("Fifa 23 un juego increible", width/2, height/2);
    } else if (indiceimagenactual == 1) {
      fill(0, 0, 255);
      textSize(32);
      textAlign(CENTER, CENTER);
      text("Con nuevos diseños", texto2posx, height/2);
      
      texto2posx++;
      
      if (texto2posx > width) {
        texto2posx = 0;
      }
    } else {
      fill(0, 255, 0);
      textSize(32);
      textAlign(CENTER, CENTER);
      text("Ylos nuevos equipos femeninos", width/2, height/2);
    }
    
    if (indiceimagenactual == 2) {
      fill(0);
      rect(350, 500, 100, 50);
      fill(255);
      textSize(16);
      textAlign(CENTER, CENTER);
      text("reiniciar", 400, 525);
    }
  } else {
    indiceimagenactual++;
    tiempoinicio = millis();
    if (indiceimagenactual >= 3) {
      indiceimagenactual = 0;
    }
  }
}

void mouseclicked() {
  if (indiceimagenactual == 2 && mouseX >= 350 && mouseX <= 450 && mouseY >= 500 && mouseY <= 550) {
    indiceimagenactual = 0;
    tiempoinicio = millis();
  }
}

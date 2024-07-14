//facundo Martinez Zuffi 93489/0 
// tp2



PImage imagen1;
PImage imagen2;
PImage imagen3;

void setup() {
  size(800, 600);
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
}

void draw() {
  background(255);
  int tiempoTranscurrido = (frameCount * 1000 / 60) % 12000; 
  int tiempoImagen = tiempoTranscurrido % 4000;

  if (tiempoTranscurrido < 4000) {
    image(imagen1, 0, 0, width, height);
    fill(255, 0, 0);
    textSize(32);
    textAlign(CENTER, CENTER);
    float posX = min(tiempoImagen * width / 4000, width / 2); 
    float posY = min(tiempoImagen * height / 4000, height / 2); 
    text("Fifa 23 un juego increible", posX, posY);
  } else if (tiempoTranscurrido < 8000) {
    image(imagen2, 0, 0, width, height);
    fill(0, 0, 255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Con nuevos diseños", tiempoImagen * width / 4000, height/2);
  } else {
    image(imagen3, 0, 0, width, height);
    fill(0, 255, 0);
    textSize(32);
    textAlign(CENTER, CENTER);
    float posY = min(tiempoImagen * height / 4000, height / 2); 
    text("Y los nuevos equipos femeninos", width/2, posY);
  }

  if (tiempoTranscurrido >= 8000) {
    fill(0);
    rect(350, 500, 100, 50);
    fill(255);
    textSize(16);
    textAlign(CENTER, CENTER);
    text("reiniciar", 400, 525);
  }
}

void mouseClicked() {
  int tiempoTranscurrido = (frameCount * 1000 / 60) % 12000;
  if (tiempoTranscurrido >= 8000 && mouseX >= 350 && mouseX <= 450 && mouseY >= 500 && mouseY <= 550) {
    frameCount = 0; 
  }
}

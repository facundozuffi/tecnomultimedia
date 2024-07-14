PImage img;
float tamañoRectanguloInicial = 50;  // Tamaño inicial del rectángulo
float tamañoRectangulo = tamañoRectanguloInicial;  // Variable para el tamaño actual del rectángulo

void setup() {
  size(800, 400);
  img = loadImage("imagen1a.jpg");
  rectangulo(width - 200, height/2);  // Llama a rectangulo() con coordenadas ajustadas para la derecha
}

void draw() {
  image(img, 0, 0, width/2, height);
}

void rectangulo(float centerX, float centerY) {
  translate(centerX, centerY);
  for (int i = 0; i < 7; i++) {
    float size = tamañoRectangulo * (7 - i);  // Calcula el tamaño basado en tamañoRectangulo
    rect(-size/2, -size/2, size, size);
  }
}

void mouseClicked() {
  rectangulo(width - 200, height/2); 
  color c = color(random(255), random(255), random(255));  // Genera un color aleatorio
  fill(c);  // Vuelve a dibujar los rectángulos al hacer clic
}

void keyPressed() {
  if (key == 'a') {
    tamañoRectangulo += 10;  // Incrementa el tamaño del rectángulo
    rectangulo(width - 200, height/2);  // Vuelve a dibujar los rectángulos con el nuevo tamaño
  } else if (key == 's') {
    tamañoRectangulo -= 10;  // Disminuye el tamaño del rectángulo
    if (tamañoRectangulo < 10) {
      tamañoRectangulo = 10;  // Limita el tamaño mínimo del rectángulo
    }
    rectangulo(width - 200, height/2);  // Vuelve a dibujar los rectángulos con el nuevo tamaño
  } else if (key == 'r') {
    fill(255);
    tamañoRectangulo = tamañoRectanguloInicial;  // Restaura el tamaño inicial del rectángulo
    rectangulo(width - 200, height/2);  // Vuelve a dibujar los rectángulos con el tamaño inicial
  }
}

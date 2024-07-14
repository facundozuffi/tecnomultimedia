//facundo martinez zuffi comision 2 legajo 93489/0
//https://youtu.be/bLpQrit525I





PImage img;
float tamañoRectanguloInicial = 50; 
float tamañoRectangulo = tamañoRectanguloInicial;  

void setup() {
  size(800, 400);
  img = loadImage("imagen1a.jpg");
  rectangulo(width - 200, height/2);  
}

void draw() {
  image(img, 0, 0, width/2, height);
}

void rectangulo(float centerX, float centerY) {
  translate(centerX, centerY);
  for (int i = 0; i < 7; i++) {
    float size = tamañoRectangulo * (7 - i);  
    rect(-size/2, -size/2, size, size);
  }
}

void mouseClicked() {
  rectangulo(width - 200, height/2); 
  color c = color(random(255), random(255), random(255));  
  fill(c);  
}

void keyPressed() {
  if (key == 'a') {
    tamañoRectangulo += 10;  
    rectangulo(width - 200, height/2);  
  } else if (key == 's') {
    tamañoRectangulo -= 10;  
    if (tamañoRectangulo < 10) {
      tamañoRectangulo = 10;  
    }
    rectangulo(width - 200, height/2);  
  } else if (key == 'r') {
    fill(255);
    tamañoRectangulo = tamañoRectanguloInicial;  
    rectangulo(width - 200, height/2);  
  }
}

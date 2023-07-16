//facundo zuffi 93489/0
//
boolean oto = false;
boolean Apretar = true;  

int cant = 15;
PImage[] pantalla = new PImage[cant];
int pantallaActual = 0;
PImage portada;

void setup() {
  
  size(600, 600);  
  portada = loadImage("portada.jpg");
  for (int i = 0; i < cant; i++) {
    pantalla[i] = loadImage("pantalla" + i + ".jpg");
  }
 pantallaActual = 0;  
}


void draw() {
   image(portada, 0, 0, width, height);




  if (Apretar) {
    if (pantallaActual == 0) {
      fill(0);
      image(pantalla[0], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 1) {
      fill(0);
      image(pantalla[1], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 2) {
      fill(0);
      image(pantalla[2], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 3) {
      fill(0);
      image(pantalla[3], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 4) {
      fill(0);
      image(pantalla[4], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 5) {
      fill(0);
      image(pantalla[5], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 6) {
      fill(0);
      image(pantalla[6], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 7) {
      fill(0);
      image(pantalla[7], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 8) {
      fill(0);
      image(pantalla[8], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 9) {
      fill(0);
      image(pantalla[9], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 10) {
      fill(0);
      image(pantalla[10], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 11) {
      fill(0);
      image(pantalla[11], 0, 0, width, height);
      boton(100, 400, 100, 50);
    } else if (pantallaActual == 12) {
      fill(0);
      image(pantalla[12], 0, 0, width, height);
      boton(100, 400, 100, 50);
      boton(400, 400, 100, 50);
    } else if (pantallaActual == 13) {
      fill(0);
      image(pantalla[13], 0, 0, width, height);
      botonCargarPantalla12(100, 400, 150, 50);
    } else if (pantallaActual == 14) {
      fill(0);
      image(pantalla[14], 0, 0, width, height);
      boton(100, 400, 100, 50);
    }
  } else {
    background(200);
    boton(100, 400, 100, 50);
  }
}

void boton(float x, float y, float width, float height) {
  boolean Sobre = mouseX >= x - width/2 && mouseX <= x + width/2 &&
                              mouseY >= y - height/2 && mouseY <= y + height/2;

  if (Sobre && mousePressed && !oto) {
    oto = true;
    if (pantallaActual >= 0 && pantallaActual <= 14) {
      if (pantallaActual == 12 && x == 100) {
        pantallaActual = 13;
      } else if (pantallaActual == 12 && x == 400) {
        pantallaActual = 14;
      } else {
        pantallaActual++;
      }
    }
  } else if (!mousePressed) {
    oto = false;
  }

  if (oto && !Apretar) {
    Apretar = true;
  }

  rectMode(CENTER);
  if (Sobre) {
    fill(200);
  } else {
    fill(255);
  }
  rect(x, y, width, height);

  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Botón", x, y);
}

void botonCargarPantalla12(float x, float y, float width, float height) {
  boolean Sobre = mouseX >= x - width/2 && mouseX <= x + width/2 &&
                              mouseY >= y - height/2 && mouseY <= y + height/2;

  if (Sobre && mousePressed && !oto) {
    oto = true;
    if (pantallaActual == 13) {
      pantallaActual = 12;
    }
  } else if (!mousePressed) {
    oto = false;
  }

  if (oto && !Apretar) {
    oto = true;
  }

  rectMode(CENTER);
  if (Sobre) {
    fill(200);
  } else {
    fill(255);
  }
  rect(x, y, width, height);

  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Volver", x, y);
}

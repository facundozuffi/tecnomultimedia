//Facundo Martinez Zuffi 93489/0 
//tprec del tp3 comision 1
//https://youtu.be/VX3bD1gDtHg





boolean botonPresionado = false;
boolean botonClickeado = true;
boolean inicio = false;
int cant = 15;
PImage[] pantalla = new PImage[cant];
int pantallaActual = 0;
String[] texto = {"El lago","En septiembre, en la costa del lago Michigan.\n Compartí un momento tranquilo con mi madre .","Tras el verano, cerraron puestos de comida y se borró la actividad playera.\n Septiembre tranquilo, solo en la playa antes de partir en tren. \nAnsias de correr, nuevo capítulo comenzaba.","Corrí en la playa, arena bajo mis pies, viento en mi cara.\n Mamá atrás, donde me siento sola de nuevo.\n Es raro que un niño de doce, estar solo.\nPero ahi es donde se abre una puerta a imaginación valores únicos.","En agua fría, parte de mí se disuelve como azúcar. \nVi ilusión de hombre serrado por mitad en agua.\nLlamé a Tally, recuerdo mayo, risas, partida.\n Accidente, quietud, salvavidas, madre gritando, en mente.","El Salvavidas falla en rescatar a Tally.\n Su desaparición deja vacío en la escuela y juegos verano.\n En solitario otoño, grito su nombre al cielo y agua.\nEra mi amor infantil, recuerdos de playa y escuela.\n Llamado desesperado al viento y agua. \nPérdida confunde al agua.","Busco algun recuerdo de Tally,\n medio castillo arena era el simbolo de nuestra amistad.\nEsperaba su parte. Olas destruyen castillo.\n Parto en tren, donde siento melancolía de Tally en corazón.","El Tren atraviesa campos trigo, dejando recuerdos. Vida evoluciona, crezco, estudio Derecho. Años pasan, amor y compromiso con Margaret.\n Luna miel al Este con ella.","El Tren evoca pasado en Lake Bluff. Margaret estaba hermosa.\n Paseamos,y vemos los cambios en la gente. \n Los recuerdos en rostros, silencio y nostalgia. Dos semanas felices explorando.\n Pregunta: mis sentimientos por Margaret.","Últimos días en la costa con Margaret. \nCaminando veo una salvavidas que me llama y ante el temor de esa situacion \ndejo a mi esposa sola y voy alli.","Me aproximé al Salvavidas que preguntandole que era eso abrió saco, \ndonde vi el cuerpo de una niña. En la playa vacía el asombro y tristeza, de ver ese cuerpo claramente reconosible\n el salvavidas cerró saco.","Caminando por la playa luego de esa gran declaracion de la vida\n pude ver el castillo que Tally y yo construiamos de niños","Arrodillado junto al castillo de arena,\n vi las huellas que iban del lago y nunca volvían.\n La revelación me golpeó Te ayudaré a terminarlo, prometí."," Acomplejado por las desiciones que tome en mi pasado,\n decidi dejar todo atras y sumerguirme en aquellas olas,\n queria acompañara y estar junto a ella.\n Aunque deje todo atras creo que va a valer la pena."," Termine de construir ese castillo y dejando mi pasado atras\n me fui de ahi, y llegaria hacia el principio de la playa\n donde una mujer la cual no conocia\n me esperaba con una sonrisa."};
PImage portada;
void setup() {
  size(600, 600);
  for (int i = 0; i < cant; i++) {
    pantalla[i] = loadImage("pantalla" + i + ".jpg");
  }
  portada = loadImage("portada.jpg");
  pantallaActual = 0;
  botonClickeado = false;
}
void draw() {
  background(0);
  if (!inicio) {
    image(portada, 0, 0, width, height);
    boton(300, 400, 100, 50, "Comenzar");
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text(texto[0], width/2, height/2);
  } else {
    if (pantallaActual >= 0 && pantallaActual <= 14) {
      if (pantallaActual == 0) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[1], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 1) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[2], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 2) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 3) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 4) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 5) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 6) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 7) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 8) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 9) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 10) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 11) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Siguiente");
      } else if (pantallaActual == 12) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
        boton(100, 400, 100, 50, "Seguir");
        boton(500, 400, 100, 50, "Ignorar");
      } else if (pantallaActual == 13) {
        image(pantalla[pantallaActual], 0, 0, width, height);
         boton2(100, 400, 100, 50, "Volver");
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
      } else if (pantallaActual == 14) {
        image(pantalla[pantallaActual], 0, 0, width, height);
        boton2(100, 400, 100, 50, "Volver");
        fill(255);
         textSize(18);
        text(texto[pantallaActual], width/2, 50);
      }
    }
  }
}
void boton(float x, float y, float ancho, float alto, String etiqueta) {
  boolean estaSobreBoton = mouseX >= x - ancho/2 && mouseX <= x + ancho/2 &&
                           mouseY >= y - alto/2 && mouseY <= y + alto/2;

  if (estaSobreBoton && mousePressed && !botonPresionado) {
    botonPresionado = true;
    if (!inicio) {  
      inicio = true;
    }  else if (pantallaActual == 12 && x == 100) {
      pantallaActual = 13;
    } else if (pantallaActual == 12 && x == 500) {
      pantallaActual = 14;
    } else {
      pantallaActual++;
    }
  } else if (!mousePressed) {
    botonPresionado = false;
  }

  rectMode(CENTER);
  if (estaSobreBoton) {
    fill(200);
  } else {
    fill(255);
  }
  
  rect(x, y, ancho, alto);

  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(etiqueta, x, y);
}
void boton2(float x, float y, float ancho, float alto, String etiqueta) {
  boolean estaSobreBoton = mouseX >= x - ancho/2 && mouseX <= x + ancho/2 &&
                           mouseY >= y - alto/2 && mouseY <= y + alto/2;

  if (estaSobreBoton && mousePressed && !botonPresionado) {
    botonPresionado = true;
    pantallaActual = 0;
  } else if (!mousePressed) {
    botonPresionado = false;
  }

  rectMode(CENTER);
  if (estaSobreBoton) {
    fill(200);
  } else {
    fill(255);
  }
  
  rect(x, y, ancho, alto);

  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(etiqueta, x, y);
}

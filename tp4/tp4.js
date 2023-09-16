// Facundo Zuffi 93489/0 comision 1
// https://www.youtube.com/watch?v=J5m_xaCjD1U

let cannonX;
let missiles = [];
let enemyShips = [];
let puntaje = 0;
let navesEscapadas = 0;
let gameOver = false;
let botonReiniciar;
let estadoJuego = "portada";
let vidas = 3;
let juegoIniciado = false;
let botonComenzar;
let reglas;
let puntuacionTexto = "Puntuación: 0";
let textoGanaste = "";
let textoPerdiste = "";

function setup() {
  createCanvas(400, 400);
  cannonX = width / 2;

  botonReiniciar = createButton("Reiniciar Juego");
  botonReiniciar.size(200, 50); // Ajusta el tamaño del botón
  botonReiniciar.position(width / 2 - 100, height / 2 + 20);
  botonReiniciar.mousePressed(reiniciarJuego);
  botonReiniciar.hide();
  botonReiniciar.style("background-color: red; color: white; font-size: 18px;");

  botonComenzar = createButton("Comenzar Juego");
  botonComenzar.size(200, 50); // Ajusta el tamaño del botón
  botonComenzar.position(width / 2 - 100, height / 2 + 20);
  botonComenzar.mousePressed(iniciarJuego);
  botonComenzar.style("background-color: red; color: white; font-size: 18px;");

  reglas = createP("Reglas:<br>Gana al alcanzar 20 puntos.<br>Pierde si 3 naves enemigas llegan a la tierra o te quedas sin vidas.");
  reglas.position(10, height - 60);
  reglas.style("color: white; font-size: 14px;");
}

function draw() {
  background(0);

  if (estadoJuego === "portada") {
    textSize(32);
    fill(255);
    text("Missile Command", 80, height / 2 - 20);

    if (juegoIniciado) {
      botonComenzar.remove();
    }
  } else if (estadoJuego === "juego") {
    fill(139, 69, 19);
    rect(0, height - 20, width, 20);

    fill(255);
    rect(cannonX - 10, height - 30, 20, 10);

    fill(0, 255, 0);
    for (let i = 0; i < vidas; i++) {
      rect(10 + i * 20, 10, 20, 20);
    }

    if (!gameOver) {
      for (let i = enemyShips.length - 1; i >= 0; i--) {
        let naveEnemiga = enemyShips[i];
        naveEnemiga.y += 1;
        fill(255, 0, 0);
        rect(naveEnemiga.x, naveEnemiga.y, 20, 10);

        if (naveEnemiga.y >= height - 20) {
          enemyShips.splice(i, 1);
          navesEscapadas++;
          vidas--;
        }
      }

      cannonX = constrain(mouseX, 10, width - 10);

      for (let i = missiles.length - 1; i >= 0; i--) {
        let misil = missiles[i];
        misil.y -= 2;
        fill(255);
        ellipse(misil.x, misil.y, 5, 5);

        for (let j = enemyShips.length - 1; j >= 0; j--) {
          let naveEnemiga = enemyShips[j];
          let d = dist(misil.x, misil.y, naveEnemiga.x + 10, naveEnemiga.y + 5);
          if (d < 10) {
            missiles.splice(i, 1);
            enemyShips.splice(j, 1);
            puntaje++;
            puntuacionTexto = "Puntuación: " + puntaje;
          }
        }

        if (misil.y < 0) {
          missiles.splice(i, 1);
        }
      }

      if (frameCount % 120 == 0) {
        crearNavesEnemigas();
      }

      if (puntaje >= 20) {
        gameOver = true;
        fill(0, 255, 0);
        textSize(32);
        textoGanaste = "Ganaste!";
        botonReiniciar.show();
      } else if (navesEscapadas >= 3 || vidas <= 0) {
        gameOver = true;
        fill(255, 0, 0);
        textSize(32);
        textoPerdiste = "Perdiste!";
        botonReiniciar.show();
      }
    }
  }

  textSize(16);
  fill(255);
  text(puntuacionTexto, width - 140, 20);

  textSize(32);
  fill(255);
  text(textoGanaste, 150, height / 2);
  text(textoPerdiste, 150, height / 2);
}

function reiniciarJuego() {
  vidas = 3;
  puntaje = 0;
  navesEscapadas = 0;
  gameOver = false;
  enemyShips = [];
  missiles = [];
  cannonX = width / 2;
  botonReiniciar.hide();
  puntuacionTexto = "Puntuación: 0";
  textoGanaste = "";
  textoPerdiste = "";
}

function iniciarJuego() {
  estadoJuego = "juego";
  juegoIniciado = true;
  reglas.hide();

  let elementos = selectAll('.p5Button');
  for (let i = 0; i < elementos.length; i++) {
    elementos[i].remove();
  }

  botonComenzar.attribute('disabled', 'true');
  botonComenzar.hide();
}

function crearNavesEnemigas() {
  for (let i = 0; i < 5; i++) {
    let x = random(width - 20);
    let y = 0;
    enemyShips.push({ x: x, y: y });
  }
}

function mouseClicked() {
  if (estadoJuego === "juego" && missiles.length < 30) {
    missiles.push({ x: cannonX, y: height - 30 });
  }
}

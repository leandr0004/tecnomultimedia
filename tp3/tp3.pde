// link del video:https://youtu.be/2Z2g-WdAApQ
int cant = 13;
PImage[] libro = new PImage[cant];
String[] textos = {
  "EL contribuyente",
  "este hombre queria ir a marte\n y los hombres uniformados no lo dejan ir \n y el estaba asustado \n porque decia que iba a ver una guerra",
  "ellos no le creen al hombre \n y el hombre se desespera más ",
  "el piensa que hay vida en marte \n ",
  "ven al hombre entre los árboles desesperado\n y lo ignoran ",
  "se están por subir al cohete \n ",
  "el hombre sube a un patrullero\n y gritando, al final no fue \n porque lo ven como loco",
  "los hombres uniformados \n llevan al hombre a marte para confirmar si hay vida allí ",
  "llegan a marte",
  "el hombre encuentra vida en marte ",
  "y se queda a vivir allí y hace un super casa",
  "y el hombre no encuentra vida allí \n y se desmaya",
  "lo suben al cohete \n pero el cohete le empieza a agarrar problemas \n y se estrellan en el suelo y \n se tienen que quedar a vivir en marte para siempre",
};
int num = 0;
int botonWidth = 100;
int botonHeight = 40;
int creditosbotonX;
int creditosbotonY;
int backBotonX;
int backBotonY;
boolean credito = false;

void setup() {
  size(600, 600);
  for (int i = 0; i < cant; i++) {
    libro[i] = loadImage("contribuyente" + i + ".jpg");
  }
}

void draw() {
  background(220);

  if (credito) {
    // Mostrar pantalla de créditos
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(30);
    text("Echo por:leandro vazquez \n legajo:92834/3\n autor:Ray bradbury", width / 2, height / 3);

    // Dibujar botón de regresar
    backBotonX = width / 2 - botonWidth / 2;
    backBotonY = height / 2 + botonHeight;
    drawBoton("Atrás", backBotonX, backBotonY, color(200));
  } else {
    // Mostrar imagen actual
    image(libro[num], 0, 0, width, height);

    // Dibujar botón Siguiente (excepto en la imagen 7 y 11)
    if (num != 6 && num != 10) {
      drawBoton("Siguiente", width / 2 + botonWidth, height / 2 - botonHeight / 2, color(200));
    }

    if (num == 0) {
      // Mostrar botón de créditos solo en la página 1
      creditosbotonX = width - botonWidth - 20;
      creditosbotonY = 20;
      drawBoton("creditos", creditosbotonX, creditosbotonY, color(200));
    }

    if (num == 3) {
      // Mostrar botón Ir a 8 solo en la imagen 4
      drawBoton("Ir a 8", width / 2 - botonWidth * 2, height / 2 - botonHeight / 2, color(200));
    }

    if (num == 6) {
      // Mostrar botón Ir a 4 solo en la imagen 7
      drawBoton("Ir a 4", width / 2 - botonWidth * 2, height / 2 - botonHeight / 2, color(200));
    }

    if (num == 8) {
      // Mostrar botón Ir a 12 solo en la imagen 9
      drawBoton("Ir a 12", width / 2 + botonWidth * 2, height / 2 - botonHeight / 2, color(200));
    }
    
    if (num == 10) {
      // Mostrar botón Ir a 9 solo en la imagen 11
      drawBoton("Ir a 9", width / 2 - botonWidth * 2, height / 2 - botonHeight / 2, color(200));
    }

    // Agregar rectángulo alrededor del texto
    fill(255, 200);
    rect(50, height - 150, width - 100, 120, 8);

    // Agregar texto de la imagen actual
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(20);
    text(textos[num], width / 2, height - 90);
  }
}

void drawBoton(String label, int x, int y, color Color) {
  stroke(0);
  fill(Color);
  rect(x, y, botonWidth, botonHeight, 8);

  // Agregar texto al botón
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(16);
  text(label, x + botonWidth / 2, y + botonHeight / 2);
}

void mousePressed() {
  // Verificar si se hizo clic en el botón Siguiente (excepto en la imagen 7 y 11)
  if (num != 6 && num != 10 && mouseX > width / 2 + botonWidth && mouseX < width / 2 + botonWidth + botonWidth && mouseY > height / 2 - botonHeight / 2 && mouseY < height / 2 - botonHeight / 2 + botonHeight) {
    num = (num + 1) % cant;  // Cambiar a la siguiente imagen
  }

  // Verificar si se hizo clic en el botón Créditos (solo en la página 1)
  if (num == 0 && mouseX > creditosbotonX && mouseX < creditosbotonX + botonWidth && mouseY > creditosbotonY && mouseY < creditosbotonY + botonHeight) {
    credito = true;  // Mostrar pantalla de créditos
  }

  // Verificar si se hizo clic en el botón Ir a 8 (en la imagen 4)
  if (num == 3 && mouseX > width / 2 - botonWidth * 2 && mouseX < width / 2 - botonWidth * 2 + botonWidth && mouseY > height / 2 - botonHeight / 2 && mouseY < height / 2 - botonHeight / 2 + botonHeight) {
    num = 7;  // Cambiar a la imagen 8
  }

  // Verificar si se hizo clic en el botón Ir a 4 (en la imagen 7)
  if (num == 6 && mouseX > width / 2 - botonWidth * 2 && mouseX < width / 2 - botonWidth * 2 + botonWidth && mouseY > height / 2 - botonHeight / 2 && mouseY < height / 2 - botonHeight / 2 + botonHeight) {
    num = 3;  // Cambiar a la imagen 4
  }

  // Verificar si se hizo clic en el botón Ir a 12 (en la imagen 9)
  if (num == 8 && mouseX > width / 2 + botonWidth * 2 && mouseX < width / 2 + botonWidth * 2 + botonWidth && mouseY > height / 2 - botonHeight / 2 && mouseY < height / 2 - botonHeight / 2 + botonHeight) {
    num = 11;  // Cambiar a la imagen 12
  }
  
  // Verificar si se hizo clic en el botón Ir a 9 (en la imagen 11)
  if (num == 10 && mouseX > width / 2 - botonWidth * 2 && mouseX < width / 2 - botonWidth * 2 + botonWidth && mouseY > height / 2 - botonHeight / 2 && mouseY < height / 2 - botonHeight / 2 + botonHeight) {
    num = 8;  // Cambiar a la imagen 9
  }

  // Verificar si se hizo clic en el botón Atrás (en la pantalla de créditos)
  if (credito && mouseX > backBotonX && mouseX < backBotonX + botonWidth && mouseY > backBotonY && mouseY < backBotonY + botonHeight) {
    credito = false;  // Regresar a la visualización de imágenes
  }
}

                     

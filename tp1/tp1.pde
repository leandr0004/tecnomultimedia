//Leandro vazquez lejago:92834/3
int pantalla = 0;
int cuenta;
int pos;
PImage ciudad1, ciudad2, ciudad3;
float x = 600;
float y = 200;
float speed = 3;
int tama = 255;


void setup() {
  size(640, 480);
  cuenta = 0;
  textSize(25);
  textAlign(CENTER);
  pos= 480;
  ciudad1= loadImage("rosario-ciudad-01.jpg");
  ciudad2= loadImage("Puente-Rosario-Santa-Fe.jpg");
  ciudad3= loadImage("santa-fe-rosario-monumento.jpg");
}
void draw() {
  
    cuenta ++;
    if (pantalla == 1) {
      image(ciudad1, 0, 0, width, height);
      textSize(25);
      fill(255);
      text(" Rosario una ciudad hermosa, ubicada en la provincia de Santa Fe, y ademas tierra de messi",20,x,width, height);
      x -= speed;
      speed %= 2;
    }
    if (pantalla == 2) {
      image(ciudad2, 0, 0, width, height);
      textAlign(CORNER);
      fill(10,232,7 );
      textSize(20);
      text("Tiene lugar iconicos para pasear, tanto de dia, como de noche, alli, se ecuentra el monumento a la bandera", 20,x, width, height);
      x += 1;
    }
    if (pantalla == 3) {
      image(ciudad3, 0, 0, width, height);
      rect(240, tama, 120, 30);
      fill(tama);
      textSize(tama);
      text("Reiniciar", 300, 50);
      textAlign(CENTER);
      fill(255, 100, 10);

      textSize(tama);
      tama --;
      if (tama <= 25) {
        tama = 25;
      } else {
        tama --;
      }

      text("Es un lugar muy recomedable para pasear\n dsifrutar de unas lindas vacaciones ", width/2, 200);
    } else {
      textAlign(CENTER);

      if (cuenta < 540) {
        pantalla = 1;
      } else if ((cuenta >= 600) && cuenta < 1100) {
        pantalla = 2;
      }
     if ((cuenta >= 1000) && cuenta < 1100) {
        pantalla = 3;
        rect(240, tama, 120, 30);
        fill(tama);
        textSize(tama);
        text("Reiniciar", 300, 50);
      }
    }
  }

  void mousePressed() {
    if (pantalla == 3 && mouseX >= 240 && mouseX <= 360 && mouseY >= 25 && mouseY <= 55) {
      pantalla = 1;
      cuenta = 0;
      cuenta ++;
      x = 600;
      y = 200;
      tama = 300;
    }
  }

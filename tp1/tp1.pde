//Flores Mateo
// tp1
// comision 4



PImage imagen1, imagen2, imagen3;
int segundos= 0;
int estado= 0;
boolean arranca, reinicio;
int posX2, posX3, posX4;
int px, py, ancho, alto;
int posX = 200;
PFont mifuente;
void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
 mifuente = loadFont("MicrosoftYaHei-Bold-48.vlw");
 textFont(mifuente, 20);
  posX2 = 1100;
  posX3 = -200;
  posX4 = 1100;
  imagen1 = loadImage("trenbala.jpg");
  imagen2 = loadImage("trenbala2.jpg");
  imagen3 = loadImage("TrenBala3.jpg");
  px = 220;
  py = 420;
  ancho = 200;
  alto = 50;
}

void draw() {
  text(segundos, width/2, 300);
  if (arranca == true) {
    if (frameCount%60==0) {
      segundos ++;
    }
  }
  if (estado==0) {
    image(imagen1, 0, 0, 640, 480);
  }
  if (segundos<= 0) {
    fill(255);
    textSize(20);
    text("EMPEZAR", 320, 445);
  } else if ( segundos>0 && segundos<= 8) {
    text("El tren fue cronometrado y \n alcanzo los 603 kilómetros por hora.", posX2, height/3);
  }
  if (posX2>width/2) {
    posX2 = posX2 -2;
  }
  if (estado==1) {
    image(imagen2, 0, 0, 640, 480);
    text("El Tren Maglev utiliza el \n principio de atracción y repulsión que se crea entre \n  dos campos magnéticos", width/2, posX3);
    if (posX3<height/2) {
      posX3 = posX3 +2;
    }
  }
  if (estado==2) {

    image(imagen3, 0, 0, 640, 480 );
  }
  if (segundos<=8) {
    estado = 0;
    if (segundos<=0) {
      if (mouseX>220 && mouseX <420 && mouseY>419 && mouseY<470 ) {
        fill(0, 0, 0, 200);
      } else {
        fill(0, 0, 0, 100);
      }
      rect(px, py, ancho, alto);
      fill(0, 0, 0, 255);
    }
  } else if (segundos>8 && segundos<= 16) {
    estado = 1;
  } else if (segundos>16) {
    estado = 2;
    fill(0);
    text("El nuevo tren bala contará con 16 vagones, \n configurable a 8 o 12, y una capacidad máxima de 1323 pasajeros. ", posX4, height/2);
    if (posX4>width/2) {
      posX4 = posX4 -2;
    }
  }
  if (segundos>24 ) {
    if (mouseX>220 && mouseX <420 && mouseY>419 && mouseY<470 ) {
      fill(0, 0, 0, 200);
    } else {
      fill(0, 0, 0, 100);
    }
    rect(px, py, ancho, alto);
    fill(0, 0, 0, 255);
  }
  if (segundos>24) {
    fill(255);
    textSize(38);
    text("REINICIAR", 320, 445 );
  }
}
void mousePressed() {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
    arranca = true;
  }
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    segundos = 0;
    reinicio = true;
    posX2 = 1100;
    posX3 = -200;
    posX4 = 1100;
  }
}

void keyPressed() {
  segundos = 0;
  estado =0;
  arranca  = false;
}

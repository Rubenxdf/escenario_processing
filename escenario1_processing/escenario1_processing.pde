
PImage imagen;
PImage pajaro;
PImage abeja;
PImage vida;
color colorear =  color(190,30,140,0.5);
int x = 0; // Posición inicial en el eje x
int speed = 2; // Velocidad de movimiento
//prueva abeja
PVector posABeja;
float x1=100,y1 =100;
// estrellas
int numStars = 100; // Número de estrellas
float[] starX = new float[numStars]; // Posiciones en x de las estrellas
float[] starY = new float[numStars]; // Posiciones en y de las estrellas

void setup(){
  size (564,317);
imagen = loadImage("paisaje_1_H.jpg");
pajaro = loadImage("marron_ave.png");
abeja = loadImage("abeja_A.png");
vida = loadImage("vida_1.png");
pajaro.resize(50,50);
abeja.resize(30,30);
vida.resize(60,20);
// estrellas
 for (int i = 0; i < numStars; i++) {
    starX[i] = random(width); // Posición x aleatoria dentro del lienzo
    starY[i] = random(0, 100); // Posición y aleatoria entre 0 y 100
  }
}
void draw(){ 
image (imagen,0,0);
image (pajaro,x,90);
image (vida,500,0);
//dibujo un rect con color similar al fondo
fill(#56A588);
rect(0,260,564,60);
//dibuja rect en el escenario color gris
fill(128);
int ancho1 = 50;
  int alto1 = 15;
  int espacio1 = 10;
  
  for (int x = 10; x < width; x += ancho1 + espacio1) {
    rect(x, 270, ancho1, alto1);
  }
  int ancho = 50;
  int alto = 15;
  int espacio = 10;
  
  // Bucle para dibujar rectángulos en x
  for (int x = 10; x < width; x += ancho + espacio) {
    rect(x, 295, ancho, alto);
    //fin del bucle
  }
  image (abeja,x1,y1);
  //circulos simulando estrella
fill(255);
noStroke();
 for (int i = 0; i < numStars; i++) {
    ellipse(starX[i], starY[i], random(1, 3), random(1, 3));
  }

x += speed;
 
  // Verifica si el rectángulo ha alcanzado los límites de la pantalla
  if (x >  width - pajaro.width || x < 0) {
    // Si ha alcanzado los límites, invierte la dirección multiplicando la velocidad por -1
    speed *= -1;

  }
}
// mueve abeja con el mause
  void mouseMoved(){
    x1=mouseX;
    y1=mouseY;
  }

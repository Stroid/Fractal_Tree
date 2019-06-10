//Fractals

float DELTA_ANG = 20;
float DELTA_LENG = 1; 

void setup() {
  size(800, 600);
  //fullScreen();


  background(200);
  drawFractal(width / 2, height * 0.95, 0, 10);
}

void draw() {

  //DELTA_ANG = map(mouseX, 0, width, 0, 40);
  //DELTA_LENG = map(mouseY, 0, height, 0, 2);
}

void drawFractal(float x, float y, float ang, float leng) {
  if (leng < 1) return;
  println("Fractal!");
  float x2 = x - sin(radians(ang)) * leng * 10;
  float y2 = y - cos(radians(ang)) * leng * 10;

  float sw = map(leng, 10, 0, 10, 1);
  strokeWeight(sw);
  line(x, y, x2, y2);

  drawFractal(x2, y2, ang + DELTA_ANG, leng - DELTA_LENG);
  drawFractal(x2, y2, ang - DELTA_ANG, leng - DELTA_LENG);
}

// https://youtu.be/IX88LD9xcis

int cant= 50;
int mov= 0;
int min = 0;


void setup() {
  size(800, 800);
  surface.setResizable (true);
  ellipseMode(CENTER);
  stroke(0);
  fill(255);
}

void draw() {
  background(0);
  mov++;

  for (float c=0; c<cant; c++) {
    float tam = map(c, 0, cant-1, width*2, min);
    float ubiY = map(c, 0, cant-1, height/2, mouseY);
    float ubiX = map(c, 0, cant-1, width/2, mouseX);
    float grosor = map(c, 0, cant-1, 25, 1);
    strokeWeight(grosor);
    if (mov>=34) {
      mov=min;
    }
    ellipse(ubiX, ubiY, tam+mov, tam+mov);
  }
}

void mousePressed() {
  stroke(random(0, 255), random(0, 255), random(0, 255) );
  fill(random(0, 255), random(0, 255), random(0, 255));
}

void keyPressed () { 
  if (key == 'r') { 
      cant= 50;
      stroke(0);
      fill(255);
    }
  }

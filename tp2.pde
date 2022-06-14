//  https://youtu.be/mCNGeueNGj0
int mov;
float tam, ubiY,ubiX,grosor, c;

void setup() {
  size(800, 800);
  surface.setResizable (true);
  rectMode(CENTER);
  stroke(0);
  fill(255);
  noCursor();
  mov=0;
}

void draw() {
  background(0);
  mov++;
  cuadrados(55,mov,0);
}

void mousePressed() {
  stroke(random(0, 255),random(0, 255), random(0, 255));
  fill(random(0, 255), random(0, 255), random(0, 255), random(10,255));
}

void keyPressed () { 
  if (key == 'r') { 
      stroke(0);
      fill(255);
    }
  }

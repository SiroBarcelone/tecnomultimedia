programaPrincipal programaPrincipal ;

void setup() {
  size(800, 600);
  programaPrincipal=new programaPrincipal();
  programaPrincipal.programa();
}

void draw() {
  background(50, 100, 255);
  programaPrincipal.dibujarPrograma();
}

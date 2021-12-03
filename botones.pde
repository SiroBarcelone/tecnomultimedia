void botones(int px, int py, int ancho, int alto) {
  noFill();
  stroke(255);
  rect(px, py, ancho, alto, alto/5);
}
boolean clickBoton(int mx, int my, int px, int py, int ancho, int alto) {
  boolean click = mx> px && mx< px+ancho && my>py && my< py+alto == true;
  return click;
}

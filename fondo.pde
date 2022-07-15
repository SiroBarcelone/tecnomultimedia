

void fondo() {
  
  for (int i=0; i<width; i+=30) {
    strokeWeight(3);
    stroke(0, 90, 255);
    line(0, i+mov, width, i+mov);
    if(mov>30){
      mov=-20;
    }
  }
}

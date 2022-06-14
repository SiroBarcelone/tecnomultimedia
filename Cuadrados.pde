void cuadrados(int cant, int inicio, int min) {
  inicio=mov;
  for (c=0; c<cant; c++) {
    tam = map(c, 0, cant-1, width*2, min);
    ubiY = map(c, 0, cant, height/2, mouseY);
    ubiX = map(c, 0, cant, width/2, mouseX);
    grosor = map(c, 0, cant, 30, 1);
    strokeWeight(grosor);
    if (mov>=32) {
      mov=min;
    }
    rect(ubiX, ubiY, tam+mov, tam+mov);
  }
}

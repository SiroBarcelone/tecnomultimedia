class agua {
  color olas;
  int transparencia;
  int mov=0;

  agua(color tempOlas, int tempTrans) {
    olas=tempOlas;
    transparencia=tempTrans;
  }

  void dibujarOlas() {
    for (int i = 0; i < width*2; i += 40) {
      mov++;
      //if (mov<1) {
        //mov++;
      //}
      if (mov>30) {
        mov-=40;
        mov++;
      }
      noFill();
      strokeWeight(7);
      stroke(olas, transparencia);
      bezier(0+i, 0, 30+mov, 0, 0+i, width, 50+mov, width+i);
    }
  }
}

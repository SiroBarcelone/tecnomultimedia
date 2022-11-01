class zombie {
  int Ypos;
  int Xpos;
  int vel;
  
  zombie(int Xpostemp, int Ypostemp, int veltemp) {
    Ypos=Ypostemp;
    Xpos=Xpostemp;
    vel=veltemp;
  }

  void Zombie() {
  }

  void dibujarZombie() {
    fill(10,230,80);
    rect(Xpos, Ypos, 20, 20);
  }
}

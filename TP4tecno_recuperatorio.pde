int sep = 27;

void setup(){
 size(800,600);
 textSize(14);
 textAlign(LEFT,TOP);
  background(0);
 for(int i=0; i<FINAL1.length; i++){
  fill(255);
  text(FINAL1[i], sep, i*sep);
}
}

void draw(){ 
 boton();

 }

class Menu{
  
 boolean inicio;  
 Menu() {
   inicio=false;
 }
 
 
 void dibujarMenu(){
  fill(245,245,22);
  textSize(50);
  text("Haz click para comenzar!",100,200);
  textSize(20);
  fill(87,46,255);
  text("INSTRUCCIONES:\n Esquiva los asteroides y agarra los\n barriles de petróleo para sumar puntos. \n Presiona R para reiniciar la partida.", 260, 400);
  fill(0,150);
  rect(0,width, 0, height); 
 }
}

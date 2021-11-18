class Fondo{
  
float fy, fx, ftam;
 Fondo() {
    ftam = 5;
    fx = random(0,width);
    fy = random(0,height);
  }

void dibujarFondo() {
    fill(220);
    ellipse(fx,fy,ftam,ftam);
    }
    

void moverFondo(){
fy+=14;
if(fy>height+ftam){
  fy=0;
  fx = random(0,width);
}
 }  
}

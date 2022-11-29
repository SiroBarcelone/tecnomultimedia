class Pantallas {
  Botones boton1;
  Botones boton2;
  Juego juego;
  int pantallaNum;
  int pantalla;
  boolean presionado1=false;
  boolean presionado2=false;
  boolean mostrarPantallas=true;
  PImage menu;
  PImage [] pantallas= new PImage [7];

  Pantallas() {
    boton1 = new Botones(0, 500, width, 30);
    boton2 = new Botones(0, 550, width, 30);
    juego = new Juego();
    pantallas[0]=loadImage("img0.jpg");
    pantallas[1]=loadImage("img1.jpg");
    pantallas[2]=loadImage("img2.jpg");
    pantallas[3]=loadImage("img3.jpg");
    pantallas[4]=loadImage("img4.jpg");
    pantallas[5]=loadImage("img5.jpg");
    pantallas[6]=loadImage("img6.jpg");
  }

  void dibujarPantallas() {
    if (mostrarPantallas==true) {
      //botones.dibujarBoton( float Y, float Xtam, float Ytam)
      imageMode(CORNER);
      if (pantalla == 0) {
        image(pantallas[0], 0, 0, width, height);
        fill(255, 77, 120);
        textSize(100);
        text("PINK RAIN", 150, 50, 500, 500);
        boton1.dibujarBoton(); //jugar
        boton2.dibujarBoton(); //créditos
        boton1.textoBoton("jugar");
        boton2.textoBoton("créditos");
      } else if (pantalla == 1) {
        image(pantallas[1], 0, 0, width, height);
        fill(255);
        text("La tormenta rosa, la que transforma a los humanos en bestias, aún continúa. Ese color rosa tan distintivo, sabías que era producto de la radiación de las bombas, ya que un amigo científico te lo había comentado antes de volverse bestia, pero ¿Por qué dura tanto? En nueve meses de tormenta sólo ha parado durante las noches o muy contados días. Salir es altamente peligroso, pero morís de hambre y necesitás provisiones. ¿Qué decidís hacer?", 10, 10, width, 400);
        boton1.textoBoton("Esperar a que pase la tormenta");
        boton2.textoBoton("Buscar comida");
        boton1.dibujarBoton();//esperar
        boton2.dibujarBoton();//salir
      } else if (pantalla == 2) {
        image(pantallas[2], 0, 0, width, height);
        fill(255);
        text("Te ponés el piloto y el equipo para protegerte de la lluvia, cargás el arma y una linterna y emprendés tu viaje. Caminás por las ruinas de lo que alguna vez fue tu ciudad durante cuarenta y cuatro minutos. No hay rastros de las bestias, ya que aún es de día, y hasta donde sabés el sol les quema lo poco de piel que se aferra a sus cuerpos podridos. De pronto escuchás un “pssst”, y ves una figura detrás de un coche que trata de llamar tu atención. Tu reacción es… ", 10, 10, width, 400);
        boton1.textoBoton("Seguirla");
        boton2.textoBoton("Disparar al auto");
        boton1.dibujarBoton();//seguirla
        boton2.dibujarBoton();//disparar
      } else if (pantalla == 3) {
        image(pantallas[3], 0, 0, width, height);
        fill(255);
        text("Te acercás a la figura. Es una mujer. Sana. Tiene puesto un protector muy precario contra la lluvia. Se acerca y te dice “Hace mucho tiempo no veo una persona no infectada, es realmente un alivio. Unámonos, yo tengo un escondite y sé exactamente donde encontrar comida enlatada”. Quizá sea el hambre, pero no dudas ni un segundo y asentís con la cabeza./nCaminan por unas calles que reconocés a duras penas. Avenida 7, calle 35, el diagonal 74. Es difícil ubicarse con las pilas enormes de cadáveres a ambos lados del asfalto. El olor a tilos característico de la primavera platense fue reemplazado por el hedor a descomposición, sangre y humo. /nLlegan finalmente a un antiguo Supermercado chino, y logran entrar por un hueco en la puerta principal. El lugar está completamente oscuro y vacío. Tu compañera tantea la pared hasta que encuentra un interruptor. Todo pasó muy rápido. Quizá esa mujer hacía mucho no visitaba el lugar, pero el mismo se transformó en un cado de bestias. Estaba repleto de ellas, en el suelo y las paredes. Cinco se la llevaron y la devoraron. Es muy tarde para huir, así que cargás tu arma y tratás de recoger todo el alimento posible. ", 10, 10, width, 500);
        boton1.textoBoton("JUGAR");
        boton1.dibujarBoton();
      } else if (pantalla == 4) {
        image(pantallas[4], 0, 0, width, height);
        fill(255);
        text("Baleás el auto sin piedad, hasta que ves a la figura caer. Era una mujer. Sana. “Quizás sus intenciones no eran buenas” pensás para vos mismo, para consolarte. Realmente te angustia, era la primera persona no infectada y en una sola pieza que habías visto hace meses. /nTenés mucho hambre. Una voz interna te dice que lo hagas. Otra que no. Su carne está sana. Pero si no ¿Qué te diferenciaría de esas bestias?/nElegís…", 10, 10, width, 400);
        boton1.textoBoton("Continuar buscando");
        boton2.textoBoton("Comer...");
        boton1.dibujarBoton();//caminar
        boton2.dibujarBoton();//comer
      } else if (pantalla == 5) { //muerte de hambre
        image(pantallas[5], 0, 0, width, height);
        fill(0);
        text("La tormenta continúa durante días, pero el miedo te imposibilita. Tu cuerpo está cada vez más débil. De la noche a la mañana ya no tenés fuerzas, ni siquiera para alcanzar la última rodaja de pan duro que dejaste hace dos semanas en la mesa. La agonía es lenta, dos días paralizado de hambre y frío en el suelo, antes de perecer completamente.", 10, 10, width, 400);
      } else if (pantalla == 6) {//Seguir caminando
        image(pantallas[6], 0, 0, width, height);
        fill(255);
        text("Tu humanidad te lo exige. Seguís caminando, con el pesar de haber asesinado a una humana en tu cabeza. Caminás y caminás, pero no encontrás nada, y para cuando te querés dar cuenta, te habías perdido. La carnicería que hay en las calles las hace virtualmente irreconocibles, y el hambre nubla tus sentidos. La noche cae, y lo último que recordás es una horda que corre con el cuerpo a tierra en tu dirección. Tu columna se ha doblado completamente, y tu piel gris pica y duele, se cae a jirones cuando la rascás. Las voces internas desaparecen con tu raciocinio, sólo tenés mucha, mucha hambre.", 10, 10, width, 400);
      } else if (pantalla == 7) {//comer mujer
        image(pantallas[7], 0, 0, width, height);
        fill(255);
        text("El hambre es demasiado. Quizá esta sea una oportunidad única. Arrastrás el cuerpo hasta tu guarida, con las herramientas que tenés a mano y con la pura praxis aprendés el oficio del carnicero. Disfrutás mucho la carne durante las dos semanas que dura, pero te das cuenta que la desesperación te ha llevado a transformarte en algo similar a las bestias. ¿Tu condición humana se esfumó al quebrantar todo código social? ¿O de lo contrario, persiste por el aferramiento a sobrevivir? Te quedás pensando en la oscuridad de tu guarida, mientras masticás la última porción de pastel de carne.", 10, 10, width, 400);
      }
    }
  }

  void mousePressed() {
    if ( mouseX > boton1.X && mouseX <boton1.X+boton1.Xtam && mouseY > boton1.Ytam && mouseY < boton1.Y + boton1.Ytam && mousePressed) {
      println("presionado");
      presionado1=true;
    }
    if ( mouseX > boton2.X && mouseX <boton2.X+boton2.Xtam && mouseY > boton2.Ytam && mouseY < boton2.Y + boton2.Ytam && mousePressed) {
      println("presionado");
      presionado2=true;
    }

    if (pantalla == 0 && presionado1==true) {
      pantalla=1;
    } else if (pantalla == 1 && presionado1==true) {
      pantalla=5;
    } else if (pantalla == 1 && presionado2==true) {
      pantalla=2;
    } else if (pantalla == 2 && presionado1==true) {
      pantalla=3;
    } else if (pantalla == 3 && presionado1==true) {
      juego.game=true;
      mostrarPantallas=false;
    } else if (pantalla == 2 && presionado2==true) {
      pantalla=4;
    } else if (pantalla == 4 && presionado1==true) {
      pantalla=6;
    } else if (pantalla == 4 && presionado2==true) {
      pantalla=7;
    }
  }
}

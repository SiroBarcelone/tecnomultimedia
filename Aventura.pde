class Aventura {
  Juego juego;
  Pantalla pantalla1;
  Pantalla pantalla2;
  Pantalla pantalla3;
  Pantalla pantalla4;
  Pantalla pantalla5;
  Pantalla pantalla6;
  Pantalla pantalla7;
  Pantalla menu;
  Pantalla creditos;
  Pantalla victoria;
  Pantalla perdida;
  int pantallaNum;
  boolean mostrarPantallas=true;


  Aventura() {

    menu = new Pantalla();
    creditos = new Pantalla();
    pantalla1 = new Pantalla();
    pantalla2 = new Pantalla();
    pantalla3 = new Pantalla();
    pantalla4 = new Pantalla();
    pantalla5 = new Pantalla();
    pantalla6 = new Pantalla();
    pantalla7 = new Pantalla();
    victoria = new Pantalla();
    perdida = new Pantalla();
    pantallaNum = 8;
    juego = new Juego();
  }

  void draw() {
    if (mostrarPantallas==true) {
      cursor();
      if (pantallaNum==1) {
        pantalla1.draw("La tormenta rosa, la que transforma a los humanos en bestias, aún continúa. Ese color rosa tan distintivo, sabías que era producto de la radiación de las bombas, ya que un amigo científico te lo había comentado antes de volverse bestia, pero ¿Por qué dura tanto? En nueve meses de tormenta sólo ha parado durante las noches o muy contados días. Salir es altamente peligroso, pero morís de hambre y necesitás provisiones. ¿Qué decidís hacer?", 1, 255, "Esperar a que pase la lluvia", "Salir a buscar alimento");
      } else if (pantallaNum==2) {
        pantalla2.draw("Te ponés el piloto y el equipo para protegerte de la lluvia, cargás el arma y una linterna y emprendés tu viaje. Caminás por las ruinas de lo que alguna vez fue tu ciudad durante cuarenta y cuatro minutos. No hay rastros de las bestias, ya que aún es de día, y hasta donde sabés el sol les quema lo poco de piel que se aferra a sus cuerpos podridos. De pronto escuchás un “pssst”, y ves una figura detrás de un coche que trata de llamar tu atención. Tu reacción es… ", 2, 255, "Seguirla", "Dispararle");
      } else if (pantallaNum==3) {
        pantalla3.draw("Te acercás a la figura. Es una mujer. Sana. Tiene puesto un protector muy precario contra la lluvia. Se acerca y te dice “Hace mucho tiempo no veo una persona no infectada, es realmente un alivio. Unámonos, yo tengo un escondite y sé exactamente donde encontrar comida enlatada”. Quizá sea el hambre, pero no dudas ni un segundo y asentís con la cabeza. /nCaminan por unas calles que reconocés a duras penas. Avenida 7, calle 35, el diagonal 74. Es difícil ubicarse con las pilas enormes de cadáveres a ambos lados del asfalto. El olor a tilos característico de la primavera platense fue reemplazado por el hedor a descomposición, sangre y humo. /nLlegan finalmente a un antiguo Supermercado chino, y logran entrar por un hueco en la puerta principal. El lugar está completamente oscuro y vacío. Tu compañera tantea la pared hasta que encuentra un interruptor. Todo pasó muy rápido. Quizá esa mujer hacía mucho no visitaba el lugar, pero el mismo se transformó en un cado de bestias. Estaba repleto de ellas, en el suelo y las paredes. Cinco se la llevaron y la devoraron. Es muy tarde para huir, así que cargás tu arma y tratás de recoger todo el alimento posible.\n \n WASD para moverse, disparar con mouse.", 3, 255, "", "JUGAR");
        pantalla3.mostrarBoton1=false;
      } else if (pantallaNum==4) {
        pantalla4.draw("Baleás el auto sin piedad, hasta que ves a la figura caer. Era una mujer. Sana. “Quizás sus intenciones no eran buenas” pensás para vos mismo, para consolarte. Realmente te angustia, era la primera persona no infectada y en una sola pieza que habías visto hace meses. \nTenés mucho hambre. Una voz interna te dice que lo hagas. Otra que no. Su carne está sana. Pero si no ¿Qué te diferenciaría de esas bestias? Elegís…", 4, 255, "Seguir buscando", "COMER...");
      } else if (pantallaNum==5) {
        pantalla5.draw("Tu humanidad te lo exige. Seguís caminando, con el pesar de haber asesinado a una humana en tu cabeza. Caminás y caminás, pero no encontrás nada, y para cuando te querés dar cuenta, te habías perdido. La carnicería que hay en las calles las hace virtualmente irreconocibles, y el hambre nubla tus sentidos. La noche cae, y lo último que recordás es una horda que corre con el cuerpo a tierra en tu dirección. Tu columna se ha doblado completamente, y tu piel gris pica y duele, se cae a jirones cuando la rascás. Las voces internas desaparecen con tu raciocinio, sólo tenés mucha, mucha hambre.", 5, 255, "Reiniciar", " ");
        pantalla5.mostrarBoton2=false;
      } else if (pantallaNum==6) {
        pantalla6.draw("El hambre es demasiado. Quizá esta sea una oportunidad única. Arrastrás el cuerpo hasta tu guarida, con las herramientas que tenés a mano y con la pura praxis aprendés el oficio del carnicero. Disfrutás mucho la carne durante las dos semanas que dura, pero te das cuenta que la desesperación te ha llevado a transformarte en algo similar a las bestias. ¿Tu condición humana se esfumó al quebrantar todo código social? ¿O de lo contrario, persiste por el aferramiento a sobrevivir? Te quedás pensando en la oscuridad de tu guarida, mientras masticás la última porción de pastel de carne", 6, 255, "Reiniciar", " ");
        pantalla6.mostrarBoton2=false;
      } else if (pantallaNum==7) {
        pantalla7.draw("La tormenta continúa durante días, pero el miedo te imposibilita. Tu cuerpo está cada vez más débil. De la noche a la mañana ya no tenés fuerzas, ni siquiera para alcanzar la última rodaja de pan duro que dejaste hace dos semanas en la mesa. La agonía es lenta, dos días paralizado de hambre y frío en el suelo, antes de perecer completamente", 1, 255, "Reiniciar", " ");
        pantalla7.mostrarBoton2=false;
      } else if (pantallaNum==8) {
        menu.draw("PINK RAIN", 0, #FF4090, "Jugar", "Créditos");
      } else if (pantallaNum==9) {
        creditos.draw("Código, sprites e historia: Siro Augusto Barcelone\nLegajo: 88156/7\nFDA-UNLP Tecnomultimedial 1\nProfesor: Leonardo Garay", 9, 255, "Atrás", "");
        creditos.mostrarBoton2=false;
      } else if (pantallaNum==10) {
        victoria.draw("Conseguiste la comida necesaria para continuar sobreviviendo", 8, 255, "Reiniciar", "");
        victoria.mostrarBoton2=false;
      } else if (pantallaNum==11) {
        perdida.draw("Sentís como la vida se te va mordida a mordida. Sangre gorgoteando a montones. Carne desgarrada, jirones de piel y grunidos bestiales. No lograste sobrevivir.", 7, 255, "Reiniciar", "");
        perdida.mostrarBoton2=false;
      }
    } else if (juego.game==true) {
      juego.dibujarJuego();
      juego.keyPressed();
    }
  }

  void mouseClicked() {
    if ( mostrarPantallas==true ) {
      if (pantallaNum==1) {
        pantalla1.mouseClicked(7, 2);
      } else if (pantallaNum==2) {
        pantalla2.mouseClicked(3, 4);
      } else if (pantallaNum==3) {
        pantalla3.mouseClicked(0, 8);
        if (pantalla3.boton2.presionado==true) {
          mostrarPantallas=false;
          juego.game=true;
        }
      } else if (pantallaNum==4) {
        pantalla4.mouseClicked(5, 6);
      } else if (pantallaNum==5) {
        pantalla5.mouseClicked(8, 0);
      } else if (pantallaNum==6) {
        pantalla6.mouseClicked(8, 0);
      } else if (pantallaNum==7) {
        pantalla7.mouseClicked(8, 0);
      } else if (pantallaNum==8) {
        menu.mouseClicked(1, 9);
      } else if (pantallaNum==9) {
        creditos.mouseClicked(8, 0);
      } else if (pantallaNum==10) {
        victoria.mouseClicked(8, 0);
        juego.ganaste=false;
      } else if (pantallaNum==11) {
        perdida.mouseClicked(8, 0);
        juego.game=true;
        juego.perdiste=false;
      }
      //if (juego.game==true) {
       // juego.mouseClicked();
      //}
    }
  }
}

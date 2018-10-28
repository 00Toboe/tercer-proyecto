class Ventana
{
  Ventana () {}
  
  void inicio ()
 {
   
   n+=0.002;
  background(0);
  for(int i =0; i<width; i+=5)
  {
    for(int j = 0; j<height; j+= 5)
    {
      fill(noise(i*0.005,j*0.005,n)*20,noise(i*0.005+1,j*0.005+1,n)*120,noise(i*0.005+2,j*0.005+2,n)*50);
      noStroke();
      rect(i,j,5,5);
    }
  }
  
   fill(255);
   textSize(40);
   text("A NORMAL DAY IN A FANTASY WORLD", 45,150);   
   textSize(18);
   text ("¿Que hacen los monstruos cuando los aventureros no estan?",150,300);
   text ("¿Que pasa cuando estos se cruzan por error?",200,330);
   textSize(15);
   text("Presiona z para avanzar", 600,450);
   if(key == 'z'|| key == 'Z')
    {
      pant = 1;
    }
 }
 //--------------------------------------------------------
 void seleccion ()
 {
    n+=0.006;
  background(0);
  for(int i =0; i<width; i+=5)
  {
    for(int j = 0; j<height; j+= 5)
    {
      fill(noise(i*0.005,j*0.005,n)*50);
      noStroke();
      rect(i,j,5,5);
    }
  }
  fill (250);
   textSize(20);
   text("¿Quien se cruzara en el camino quien?", 200, 50);     
   
   textSize(20);
   sa = loadImage ("sans.png");
    image(sa, 40,170,125,162.5);
   text("Sans (Underfell)", 50, 120);   
   textSize(12);
   text("Jugador 1, presiona x ", 50, 150);
   text("Jugador 2, presiona y ", 50, 180);
   
   textSize(20);
   fa = loadImage ("fantj1.png");
    image(fa, 180,345,125,162.5);
   text("Fantasma", 50, 380);
   textSize(12);
   text("Jugador 1, presiona c ", 50, 410);
   text("Jugador 2, presiona u ", 50, 440);
   
   textSize(20);
   sli = loadImage ("slij1.png");
    image(sli, 320, 80,125,162.5);
   text("Slime", 330, 230);
   textSize(12);
   text("Jugador 1, presiona v ", 330, 260);
   text("Jugador 2, presiona i ", 330, 300);
   
   textSize(20);
   spe2 = loadImage ("spej2.png");
    image(spe2, 580,170,125,162.5);
   text("Spectro", 600, 120);
   textSize(12);
   text("Jugador 1, presiona b ", 600, 150);
   text("Jugador 2, presiona o ", 600, 180);
   textSize(20);
   wi2 = loadImage ("wispj2.png");
    image(wi2, 480,345,125,162.5);
   text("Wisp", 600, 380);
   textSize(12);
   text("Jugador 1, presiona n ", 600, 410);
   text("Jugador 2, presiona p ", 600, 440);
   if (keyPressed) 
   {
     switch (key)
     {
       case 'x':
       jugador1 = true;
       chara1=0;
       break;
       
       case 'c':
       jugador1 = true;
       chara1=1;
       break;
       
       case 'v':
       jugador1 = true;
       chara1=2;
       break;
       
       case 'b':
       jugador1 = true;
       chara1=3;
       break;
       
       case 'n':
       jugador1 = true;
       chara1=4;
       break;
       //jugador 2
       case 'y':
       jugador2 = true;
       chara2=0;
       break;
       
       case 'u':
       jugador2 = true;
       chara2=1;
       break;
       
       case 'i':
       jugador2 = true;
       chara2=2;
       break;
       
       case 'o':
       jugador2 = true;
       chara2=3;
       break;
       
       case 'p':
       jugador2 = true;
       chara2=4;
       break;
     }
     if (jugador1 && jugador2)
     {
       pant = 2;
     }
   }
 }
 //----------------------------------------------------------
 void combate ()
 {
   background (#9DF0CB);
   fo = loadImage ("fondo.png");
   //tint (125);
    image(fo, 0, 0, 800, 400);
    fill(0);
   rect (0,400,800,100);
  
   
   
   switch (chara1) 
 {
      case 0:
      j1.sans(150,150);
      j1=a;
      break;
      
      case 1:
      j1.fantasma1(150,100);
      j1=b;
      break;
      
      case 2:
      j1.slime1(150,150);
      j1=c;
      break;
      
      case 3:
      j1.spectro1(140,100);
      j1=d;
      break;
      
      case 4:
      j1.wisp1(140,150);
      j1=e;
      break;
 }
 switch (chara2)
 {
      case 0:      
      j2.sans(445,150);
      j2=a2;
      break;
      
      case 1:
      j2.fantasma2(445,100);
      j2=b2;    
      break;
      
      case 2:      
      j2.slime2(445,150);
      j2=c2;
      break;
      
      case 3:
      j2.spectro2(435,100);
      j2=d2;
      break;
      
      case 4:
      j2.wisp2(435,150);
      j2=e2;
      break;
 }
 //pelea
 fill (255);
 if (turno <= 0.5)
 {
   textSize(15);
  fill(0);
   text ("jugador 1 preciona: \n N para ataque normal \n J para ataque magico", 310,40);
   if (keyPressed)
   {
     if(key == 'n' || key == 'N')
     {
       dam = j1.ATK-j2.DEF;
       if (dam <= 0)
       {
         dam = 0;
       }
       else
       {
       j2.HP=j2.HP-dam;
       }
       turno=0.6;       
     }
     
     if(key == 'j' || key == 'J')
     {
       dam = j1.MATK-j2.MDEF;
       if (dam <= 0)
       {
         dam = 0;
       }
       else
       {
       j2.HP=j2.HP-dam;
       }
       turno=0.6;       
     }
     
   }
 } 
 
 if (turno > 0.5)
 {
   textSize(15);
  fill(0);
   text ("jugador 2 preciona \n M para ataque normal \n K para ataque magico", 310,40);
   if (keyPressed)
   {
     if(key == 'm' || key == 'M')
     {
       dam = j2.ATK-j1.DEF;
       if (dam <= 0)
       {
         dam = 0;
       }
       else 
       {
       j1.HP=j1.HP-dam;
       }
       turno=0;       
     }
     
     if(key == 'k' || key == 'K')
     {
       dam = j2.MATK-j1.MDEF;
       if (dam <= 0)
       {
         dam = 0;
       }
       else 
       {
       j1.HP=j1.HP-dam;
       }
       turno=0;       
     }
     
   }
 } 
 
 if (j1.HP<=0 || j2.HP<=0)
 {
   pant=3;
 }
 textSize(15);
 fill (0,95,0);
  text ("HP",160,420);
  text ("HP",620,420);
  rect (380,400,-j1.HP*2,20);
  rect (420,400, j2.HP*2,20); 
  
  fill(255);
  text(j1.HP,352,420);
  text ("ATK:", 170,430);
  text (j1.ATK,210,430);
  text ("SPE:", 170,443);
  text (j1.MATK,210,443);
  text ("DEF:", 170,455);
  text (j1.DEF,210,455);
  text ("SDEF:", 170,467);
  text (j1.MDEF,210,467);
  
  text(j2.HP,420,420);
  text ("ATK:", 420,430);
  text (j2.ATK,460,430);
  text ("SPE:", 420,443);
  text (j2.MATK,460,443);
  text ("DEF:", 420,455);
  text (j2.DEF,460,455);
  text ("SDEF:", 420,467);
  text (j2.MDEF,460,467);
 }
 //------------------------
 void fin ()
 {
    n+=0.01;
  background(0);
  for(int i =0; i<width; i+=5)
  {
    for(int j = 0; j<height; j+= 5)
    {
      fill(noise(i*0.05,j*0.005,n)*150,noise(i*0.005+1,j*0.005+1,n)*25,noise(i*0.005+2,j*0.005+2,n)*50);
      noStroke();
      rect(i,j,5,5);
    }
  }
   
   
   fill (255);
   if(j1.HP <= 0)
   {
     textSize(25);
   text ("El ganador es el jugador 2", 280,200);
   }
   
   if(j2.HP <= 0)
   {
     textSize(25);
   text ("El ganador es el jugador 1", 280,200);
   }
   textSize(15);
   text ("Para volver al inicio preciona i",550,480);
   if (key == 'i' || key == 'I')
   {
     turno = 0;
     j1.HP=100;
     j2.HP=100;
     jugador1 = false;
     jugador2 = false;
     pant=0;
   }
   
 }
}

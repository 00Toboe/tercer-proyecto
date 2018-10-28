//Edwin Jonathan Lizcano Vazquez. A2
int pant =0;
boolean jugador1;
boolean jugador2;
int chara1;
int chara2;
Personaje j1;
Personaje j2;
float turno= random (0,1);
Personaje a;
Personaje b;
Personaje c;
Personaje d;
Personaje e;
Personaje a2;
Personaje b2;
Personaje c2;
Personaje d2;
Personaje e2;
float n;
Ventana ve;
int dam = 0;
PImage fo;
PImage sa;
PImage fa;
PImage fa2;
PImage sli;
PImage sli2;
PImage spe;
PImage spe2;
PImage wi;
PImage wi2;

//Sansj1 sans;

void setup ()
{
  size (800, 500);
 // sans = new Sansj1 (15,100,40,10,30);
  
  ve = new Ventana();
  j1 = new Personaje ();
  j2 = new Personaje ();
             //atk, vida, matk, def, mdef
  a = new Personaje(15,100,40,10,30);//sans
  b = new Personaje(30,100,40,30,15);//fantasma
  c = new Personaje(40,100,10,30,10);//slime
  d = new Personaje(25,100,30,20,20);//spectro
  e = new Personaje(20,100,40,15,30);//wisp
  a2 = new Personaje(15,100,40,10,30);
  b2 = new Personaje(30,100,40,30,15);
  c2 = new Personaje(40,100,10,30,10);
  d2 = new Personaje(25,100,30,20,20);
  e2 = new Personaje(20,100,40,15,30);
  
}
void draw () 
{
  switch (pant)
  {
    case 0:    
      ve.inicio();   
      break;
      
      case 1:    
      ve.seleccion();    
      break;
      
      case 2:    
      ve.combate();   
      break;
      
      case 3:    
      ve.fin();    
      break;
  }
}

class Personaje 
{
  int ATK;
  int MATK;
  int HP;
  int DEF;
  int MDEF;
  Personaje (int atk_, int vida_, int matk_, int def_, int mdef_) 
  {
    ATK=atk_; 
    HP=vida_;
    MATK=matk_;
    DEF=def_;
    MDEF=mdef_;
  }
  Personaje()
  {}
  
  void sans (int x, int y) 
  {
    sa = loadImage ("sans.png");
    image(sa, x, y);
  
  }
  
  void fantasma1 (int x, int y) 
  {
    fa = loadImage ("fantj1.png");
    image(fa, x, y,190,265);
 
  }
  
  void fantasma2 (int x, int y) 
  {
    fa2 = loadImage ("fantj2.png");
    image(fa2, x, y,190,265);
 
  }
  
  void slime1 (int x, int y) 
  {
   sli = loadImage ("slij1.png");
    image(sli, x, y);
  }
  
  void slime2 (int x, int y) 
  {
    sli2 = loadImage ("slij2.png");
    image(sli2, x, y);
  }
  
  void spectro1 (int x, int y) 
  {
    spe = loadImage ("spej1.png");
    image(spe, x, y, 230, 305);     
  }
  
  void spectro2 (int x, int y) 
  {
    spe2 = loadImage ("spej2.png");
    image(spe2, x, y, 230, 305);
  }
  
  void wisp1 (int x, int y) 
  {
     wi = loadImage ("wispj1.png");
    image(wi, x, y, 230, 305);
  }
  
  void wisp2 (int x, int y) 
  {
    wi2 = loadImage ("wispj2.png");
    image(wi2, x, y, 230, 305);
  }
}

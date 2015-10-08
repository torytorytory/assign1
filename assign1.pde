PImage HpImage;
PImage EnemyshipImage;
PImage FightershipImage;
PImage backgroundImage1;
PImage backgroundImage2;

int x, y, bx;
int randomP;

void setup(){
  size(640,480);
  x = 0;
  y = 200;
  randomP=floor(random(100));
  
  FightershipImage= loadImage("img/fighter.png");
  EnemyshipImage = loadImage("img/enemy.png");
  backgroundImage1 = loadImage("img/bg1.png");
  backgroundImage2 = loadImage("img/bg2.png");
  HpImage = loadImage("img/hp.png");
}

void draw(){
  
  image(backgroundImage1,((bx+640)%1280-640),0);
  image(backgroundImage2,bx%1280-640,0);
  image(EnemyshipImage,x%(640+EnemyshipImage.width)-EnemyshipImage.width,480*randomP/100);
  image(FightershipImage,640-FightershipImage.width-10,480/2);
  colorMode(RGB);
  rect(5, 0, (HpImage.width-10)*randomP/100, HpImage.height*0.7);
  fill(255,0,0);
  image(HpImage,0,0);
  x+=3;
  bx++;
  
}

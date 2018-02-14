PImage fire, enemy, ship;
ArrayList<Bullets> bullets;
ArrayList<Enemy> fighter;
float x, y; 
int spawntimer=1;

void setup() {
  size(1028, 720);
  fire=loadImage("fire.png");
  enemy = loadImage("enemy.png");
  ship = loadImage("shippng.png");
  bullets = new ArrayList<Bullets>();
  fighter = new ArrayList<Enemy>();
}

void draw() {

  background(0);

  //spawn timer functions
  if (second()%2 != 0) {
    spawntimer=1;
  }
  if (second()%2 == 0 & spawntimer==1) {
    enemySpawn();
    spawntimer=0;
  }


  //bullets


  for (Enemy f : fighter) {
    f.moveE();
    f.displayE();
  }
  for (Bullets b : bullets) {
    b.move();
    b.display();
  }
  
  checkKiller();




  image(ship, pmouseX, pmouseY-12);
}

void mousePressed() {

  x=pmouseX;
  y=pmouseY;
  bullets.add( new Bullets(x, y));


  if (bullets.size()>100) {
    bullets.remove(0);
  }
}

void enemySpawn() {
  float x=width, y=random(0, 720);

  fighter.add( new Enemy(x, y));

  if (fighter.size()>100) {
    fighter.remove(0);
  }
}




void checkKiller() {
  
  for(int j=0; j< fighter.size(); j++){
    for(int i=0; i < bullets.size(); i++){
      
      for(float innerLoop=-5;innerLoop>10;innerLoop++){
      if (
      //for x
      (bullets.get(i).returnX() == fighter.get(j).returnX())||
      (bullets.get(i).returnX()+innerLoop == fighter.get(j).returnX()+innerLoop)||
      (bullets.get(i).returnX()+innerLoop == fighter.get(j).returnX()-innerLoop)||
      (bullets.get(i).returnX()-innerLoop == fighter.get(j).returnX()+innerLoop)||
      (bullets.get(i).returnX()-innerLoop == fighter.get(j).returnX()-innerLoop)
      
      
      &
      //for y
      (bullets.get(i).returnY()+innerLoop == fighter.get(j).returnY()+innerLoop) ||
      (bullets.get(i).returnY()+innerLoop  == fighter.get(j).returnY()-innerLoop) ||
      (bullets.get(i).returnY()-innerLoop == fighter.get(j).returnY()+innerLoop) ||
      (bullets.get(i).returnY()-innerLoop == fighter.get(j).returnY()-innerLoop)
      )
      {
          fighter.remove(j);
          bullets.remove(i);
      }
      }
    }
  
  }


}
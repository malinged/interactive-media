class Bullets{
  float xSpeed=5, newX, permY;
  Bullets (float x, float y){
  newX=x;
  permY=y;
  }
  
  //bullet create
  void move(){
    newX+=xSpeed;
  }
  void display(){
    image(fire, newX, permY);
  }
  float returnX(){
    
    return newX;
  }
  float returnY(){
    return permY;
  }
}


class Enemy{
  float posX, posY;
  Enemy(float tX, float tY){
  posX=tX;
  posY=tY;
  }
  
  void displayE(){
  image(enemy,posX, posY);
  }
  
  void moveE(){
  posX-=2;
  }

  float returnX(){  
    return posX;
  }
  float returnY(){
    return posY;
  }
}
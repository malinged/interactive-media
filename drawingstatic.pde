void setup(){
size(1080, 720);
colorMode(HSB, 100, 100, 100);
}
void draw(){
float x=mouseX, y=mouseY, thiccness;


background((x/10)+20, (y/10)+20, 100);

strokeWeight(10);
point(x,y);


strokeWeight(1);
stroke(0);

fill(x/10,y/10,100);
noStroke();
fill((x/10)-20,(y/10)-20,100);
ellipse(540, 360, 280, 280);

fill((x/10)-10,(y/10)-10,100);
ellipse(540, 360, 250, 250);

fill((x/10)-18,(y/10)-18,100);
ellipse(540, 360, 220, 220);

fill((x/10)-6,(y/10)-6,100);
ellipse(540, 360, 190, 190);

fill((x/10)-15,(y/10)-15,100);
ellipse(540, 360, 160, 160);

fill((x/10)-5,(y/10)-5,100);
ellipse(540, 360, 100, 100);

fill((x/10)-2,(y/10)-2,100);
ellipse(540, 360, 130, 130);


color((x/5)-20,(y/15)-20,100);
textSize(50);
text("R A V E",456, 60, 300, 300);

}

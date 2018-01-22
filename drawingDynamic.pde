//draw your own drawing :^p 

/*
Create a responsive drawing machine in Processing involving user input. The subject is up to you. You may use the previous assignment as a starting point, or begin a completely new sketch.
 
 The drawing must react to the mouse in some way, and must include the following:
 
 
 Use of variables
 Use of keyPressed() event function-- to clear/erase the background of your sketch
 Use of mousePressed() event function-- what it does is up to you
 Attention to visual detail (composition, color, line weight, etc.)
 A title for the drawing (add as a comment at the top of your sketch)
 
 */
 


float w=1, b, c=0, s, br, o=100;

void setup() {
  size(1028, 720);
  colorMode(HSB, 100);
  background(0, 0, 100);

}

void draw() {
  fill(0,0,90);
  rect(-1,0,1080, 150);
  
  fill(30, 20, (b/2+10));
  textSize(12);
  text("shortcuts:", 20, 25);
  text("h and j for control over hue, u and I for control over saturation, and n and m for control over brightness. '[' to decrease brush size, and ']' to increase. t and r for opacity control.", 20, 45, 500, 200);
  text("c for changing the background to current color",20,113);
  text("1=red, 2=orange, 3=yellow, 4=green, 5=blue, 6=indigo, 7=violet, 8=black, white=9", 20,135);
 
 
 strokeWeight(1);
 rect(-1,0,1080, 10);
 rect(-1,150,1080, 10);
 fill(mouseX/10,mouseY/10,100);

noStroke();
fill((mouseX/10)-20,(mouseY/10)-20,100);
ellipse(950, 80, 70, 280-60);

fill((mouseX/10)-10,(mouseY/10)-10,100);
ellipse(950, 80, 70, 250-60);

fill((mouseX/10)-18,(mouseY/10)-18,100);
ellipse(950, 80, 70, 220-60);

fill((mouseX/10)-6,(mouseY/10)-6,100);
ellipse(950, 80, 70, 190-60);

fill((mouseX/10)-15,(mouseY/10)-15,100);
ellipse(950, 80, 70, 160-60);

stroke(1);
  fill(0,0,100);
  
textSize(18);  
text("Draw", 927, 90);
textSize(12);  

  rect(590, 30, 180, 90);
 
 fill(30, 20, (b/2+10));
 text("Current collors Hue Saturation Brightness:",590, 25);
  text("H",600,50);
  text(c,620,50);
  text("S",600,70);
  text(s,620,70);
  text("B",600,90);
  text(br,620,90);
  text("A",600,110);
  text(o,620,110);
  strokeWeight(w);
  
}

void keyPressed() {
  
  colorMode(HSB,360,100,100, 100);
   
  if (key=='c') {
    background(c, s, br);
  }
  
  //size
  if (key==']') {
    w=w+1;
  }
  if (key=='['& w>0) {
    w=w-1;
  }
//color control

  //hue
  if (key== 'h' & c<361) {
    c=c+5;
  }
  if (key== 'j' & c>0) {
    c=c-5;
  };
  //saturation 
  if (key== 'u' & s<101) {
    s=s+5;
  }
  if (key== 'i' & s>0) {
    s=s-5;
  };
  //brightness
  if (key== 'n' & br<101) {
    br=br+5;
  }
  if (key== 'm' & br>0) {
    br=br-5;
  };
//alpha
  if(key=='t' & o<101){
    o=o+5;
  }
  if(key=='r' & o>0){
    o=o-5;
  }
//color control options
  //red
  if(key=='1'){
   c=0;
   s=100;
   br=100;
  }
  //orange
  if(key=='2'){
   c=39;
   s=100;
   br=100;
  }
  //yellow
  if(key=='3'){
   c=60;
   s=100;
   br=100;
  }
  //green
  if(key=='4'){
   c=120;
   s=100;
   br=50;
  }
  //blue
  if(key=='5'){
   c=240;
   s=100;
   br=50;
  }
  //indigo
  if(key=='6'){
   c=275;
   s=100;
   br=51;
  }
  //violet
  if(key=='7'){
   c=300;
   s=45;
   br=93;
  }
  //black
  if(key=='8'){
   c=0;
   s=0;
   br=0;
  }
  //white
  if(key=='9'){
   c=0;
   s=0;
   br=100;
  }



  
}

void mouseDragged() {
  stroke(c, s, br, o);
  line(pmouseX, pmouseY, mouseX, mouseY);
  println(c,s,br,o);
}
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
 


float w=1, b, c=0, s, br;

void setup() {
  size(1028, 720);
  colorMode(HSB, 100);
  background(0, 0, 100);
  b=100;
}

void draw() {
  fill(30, 20, (b/2+10));
  textSize(12);
  text("shortcuts:", 20, 20);
  text("h and j for control over hue, u and I for control over saturation, and n and m for control over brightness.", 20, 40, 500, 200);
  text("c for clearing the background",20,100);
  text("1=red, 2=orange, 3=yellow, 4=green, 5=blue, 6=indigo, 7=violet, 8=black, white=9", 20,130);
 
 fill(0,0,100);
 rect(590, 25, 180, 70);
 fill(30, 20, (b/2+10));
 text("Current collors Hue Saturation Brightness:",590, 20);
  text("H",600,40);
  text(c,620,40);
  text("S",600,60);
  text(s,620,60);
  text("B",600,80);
  text(br,620,80);
  strokeWeight(w);
  
}

void keyPressed() {
  if (key=='c') {
    background(0, 0, b);
  }
  
  //size
  if (key==']') {
    w=w+1;
  }
  if (key=='['& w>0) {
    w=w-1;
  }
//color control
  colorMode(HSB,360,100,100);
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
  stroke(c, s, br);
  line(pmouseX, pmouseY, mouseX, mouseY);
  println(c,s,br);
}
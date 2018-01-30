//Click and drag 

/*Short Study #3: Uncertain Patterns
 Create a responsive drawing machine in Processing involving user input, conditionals, and randomness. The concept/theme is up to you.
 You may use the previous assignments as a starting point, or begin a completely new sketch.
 The drawing must include the following:
 
 At least one conditional statement using if, else if, and else
 At least one for loop that creates a pattern of some kind
 Use of the random function
 At least one rollover response (hint: see pages 75-83 in Learning Processing)
 Use of at least one of these event functions: keyPressed(), mousePressed(), mouseMoved(), mouseDragged() *
 Attention to aesthetics and visual detail
 Include as a comment at the top of your sketch: your name, title, any instructions for the user
 
 **/
float r=0, x=30;
int i=1;

void setup() {
  size(1028, 720);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 0);
}


void draw() {

//fade control  
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);


//corss color circles
  fill(random(0, 100), 50, 100, 100);
  strokeWeight(20);
  line(514,0,514,720);
  noStroke();

  for ( int i=0; i<40; i++) {
    
    if(pmouseX<514){
    ellipse(pmouseX-i*x, pmouseY, random(10, 20), random(10, 20)); 
    ellipse(pmouseX, pmouseY, random(10, 20), random(10, 20));
    ellipse(pmouseX+i*x, pmouseY, random(10, 20), random(10, 20));
    ellipse(pmouseX, pmouseY+i*x, random(10, 20), random(10, 20));
    ellipse(pmouseX, pmouseY-i*x, random(10, 20), random(10, 20));
    }else{
    ellipse(pmouseX-i*x, pmouseY-i*x, random(10, 20), random(10, 20));
    ellipse(pmouseX+i*x, pmouseY+i*x, random(10, 20), random(10, 20));
    ellipse(pmouseX+i*x, pmouseY-i*x, random(10, 20), random(10, 20));
    ellipse(pmouseX-i*x, pmouseY+i*x, random(10, 20), random(10, 20));
    }  
  }

// background circles
  color(100, 100, 100);
  fill(random(0, 100), 50, 100, 100);
  while (millis()%2==0 & r==0 ) {
    ellipse(random(0, width)*2, random(0, height)*2, random(100, 150), random(100, 150));
    r=1;
  };
  while (millis()%2!=0 & r==1) {
    r=0;
  };

}

void mouseDragged() {
  int out =0;
  fill(random(0, 100), 50, 100, 50);
  ellipseMode(CENTER);
  stroke(random(0, 100), 50, 100, 50);
  strokeWeight(20);
  noFill();
  ellipse(pmouseX, pmouseY, 500, 500);
  
  }
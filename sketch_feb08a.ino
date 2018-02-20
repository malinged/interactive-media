// Example 06A: Blink LED at a rate specified by the
// value of the analogue input
const int LED = 11, sensor; // the pin for the LED
int val = 0, val2=0; // variable used to store the value
 // coming from the sensor
void setup() {
 
 pinMode(LED, OUTPUT); // LED is as an OUTPUT
 // Note: Analogue pins are
 // automatically set as inputs
 Serial.begin(9600);
}
void loop() {
 val2 = analogRead(sensor);
 val = analogRead(0); // read the value from
 // the sensor
 
 

  if(val2>200){
      analogWrite(LED, val2/100);   
    }else if(val2>150){
    analogWrite(LED, val2/4);
    }else if(val2>100){
    analogWrite(LED, val2/100);
    }else if(val2>50){
    analogWrite(LED, val2*10);
    }  
 // turn the LED on
 // stop the program for
 // some time
 //digitalWrite(LED, LOW); // turn the LED off
 //delay(val); // stop the program for
 // some time
}

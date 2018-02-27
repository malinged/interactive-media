// Example 06A: Blink LED at a rate specified by the
// value of the analogue input
const int speak= 11, button=13; 
int val = 0, buttonMod;
bool buttonState=true;
void setup() {
 
 pinMode(speak, OUTPUT); // LED is as an OUTPUT
 pinMode(button, INPUT);
 // Note: Analogue pins are
 // automatically set as inputs
 Serial.begin(9600);
}
void loop() {
 buttonState=digitalRead(button);
    if(buttonState == false){
      buttonMod=0;
      }
    else if(buttonState == true){
      buttonMod=val*2;
      }
 
 val = analogRead(0); // read the value from
 // the sensor
  analogWrite(speak, val*2-buttonMod);
}

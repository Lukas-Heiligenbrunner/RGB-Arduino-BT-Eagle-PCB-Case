/* 
 *  compatible android app https://github.com/Lukas-Heiligenbrunner/RGB-Arduino-BT-App
 *  
 *  Make sure that :
 *  
 *  You disconnect rx & tx wires when you load the program to arduino
 *  and...
 *  BT rx --> Arduino tx
 *  BT tx --> Arduino rx
 *  Have fun!
*/


#include <SoftwareSerial.h>
SoftwareSerial BLU(0,1);

int redLed = 9;           // the Red LED
int greenLed = 5;         // the green LED
int blueLed = 6;          // the blue LED

int Red = 0;
int Green = 0;
int Blue = 0;

int var;
int startstring;
int endstring;

String BT="";
String Red_string;
String Green_string;
String Blue_string;

void setup() {
    pinMode(redLed, OUTPUT);
    pinMode(greenLed, OUTPUT);
    pinMode(blueLed, OUTPUT);
    BLU.begin(9600);
}

void loop(){
    if (BLU.available()>0) {
        translateBT();
    }

}

// Function for setting RGB value
void setrgb() {
    analogWrite(redLed, Red);         // R
    analogWrite(greenLed, Green);     // G
    analogWrite(blueLed, Blue);       // B
}

void translateBT() {                // user written function, action based on BT signal received
  while (BLU.available()) {         
    delay(1);
    BT += (char)BLU.read();
  }

  if ( BT.length() <= 11 ) {       // check if string is in range of xxx/xxx/xxx 11 characters
    startstring=0;
    endstring = 1;
    for ( var=0; var <= (int)BT.length() ; var++ ) {
      if ( BT.charAt(var) == '/' ) {
        if ( endstring == 1 ) {
          Red_string = BT.substring(startstring, var);
        }
        else if ( endstring == 2 ) {
          Green_string = BT.substring(startstring + 1, var);
          Blue_string = BT.substring(var + 1, BT.length());
        }
        startstring = var;
        endstring = endstring + 1;
      }
      else {
        Red = 0;
        Green = 0;
        Blue = 0;
        setrgb();
      }
    }

  Red = Red_string.toInt();
  Green = Green_string.toInt();
  Blue = Blue_string.toInt();
  setrgb();
  BT="";
  BLU.end();          // Flush serial communication
  BLU.begin(9600);    // Restart a fresh serial
  }
  else {
    Red = 0;
    Green = 0;
    Blue = 0;
    setrgb();
  }
}

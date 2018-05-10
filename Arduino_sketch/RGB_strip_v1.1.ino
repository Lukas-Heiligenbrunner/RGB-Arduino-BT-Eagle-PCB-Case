#include <SoftwareSerial.h>

#define PINRED 9
#define PINGREEN 10
#define PINBLUE 11

SoftwareSerial mySerial(A1, A0); // RX, TX

void setup() {
  // Open serial communications and wait for port to open:
  Serial.begin(57600);


  Serial.println("Hello, programm starting up!");

  //initializing softwareserial...
  mySerial.begin(9600);

  pinMode(PINRED,OUTPUT);
  pinMode(PINGREEN,OUTPUT);
  pinMode(PINBLUE,OUTPUT);
}

String result;
String tempcolor;
int red;
int green;
int blue;

char temp;
int i=1;

void loop() {
  if (mySerial.available()) {
    temp = mySerial.read();
    //result.remove(11);
    if(temp == ',')
    {
      blue=hexToDec(tempcolor);
      tempcolor="";
      Serial.println(result);
      result="";
      i=1;
      changecolor(red,green,blue);
    }else
    {
      if(temp == '/')
      {
        if(i==1)
        {
          red =hexToDec(tempcolor);
        }else if(i==2)
        {
          green=hexToDec(tempcolor);
        }
        Serial.println(i);
        
         i++;
         tempcolor="";
      }else 
      {
        tempcolor+=temp;
      }
      result+=temp;
    }
}
}

void changecolor(int r, int g, int b)
{
  analogWrite(PINGREEN,r);
  analogWrite(PINRED,g);
  analogWrite(PINBLUE,b);
  
}

//by benrugg
unsigned int hexToDec(String hexString) {
  
  unsigned int decValue = 0;
  int nextInt;
  
  for (int i = 0; i < hexString.length(); i++) {
    
    nextInt = int(hexString.charAt(i));
    if (nextInt >= 48 && nextInt <= 57) nextInt = map(nextInt, 48, 57, 0, 9);
    if (nextInt >= 65 && nextInt <= 70) nextInt = map(nextInt, 65, 70, 10, 15);
    if (nextInt >= 97 && nextInt <= 102) nextInt = map(nextInt, 97, 102, 10, 15);
    nextInt = constrain(nextInt, 0, 15);
    
    decValue = (decValue * 16) + nextInt;
  }
  
  return decValue;
}


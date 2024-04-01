//Tech Trends Shameer
//Control DC Motor Using Blynk and ESP8266

#define BLYNK_PRINT Serial


#define BLYNK_TEMPLATE_ID "TMPL3z84u2lQ3"
#define BLYNK_TEMPLATE_NAME "Quickstart Template"
#define BLYNK_AUTH_TOKEN "BK9QBET_6Xdh-gSn-l5py7KO4SJMrld0"

#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>

char ssid[] = "MIDAS LEO";  // type your wifi name
char pass[] = "12051205";  // type your wifi password
char auth[] = "BK9QBET_6Xdh-gSn-l5py7KO4SJMrld0";

int ENA = D2;
int IN2 = D1; //GPIO5
int IN1 = D3; //GPIO0 - 
int LED = D4; //GPIO2


int pinValue1;

BLYNK_WRITE(V1)
{
  int pinValue1 = param.asInt();
  analogWrite(ENA,pinValue1);
  Blynk.virtualWrite(V1,pinValue1);
  Serial.print("SPEED VALUE: ");
  Serial.println(pinValue1);
}


void setup(){
  pinMode(ENA, OUTPUT);
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  Serial.begin(9600);
  Blynk.begin(auth,ssid,pass);
  
}

void loop(){
  Blynk.run();
 
}
#include <ESP8266_Lib.h>
#include <BlynkSimpleShieldEsp8266.h>

#define echo 2
#define trig 3

#define c1 A0 //najbardzie prawa
#define c2 A1
#define c3 A2
#define c4 A3
#define c5 A6 //naj lewa

char auth[] = "lnVIdwvH_-dpApSpS-acj-uiqBZpZdTl";
char ssid[] = "ssid";
char pass[] = "passs";

#define EspSerial Serial
#define ESP8266_BAUD 9600

ESP8266 wifi(&EspSerial);

int value;
int flag = 0;
BLYNK_WRITE(V0)
{
  flag = 1;
  value = param.asInt(); // Get value as integer
}

long czas;
int cm;
float c1val = 0;
float c2val = 0;
float c3val = 0;
float c4val = 0;
float c5val = 0;

int P = 0;
int I = 0;
int D = 0;
int error = 0;
int Kp = 25;
int Ki = 0.5;
int Kd = 10;
int previousError = 0;
float PIDvalue = 0;

void setup() {

  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);

  pinMode(c1, INPUT);
  pinMode(c2, INPUT);
  pinMode(c3, INPUT);
  pinMode(c4, INPUT);
  pinMode(c5, INPUT);

  pinMode(5, OUTPUT); // PWM Lewy
  pinMode(8, OUTPUT); // Silnik lewy
  pinMode(7, OUTPUT);


  pinMode(6, OUTPUT); // PWM Prawy
  pinMode(9, OUTPUT); // Silnik Prawy
  pinMode(10, OUTPUT);

  analogWrite(5, 0);
  digitalWrite(7, HIGH); //Silnik nr 1 - obroty w lewo
  digitalWrite(8, LOW);

  digitalWrite(6, 0);
  digitalWrite(9, HIGH); //Silnik nr 2 - obroty w lewo
  digitalWrite(10, LOW);

  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);
  //pinMode(LED_BUILTIN, OUTPUT);

  // Set ESP8266 baud rate
  EspSerial.begin(ESP8266_BAUD);
  delay(10);

  Blynk.begin(auth, wifi, ssid, pass);
  delay(2000);
}


void loop() {
  Blynk.run();
  if (flag == 1)
  {
    flag = 0;
    if (value == 1)
    {
      digitalWrite(13, HIGH);
    }
    else
    {
      digitalWrite(13, LOW);
    }
  }

  pomiar_odleglosci();
  if (cm > 40 && value == 1)
  {
    c1val = mapADC(analogRead(c1));
    c2val = mapADC(analogRead(c2));
    c3val = mapADC(analogRead(c3));
    c4val = mapADC(analogRead(c4));
    c5val = mapADC(analogRead(c5));

    error = getError();
    calculatePID();
    motorControl();
  }
  else
  {
    analogWrite(5, 0);
    analogWrite(6, 0);
  }
}

int getError()
{
  if (c1val > 2.5 && c2val < 2.5 && c3val < 2.5 && c4val < 2.5 && c5val < 2.5) return 4;
  if (c1val > 2.5 && c2val > 2.5 && c3val < 2.5 && c4val < 2.5 && c5val < 2.5) return 3;
  if (c2val > 2.5 && c1val < 2.5 && c3val < 2.5 && c4val < 2.5 && c5val < 2.5) return 2;
  if (c1val < 2.5 && c2val > 2.5 && c3val > 2.5 && c4val < 2.5 && c5val < 2.5) return 1;
  if (c3val > 2.5 && c2val < 2.5 && c1val < 2.5 && c4val < 2.5 && c5val < 2.5) return 0;
  if (c1val < 2.5 && c2val < 2.5 && c3val > 2.5 && c4val > 2.5 && c5val < 2.5) return -1;
  if (c4val > 2.5 && c2val < 2.5 && c3val < 2.5 && c1val < 2.5 && c5val < 2.5) return -2;
  if (c1val < 2.5 && c2val < 2.5 && c3val < 2.5 && c4val > 2.5 && c5val > 2.5) return -3;
  if (c5val > 2.5 && c2val < 2.5 && c3val < 2.5 && c4val < 2.5 && c1val < 2.5) return -4;
}

void calculatePID()
{
  P = error;
  I = I + error;
  D = error - previousError;
  PIDvalue = (Kp * P) + (Ki * I) + (Kd * D);
  previousError = error;
}

void motorControl()
{
  if (PIDvalue >= 127)
  {
    analogWrite(5, 0);
    analogWrite(6, 0);
  } else
  {
    PIDvalue = int(PIDvalue);
    analogWrite(5, 139 + PIDvalue);
    analogWrite(6, 127 - PIDvalue);
  }

}

float mapADC(int adcValue)
{
  return map(adcValue, 0, 1023, 0, 5);
}


void pomiar_odleglosci()
{
  digitalWrite(trig, LOW);        //ustawienie stanu wysokiego na 2 uS - impuls inicjalizujacy - patrz dokumentacja
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);       //ustawienie stanu wysokiego na 10 uS - impuls inicjalizujacy - patrz dokumentacja
  delayMicroseconds(15);
  digitalWrite(trig, LOW);
  digitalWrite(echo, HIGH);
  czas = pulseIn(echo, HIGH);
  cm = czas / 58;                //szerokość odbitego impulsu w uS podzielone przez 58 to odleglosc w cm - patrz dokumentacja
}

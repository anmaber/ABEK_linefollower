#define echo 2
#define trig 3

#define c1 A0 //najbardzie prawa
#define c2 A1
#define c3 A2
#define c4 A3
#define c5 A6 //naj lewa

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
int Ki = 0;
int Kd = 0;
int previousError = 0;
int PIDvalue = 0;

void setup() {
  Serial.begin(9600);                        //inicjalizaja monitora szeregowego

  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);

  pinMode(c1, INPUT);
  pinMode(c2, INPUT);

  pinMode(c3, INPUT);

  pinMode(c4, INPUT);
  pinMode(c5, INPUT);

  // put your setup code here, to run once:
  pinMode(5, OUTPUT); // PWM Lewy
  pinMode(8, OUTPUT); // Silnik lewy
  pinMode(7, OUTPUT);
  //  pinMode(2, OUTPUT);
  //  pinMode(28, OUTPUT);

  pinMode(6, OUTPUT); // PWM Lewy
  pinMode(9, OUTPUT); // Silnik lewy
  pinMode(10, OUTPUT);

  analogWrite(5, 0);
  digitalWrite(7, HIGH); //Silnik nr 1 - obroty w lewo
  digitalWrite(8, LOW);

  digitalWrite(6, 0);
  digitalWrite(9, HIGH); //Silnik nr 1 - obroty w lewo
  digitalWrite(10, LOW);
  delay(2000);



}


void loop() {

  pomiar_odleglosci();
  if (cm < 40)
  {
    analogWrite(5, 0);
    analogWrite(6, 0);

  }
  else
  {

    c1val = mapADC(analogRead(c1));
    c2val = mapADC(analogRead(c2));

    c3val = mapADC(analogRead(c3));

    c4val = mapADC(analogRead(c4));

    c5val = mapADC(analogRead(c5));

    error = getError();
    calculatePID();
    jedzKurwa();


   

    // DZIALALO
//        if (c3val > 2.5)
//        {
//          analogWrite(5, 79);
//          analogWrite(6, 64);
//        }
//        else if (c4val > 2.5)
//        {
//          analogWrite(5, 50);
//          analogWrite(6, 150);
//        } else if (c2val > 2.5)
//        {
//          analogWrite(5, 160);
//          analogWrite(6, 50);
//        }
//        else if (c1val > 2.5)
//        {
//          analogWrite(5, 200);
//          analogWrite(6, 50);
//    
//        } else if (c5val > 2.5)
//        {
//          analogWrite(5, 45);
//          analogWrite(6, 200);
//        }
//        else
//        {
//          analogWrite(5, 0);
//          analogWrite(6, 0);
//        }



    //    if(c1val < 3 && c3val >3 && c5val <3)
    //    {
    //      analogWrite(5, 79);
    //      analogWrite(6, 64);
    //    }
    //    else if(c1val > 3 && c3val >3 && c5val <3)
    //    {
    //      analogWrite(5, 139);
    //      analogWrite(6, 64);
    //    }
    //    else if(c1val < 3 && c3val >3 && c5val >3)
    //    {
    //      analogWrite(5, 79);
    //      analogWrite(6, 127);
    //    }
    //    else
    //    {
    //      analogWrite(5, 0);
    //      analogWrite(6, 0);
    //    }


    //    if (c1val < 0.5 && c2val < 0.5 && c3val > 2.5 && c4val < 0.5 && c5val < 0.5)
    //    {
    //      analogWrite(5, 79);
    //      analogWrite(6, 64);
    //    }
    //
    //        if (c1val < 0.5 && c2val >2.5 && c3val > 2.5 && c4val < 0.5 && c5val < 0.5)
    //    {
    //      analogWrite(5, 139);
    //      analogWrite(6, 64);
    //    }else
    //
    //        if (c1val < 0.5 && c2val < 0.5 && c3val > 2.5 && c4val >2.5 && c5val < 0.5)
    //    {
    //      analogWrite(5, 79);
    //      analogWrite(6, 127);
    //    }


    //        if (c1val < 0.5 && c2val < 0.5 && c3val > 3 && c4val < 0.5 && c5val < 0.5)
    //    {
    //      analogWrite(5, 79);
    //      analogWrite(6, 64);
    //    }
    //        if (c1val < 0.5 && c2val < 0.5 && c3val > 3 && c4val < 0.5 && c5val < 0.5)
    //    {
    //      analogWrite(5, 79);
    //      analogWrite(6, 64);
    //    }


  }
  delay(200);



  //  Obroty silnika przez sekundę do przodu z prędkością 100
  //  analogWrite(5, 64);
  //  analogWrite(6, 64);
  //
  //  delay(5000);
  //
  //  analogWrite(5, 127);
  //  analogWrite(6, 127);
  //
  //  delay(5000);
  //
  //  analogWrite(5, 191);
  //  analogWrite(6, 191);
  //
  //  delay(5000);
}

int getError()
{
  if (c1val > 2.5) return 4;
  if (c2val > 2.5) return 2;
  if (c3val > 2.5) return 0;
  if (c4val > 2.5) return -2;
  if (c5val > 2.5) return -4;

//  if (c1val < 3 && c2val < 3 && c3val < 3 && c4val < 3 && c5val > 3) return -4;
//  if (c1val < 3 && c2val < 3 && c3val < 3 && c4val > 3 && c5val > 3) return -3;
//  if (c1val < 3 && c2val < 3 && c3val < 3 && c4val > 3 && c5val < 3) return -2;
//  if (c1val < 3 && c2val < 3 && c3val > 3 && c4val > 3 && c5val < 3) return -1;
//  if (c1val < 3 && c2val < 3 && c3val > 3 && c4val < 3 && c5val < 3) return 0;
//  if (c1val < 3 && c2val > 3 && c3val > 3 && c4val < 3 && c5val < 3) return 1;
//  if (c1val < 3 && c2val > 3 && c3val < 3 && c4val < 3 && c5val < 3) return 2;
//  if (c1val > 3 && c2val > 3 && c3val < 3 && c4val < 3 && c5val < 3) return 3;
//  if (c1val > 3 && c2val < 3 && c3val < 3 && c4val < 3 && c5val < 3) return 4;

}

void calculatePID()
{
  P = error;
  I = I + error;
  D = error - previousError;
  PIDvalue = (Kp * P) + (Ki * I) + (Kd * D);
  previousError = error;
}

void jedzKurwa()
{
  analogWrite(5, 139 + PIDvalue);
  analogWrite(6, 127 - PIDvalue);
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

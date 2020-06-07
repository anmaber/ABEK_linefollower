#include <ESP8266_Lib.h>
#include <BlynkSimpleShieldEsp8266.h>

// You should get Auth Token in the Blynk App.
// Go to the Project Settings (nut icon).
char auth[] = "lnVIdwvH_-dpApSpS-acj-uiqBZpZdTl";

// Your WiFi credentials.
// Set password to "" for open networks.
char ssid[] = "RedmiAMB";
char pass[] = "aniajestsuper";

// Hardware Serial on Mega, Leonardo, Micro...
#define EspSerial Serial

// Your ESP8266 baud rate:
#define ESP8266_BAUD 9600

ESP8266 wifi(&EspSerial);

int value;
int flag = 0;
BLYNK_WRITE(V0)
{
  flag=1;
  value = param.asInt(); // Get value as integer
}

void setup()
{

  pinMode(13, OUTPUT);
  digitalWrite(13,LOW);
  //pinMode(LED_BUILTIN, OUTPUT);

  // Set ESP8266 baud rate
  EspSerial.begin(ESP8266_BAUD);
  delay(10);

  Blynk.begin(auth, wifi, ssid, pass);
}

void loop()
{
  Blynk.run();
  if(flag == 1)
  {
    flag =0;
  if(value == 1)
  {
      digitalWrite(13,HIGH);
  }
  else
  {
      digitalWrite(13,LOW);
  }
  }
}

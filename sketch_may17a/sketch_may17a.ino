

void setup() {
  // put your setup code here, to run once:
    pinMode(5, OUTPUT); // PWM Lewy
    pinMode(8, OUTPUT); // Silnik lewy
    pinMode(7, OUTPUT);
//  pinMode(2, OUTPUT);
//  pinMode(28, OUTPUT);

    pinMode(6, OUTPUT); // PWM Lewy
    pinMode(9, OUTPUT); // Silnik lewy
    pinMode(10, OUTPUT);


}                                           

                                                                  
void loop() {
 
    //Obroty silnika przez sekundę do przodu z prędkością 100
    digitalWrite(5, 80);
    digitalWrite(7, LOW); //Silnik nr 1 - obroty w lewo
    digitalWrite(8, HIGH);  
//  digitalWrite(27, HIGH);
//  digitalWrite(28, HIGH);


    digitalWrite(6, 80);
    digitalWrite(9, LOW); //Silnik nr 1 - obroty w lewo
    digitalWrite(10, HIGH);  


    delay(3000);

    

    digitalWrite(5, 5);
    digitalWrite(7, HIGH); //Silnik nr 1 - prawo
    digitalWrite(8, LOW); 



    digitalWrite(6, 5);
    digitalWrite(9, HIGH); //Silnik nr 1 - prawo
    digitalWrite(10, LOW); 
    delay(3000);    

//    digitalWrite(10, LOW);
//    digitalWrite(26, HIGH); //Silnik nr 1 - obroty w lewo
//    digitalWrite(25, LOW);  
////  digitalWrite(27, LOW);
////  digitalWrite(28, LOW);
//    delay(3000);
}

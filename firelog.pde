/*
Firelog by Anthony Hook (anthony.hook3@gmail.com)

Takes 5 red LEDs, hooked up to analog pins 5,6,9,10, and 11
and makes them appear to flicker  The original project used
a half of a log, with the LEDs coming out of the crest.

Code is pretty clean, concise, and simple to follow.

Hope you can enjoy.

-Anthony Hook

*/

int candle[5] = {5,6,9,10,11};
 
void setup() {
  for (int i = 0; i < 5; i++) {
    pinMode(candle[i], OUTPUT);
  }
}

void loop() {
  for (int i = 0; i < 5; i++) {
    analogWrite(candle[i], random(160) + 95);
  }
  delay(random(100));
}

//
// This version does now use display, buttons or other fancy stuff and only works as
// a very fundamental thermostat - keeps desired temperature forever
//

#include "max6675.h"

#define PIN_HEATER 3

#define PIN_LCD_CS 10

#define PIN_TC_CS A1
#define PIN_TC_DO 12
#define PIN_TC_CLK 13

#define TARGET_TEMP 105

MAX6675 thermocouple(PIN_TC_CLK, PIN_TC_CS, PIN_TC_DO);

void setup() {
  pinMode(PIN_HEATER, OUTPUT);
  digitalWrite(PIN_HEATER, 0);

  Serial.begin(115200);
  Serial.println("begin");
}

float t;

void loop() {
  t = readThermocouple();
  if ((t < 15) || (t > 260)) {
    Serial.println("Kill heater - something wrong with temperature probe!");
    digitalWrite(PIN_HEATER, LOW);
    delay(10000);
  }

  Serial.print("target C: ");
  Serial.print(TARGET_TEMP);
  Serial.print(" -> ");
  Serial.print("current C: ");
  Serial.print(round(t));
  Serial.print(" -> ");
  
  if (t < TARGET_TEMP) {
    Serial.println("ON!");
    digitalWrite(PIN_HEATER, HIGH);
    delay(500);
    digitalWrite(PIN_HEATER, LOW);
    delay(100);
  } else {
    Serial.println("OFF!");
    digitalWrite(PIN_HEATER, LOW);
    delay(1000);
  }
}

float readThermocouple() {
  digitalWrite(PIN_LCD_CS, HIGH);
  digitalWrite(PIN_TC_CS, LOW);
  delay(1);
  float temperature = thermocouple.readCelsius();

  if (temperature == NAN) {
    Serial.println("Unable to read temperature!");
    temperature = -100;
  }

  digitalWrite(PIN_TC_CS, HIGH);
  return temperature;
}

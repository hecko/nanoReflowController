//
// This version does not use display, buttons or other fancy stuff and only works as
// a very fundamental baker - reach TARGET_TEMP, tne turn FAN on and then end forever until reset
//

#include "max6675.h"

#define PIN_HEATER 3

#define PIN_LCD_CS 10

#define PIN_TC_CS A1
#define PIN_TC_DO 12
#define PIN_TC_CLK 13
#define FAN_PIN A0

#define TARGET_TEMP 250

MAX6675 thermocouple(PIN_TC_CLK, PIN_TC_CS, PIN_TC_DO);

void setup() {
  pinMode(PIN_HEATER, OUTPUT);
  pinMode(FAN_PIN, OUTPUT);

  digitalWrite(PIN_HEATER, 0);

  Serial.begin(115200);
  Serial.println("begin");
}

float t = 100;

void loop() {
  t = readThermocouple();
  if ((t < 5) || (t > 260)) {
    Serial.println("Kill heater - something wrong with temperature probe!");
    digitalWrite(PIN_HEATER, LOW);
    while (1) {};
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
  } else {
    Serial.println("Temperature reached - turning OFF forever!");
    fan_on();
    digitalWrite(PIN_HEATER, LOW);
    while (1) {
      Serial.println("Temperature reached - turning OFF forever!");
      t = readThermocouple();
      Serial.print("Current C: ");
      Serial.println(round(t));
      if (t < 45) {
        fan_off();
      }
    }
  }
}

void fan_on() {
  Serial.println("Turning FAN ON!");
  analogWrite(FAN_PIN, 255);
}

void fan_off() {
  Serial.println("Turning FAN OFF!");
  analogWrite(FAN_PIN, 0);
}

float readThermocouple() {
  digitalWrite(PIN_LCD_CS, HIGH);
  digitalWrite(PIN_TC_CS, LOW);
  delay(10); // otherwise does not work!!
  float temperature = thermocouple.readCelsius();
  delay(1000); // otherwise does not work!!

  if (temperature == NAN) {
    Serial.println("Unable to read temperature!");
    temperature = -100;
  }

  digitalWrite(PIN_TC_CS, HIGH);
  return temperature;
}

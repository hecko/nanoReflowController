//
// This version does not use display, buttons or other fancy stuff and only
// works as a very fundamental baker - reach TARGET_TEMP, tne turn FAN on and
// then end forever until reset
//

#include "max6675.h"
#include <TM1637Display.h>

#define PIN_HEATER 3

#define PIN_LCD_DIO 4
#define PIN_LCD_CLK 5

#define PIN_TC_CS A1
#define PIN_TC_DO 12
#define PIN_TC_CLK 13
#define FAN_PIN A0
#define BUZZER_PIN A5

#define TARGET_TEMP 240

TM1637Display display(PIN_LCD_CLK, PIN_LCD_DIO);
MAX6675 thermocouple(PIN_TC_CLK, PIN_TC_CS, PIN_TC_DO);

void setup() {
  pinMode(PIN_HEATER, OUTPUT);
  pinMode(FAN_PIN, OUTPUT);
  pinMode(BUZZER_PIN, OUTPUT);

  display.setBrightness(0x0f);
  display.showNumberDec(8888, false);

  tone(BUZZER_PIN, 4000);
  delay(100);
  noTone(BUZZER_PIN);

  digitalWrite(PIN_HEATER, 0);

  Serial.begin(115200);
  Serial.println("begin");
}

float t = 100;

void loop() {
  t = -1;
  t = readThermocouple();
  if ((t > 260) || (t <= 0)) {
    Serial.println("Kill heater - something wrong with temperature probe!");
    Serial.print("current C: ");
    Serial.println(round(t));
    digitalWrite(PIN_HEATER, LOW);
    while (1) {
      tone(BUZZER_PIN, 4000);
      delay(2000);
      noTone(BUZZER_PIN);
      delay(1000);
    };
  }

  Serial.print("target C: ");
  Serial.print(TARGET_TEMP);
  Serial.print(" -> ");
  Serial.print("current C: ");
  Serial.print(round(t));
  Serial.print(" -> ");
  display.clear();
  delay(50); // ak tu toto nie je senzor vracia stale tu istu hodnotu!
  display.showNumberDec(t, false);

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
      display.clear();
      delay(50);
      display.showNumberDec(t, false);
      if (t < 150 && t >= 45) {
        // part can be taken from the heating lamp
        tone(BUZZER_PIN, 6000);
        delay(50);
        noTone(BUZZER_PIN);
        delay(5000);
      }
      if (t < 45) {
        fan_off();
        tone(BUZZER_PIN, 4000);
        delay(1000);
        noTone(BUZZER_PIN);
        delay(15000);
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
  digitalWrite(PIN_TC_CS, LOW);
  delay(100); // otherwise does not work!!
  float temperature = thermocouple.readCelsius();
  delay(100); // otherwise does not work!!

  if (temperature == NAN) {
    Serial.println("Unable to read temperature!");
    temperature = -100;
  }

  digitalWrite(PIN_TC_CS, HIGH);
  return temperature;
}

#include "max6675.h"
#include <TM1637Display.h>
#include <PID_v1.h>

#define PIN_HEATER 3

#define PIN_LCD_DIO 4
#define PIN_LCD_CLK 5

#define PIN_TC_CS A1
#define PIN_TC_DO 12
#define PIN_TC_CLK 13
#define FAN_PIN A0
#define BUZZER_PIN A5

#define TARGET_TEMP 40

TM1637Display display(PIN_LCD_CLK, PIN_LCD_DIO);
MAX6675 thermocouple(PIN_TC_CLK, PIN_TC_CS, PIN_TC_DO);

double pidSetpoint;
double pidInput = 25;
double pidOutput;
PID myPID(&pidInput, &pidOutput, &pidSetpoint, 2, 5, 1, DIRECT);

double t;

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

  pidSetpoint = TARGET_TEMP;
  myPID.SetMode(AUTOMATIC);
}

void loop() {
  t = -1;
  t = readThermocouple();
  t = readThermocouple();
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

  pidInput = t;
  myPID.Compute();

  Serial.print("TARGET_TEMP:");
  Serial.print(TARGET_TEMP);
  Serial.print(";");
  Serial.print("CURRENT_TEMP:");
  Serial.print(t);
  Serial.print(";");
  Serial.print("PID_OUTPUT:");
  Serial.print(pidOutput);
  Serial.print(";");
  Serial.println();

  display.clear();
  display.showNumberDec(t, false);

  analogWrite(PIN_HEATER, pidOutput);
  delay(50); // ak tu toto nie je senzor vracia stale tu istu hodnotu!
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
  delay(300); // otherwise does not work!!
  float temperature = thermocouple.readCelsius();
  delay(300); // otherwise does not work!!

  if (temperature == NAN) {
    Serial.println("Unable to read temperature!");
    temperature = -100;
  }

  digitalWrite(PIN_TC_CS, HIGH);
  return temperature;
}

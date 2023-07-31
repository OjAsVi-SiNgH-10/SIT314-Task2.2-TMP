const int TMP_PIN = A0;    // Connect TMP36 to analog pin A0

void setup() {
  Serial.begin(9600);
}

void loop() {
  // Read the raw analog value from TMP36
  int rawValue = analogRead(TMP_PIN);

  // Convert the raw value to voltage (in millivolts)
  float voltage = (rawValue / 1023.0) * 5000.0;

  // Convert voltage to temperature in Celsius
  float temperatureCelsius = (voltage - 500.0) / 10.0;

  // Print the temperature
  Serial.print("Temperature: ");
  Serial.print(temperatureCelsius);
  Serial.println(" °C");

  delay(10000); // Wait for 10 seconds before taking the next reading
}

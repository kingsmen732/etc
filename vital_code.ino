int ENA = 2; // Assuming ENA is connected to pin 9
int IN1 = 3; // Assuming IN1 is connected to pin 10
int IN2 = 4; // Assuming IN2 is connected to pin 11

void setup() {
  pinMode(ENA, OUTPUT);
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  Serial.begin(9600); // Start serial communication
  while (!Serial) {
    ; // Wait for serial port to connect
  }
  Serial.println("Enter speed (0-255) and duration (in milliseconds) separated by space:");
}

void loop() {
  if (Serial.available() > 0) {
    int speed, duration;
    speed = Serial.parseInt();
    duration = Serial.parseInt();
    
    // setDirection(speed, duration);
    // delay(5000);
    
    changeSpeed(speed, duration);
    delay(5000);
  }
}

// void setDirection(int speed, int duration) {
//   analogWrite(ENA, speed);

//   digitalWrite(IN1, HIGH);
//   digitalWrite(IN2, LOW);
//   delay(duration);
  
//   digitalWrite(IN1, LOW);
//   digitalWrite(IN2, HIGH);
//   delay(duration);
  
//   digitalWrite(IN1, LOW);
//   digitalWrite(IN2, LOW);
// }

void changeSpeed(int speed, int duration) {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  
  for (int i = 0; i < 256; i++) {
    analogWrite(ENA, i);
    delay(duration/256);
  }
  
  for (int i = 255; i >= 0; --i) {
    analogWrite(ENA, i);
    delay(duration/256);
  }
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
}

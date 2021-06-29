int in1 = A0;
int in2 = A1;
int Incoming_value = 0;
int del = 100;

void setup() {
  Serial.begin(9600);
  pinMode(in1,INPUT);
  pinMode(in2,INPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT); 
  pinMode(13, OUTPUT);  
}

void loop() {
  //Map the value from 10 bits to 8 bits:
  
  byte val1 = map(analogRead(in1),0,1024.0,0,255);
  byte val2 = map(analogRead(in2),0,1024.0,0,255);
  byte a[] = {val1, val2};
  Serial.write(a, 2);
  delay(del);

    if(Serial.available() > 0) {
      
    Incoming_value = (Serial.read());      
     
    if(Incoming_value == 'a'){             
      digitalWrite(13, HIGH);
      digitalWrite(12, LOW);
      digitalWrite(11, LOW);
    } else if(Incoming_value == 'b') {      
      digitalWrite(13, LOW); 
      digitalWrite(12, HIGH);
      digitalWrite(11, LOW);
    }else if(Incoming_value == 'c') {     
      digitalWrite(13, LOW); 
      digitalWrite(12, LOW);
      digitalWrite(11, HIGH);
    }
    
    if(Incoming_value < 90){
      del = (Incoming_value - 48) * 10;
    }
  }      
}

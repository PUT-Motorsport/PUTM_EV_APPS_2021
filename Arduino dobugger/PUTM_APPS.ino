int in = A0;
int Incoming_value = 0;
int del = 200;

void setup() {
  Serial.begin(9600);
  pinMode(in,INPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT); 
  pinMode(13, OUTPUT);  
}

void loop() {
  //Map the value from 10 bits to 8 bits:
  
  byte val = map(analogRead(in),0,1024.0,0,255);
  Serial.write(val);
  delay(del);

    if(Serial.available() > 0) {
      
    Incoming_value = (Serial.read());      
    Serial.print(Incoming_value);        
    Serial.print("\n");    
        
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
      del = (Incoming_value - 48) * 100;
    }
  }      
}

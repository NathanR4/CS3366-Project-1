
PFont font, digital, braille;
boolean b1, b2, b3, b4, b5, b6, b7, delay, help = false;
int currentFloor = 1;
int floorSelected;

void setup() {
  PShape fireHat = loadShape("fire.svg");
  PShape phone = loadShape("phone.svg");
  size(600,850);  
  font = createFont("Arial", 16, true);
  braille = createFont("BRAILLE.ttf", 20, true);
  digital = createFont("digital-7.ttf", 20, true);
  fireHat = loadShape("fire.svg");
  fireHat.disableStyle();

  
  textFont(font, 28);
  fill(#A9A9A9);
  rect(0, 0, 610, 860);  
  fill(#848884);
  rect(60, 350, 480, 470);  
  fill(#708090);
  
  int barHeight = 50;
  for(int i = 0; i < 3; i++) {
    rect(60, barHeight, 480, 70, 8,8,8,8);
    barHeight += 100;
  }
  
  fill(#C0C0C0);
  ellipse(290, 185, 40, 40);
  ellipse(290, 185, 20, 20);
  fill(0);
  rect(65, 55, 470, 60, 8,8,8,8);
  fill(#DC2700);
  textFont(font, 20);
  text("FIRE PANEL", 120, 175);
  fill(0);
  textFont(font, 16);
  text("PUSH BUTTON FOR", 110, 270);
  shape(phone, 350, 265, 40, 40);
  textFont(braille, 20);
  text("Phone", 400, 270, 40, 40);
  textFont(font, 20);
  fill(#DC2700);
  text("HELP", 160, 295);
  shape(fireHat, 160, 185, 50, 30);
  fill(255);
  rect(470, 255, 60, 60, 8,8,8,8);



  textFont(font, 28);
  int labelHeight = 430;
  int floorHeight = 420;
  for(int j = 3; j > 0; j--) {
    fill(255);
    ellipse(290, floorHeight, 80, 80);
    fill(0);
    text(j, 284, labelHeight);
    labelHeight += 100;
    floorHeight += 100;
  }
  
  int buttonSpacing = 165;
  for(int j = 0; j < 3; j++) {
    fill(255);
    ellipse(buttonSpacing, 750, 80, 80);
    buttonSpacing += 125;
  }
}

void restoreButtons() {
  PShape open, close, bell;
  open = loadShape("open.svg");
  close = loadShape("close.svg");
  bell = loadShape("bell.svg");
  textFont(font, 28);
  int labelHeight = 430;
  int floorHeight = 420;
  for(int j = 3; j > 0; j--) {
    fill(255);
    ellipse(290, floorHeight, 80, 80);
    fill(0);
    text(j, 284, labelHeight);
    labelHeight += 100;
    floorHeight += 100;
  }
  
  int buttonSpacing = 165;
  for(int j = 0; j < 3; j++) {
    fill(255);
    ellipse(buttonSpacing, 750, 80, 80);
    buttonSpacing += 125;
  }
  fill(0);
   shape(open, 115, 700, 100,100);
   fill(0);
   shape(bell, 251, 708, 80,80);
   fill(0);
   shape(close, 365, 700, 100,100);
}

void showLabels() {
  textFont(font, 28);
  int labelHeight = 430;
  for(int j = 3; j > 0; j--) {
    fill(255);
    fill(0);
    text(j, 284, labelHeight);
    labelHeight += 100;
  } 
}

void draw() {
  PShape up, down, open, close, bell;
  up = loadShape("up.svg");
  down = loadShape("down.svg");
  open = loadShape("open.svg");
  close = loadShape("close.svg");
  bell = loadShape("bell.svg");
  up.disableStyle();
  down.disableStyle();
    
  textFont(digital, 42);
  fill(0);
  rect(65, 55, 470, 60, 8,8,8,8);
  fill(#DC2700);
  text(currentFloor, 305, 100);
   fill(0);
   shape(open, 115, 700, 100,100);
   fill(0);
   shape(bell, 251, 708, 80,80);
   fill(0);
   shape(close, 365, 700, 100,100);

  if(mouseY > 420 - 80 && mouseY < 420 + 80) {
     b3 = true;
     
   }
   else {
     b3 = false;
   }
  if(mouseY > 520 - 80 && mouseY < 520 + 80) {
     b2 = true;
     
   }
   else {
     b2 = false;
   }
  if(mouseY > 620 - 80 && mouseY < 620 + 80) {
     b1 = true;
     
   }
   else {
     b1 = false;
   }
   if( mouseX > 470 - 50 && mouseX < 470 + 50 &&
       mouseY > 255 - 30 && mouseY < 255 + 30) {
         b6 = true;
   }
   else {
     b6 = false;
   }
   
   if(currentFloor < floorSelected && currentFloor != floorSelected) {
     shape(up, 260, 75, 25, 25);
     if(b2) {
       currentFloor += 1;
     }
     if(b3) {
       currentFloor += 2;
     }
     
   }
   if(currentFloor == 4)
     currentFloor --;
    
   if(currentFloor > floorSelected && currentFloor != 1) {
     shape(down, 260, 75, 25, 25);
     if(b2) {
       currentFloor -= 1;
     }
     if(b1) {
       if(currentFloor == 3)
         currentFloor -= 2;
       if(currentFloor == 2)
         currentFloor -= 1;
     }
   if(currentFloor == 0)
     currentFloor ++;
     
   }
   if(currentFloor == 4)
     currentFloor --;
     
   if(help) {
     fill(#DC2700);
     rect(470, 255, 60, 60, 8,8,8,8);
   }
   else {
     fill(255);
     rect(470, 255, 60, 60, 8,8,8,8);
   }

   if( mouseX > 115 - 80 && mouseX < 115 + 80 && mouseY > 700) {
         b4 = true;
   }
   else {
     b4 = false;
   }
   if( mouseX > 251 - 80 && mouseX < 251 + 80 && mouseY > 700) {
         b5 = true;
   }
   else {
     b5 = false;
   }
   if( mouseX > 365 - 80 && mouseX < 365 + 80 && mouseY > 700) {
         b7 = true;
   }
   else {
     b7 = false;
   }
   
   if(delay) {
    delay(1000);
    restoreButtons();
    delay = false;
   }
   delay(1000);
}

void mousePressed() {
  PShape open, close, bell;
  open = loadShape("open.svg");
  close = loadShape("close.svg");
  bell = loadShape("bell.svg");
  if(b3) {
    fill(#DC2700);
    ellipse(290, 420, 80, 80);
    showLabels();
    floorSelected = 3;
    delay = true;
  }
  if(b2) {
    fill(#DC2700);
    ellipse(290, 520, 80, 80);
    showLabels();
    floorSelected = 2;
    delay = true;
  }
  if(b1) {
    fill(#DC2700);
    ellipse(290, 620, 80, 80);
    showLabels();
    floorSelected = 1;
    delay = true;
  }
  if(b4) {
    fill(#DC2700);
    ellipse(165, 750, 80, 80);
    fill(0);
    shape(open, 115, 700, 100,100);
    delay = true;
  }
  if(b5) {
    fill(#DC2700);
    ellipse(290, 750, 80, 80);
    fill(0);
    shape(bell, 251, 708, 80,80);
    delay = true;
  }
  if(b7) {
    fill(#DC2700);
    ellipse(415, 750, 80, 80);
    fill(0);
    shape(close, 365, 700, 100,100);
    delay = true;
  }
  if(b6) {
    help = !help;
  }
  
}

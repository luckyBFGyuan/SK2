 int button1Color=100;
 int button2Color=125;
void setup(){
  size(300,300);
}
void draw(){
  fill(button1Color);
  rect(40, 40, 40, 40);
  fill(button2Color);
 rect(80, 80, 80, 80);
  button1Color = color(255, 0, 0);
    if (mouseX > 40 && mouseX < 40+40 &&
    mouseY > 40 && mouseY < 40+40) {
    button1Color = color(255, 0, 0);
    if(mousePressed){
         button1Color = color(random(255), random(255), random(255));
    }
    if(mousePressed){
         button1Color = color(random(255), random(255), random(255));
    }
  button1Color = color(100);
    }
     float distance1 = dist(40, 40, mouseX, mouseY);
  if ( distance1 < 20) { 
    button1Color = color(255, 0, 0);
    if (mousePressed) {
      button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }
  if (mouseX > 80 && mouseX < 80+80 &&
    mouseY > 80 && mouseY < 80+80) {
    button2Color = color(255, 0, 0);
    if(mousePressed){
         button2Color = color(random(255), random(255), random(255));
    }
    if(mousePressed){
         button2Color = color(random(255), random(255), random(255));
    }
  button2Color = color(100);
    }
     float distance2 = dist(80, 80, mouseX, mouseY);
  if ( distance2 < 40) { 
    button2Color = color(255, 0, 0);
    if (mousePressed) {
      button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(100);
}
}
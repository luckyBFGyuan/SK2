 int buttonColor=100;
void setup(){
  size(300,300);
}
void draw(){
  fill(buttonColor);
  rect(40, 40, 40, 40);
  buttonColor = color(255, 0, 0);
    if (mouseX > 40 && mouseX < 40+40 &&
    mouseY > 40 && mouseY < 40+40) {
    buttonColor = color(255, 0, 0);
    if(mousePressed){
         buttonColor = color(random(255), random(255), random(255));
    }
    if(mousePressed){
         buttonColor = color(random(255), random(255), random(255));
    }
  buttonColor = color(100);
    }
     float distance = dist(40, 40, mouseX, mouseY);
  if ( distance < 20) { //mouse hover
    buttonColor = color(255, 0, 0);
    if (mousePressed) {
      buttonColor = color(random(255), random(255), random(255));
    }
  } else {
    buttonColor = color(100);
  }
    
}
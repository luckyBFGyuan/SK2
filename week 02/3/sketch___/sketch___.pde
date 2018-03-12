int checkStates(float bx, float by, float w, float h) {
  int result;
  if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {
    //buttonColor = color(255, 0, 0);
    result=1;

    if (mousePressed) {//click
      // buttonColor = color(random(255), random(255), random(255));
      result=2;
    }
  } else {
    result=0;
  }
  return result;
}
int buttonColor=100;
float bx, by, w, h;
void setup() {
  size(300, 300);
  background(100);

  w=20;
  h=20;
}
void draw() {
  for (int bx=0; bx<width; bx +=2*w) {
    for (int by=0; by<height; by +=2*h) {

      int states = checkStates(bx, by, w, h);
      switch(states) {
      case 0:
        buttonColor = color(100);
        break;
      case 1:
        buttonColor = color(255, 0, 0);
        break;
      case 2:
        buttonColor = color(random(255), random(255), random(255));
        break;
      }
      fill (buttonColor);
      rect(bx, by, w, h);
    }
  }
}
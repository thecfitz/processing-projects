int startX = 20;
int stopX = 160;
int startY = 30;
int stopY = 80;
float x = startX;
float y = startY;
float step = .005;
float pct = .0;

void setup() {
  size(240, 120);
}

void draw() {
  background(0);
  if (pct < 1.0) {
    x = startX + ((stopX-startX) * pct);
    y = startY + ((stopY-startY) * pct);
    pct += step;
  }
  ellipse(x, y, 20, 20);
}

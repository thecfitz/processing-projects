void setup() {
  size(480, 120);
}

void draw() {
  background(176, 204, 226);
  randomSeed(0);
  for (int i = 35; i < width + 40; i += 40) {
    int gray = int(random(0, 102));
    float scalar = random(.25, 1);
    owl(i, 110, gray, scalar);
  }
}

void owl(int x, int y, int g, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  stroke(138-g, 138-g, 125-g);
  strokeWeight(70);
  line(0, -35, 0, -65);
  noStroke();
  fill(255);
  ellipse(-17.5, -65, 35, 35);
  ellipse(17.5, -65, 35, 35);
  arc(0, -65, 70, 70, 0, PI);
  fill(51, 51, 30);
  ellipse(-14, -65, 8, 8);
  ellipse(14, -65, 8, 8);
  quad(0, -58, 4, -51, 0, -44, -4, -51);
  popMatrix();
}

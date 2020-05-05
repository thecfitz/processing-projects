void setup() {
 float yourWeight = 220;
 float marsWeight = calculateMars(yourWeight);
 println(marsWeight);
}

float calculateMars(float w) {
  float newWeight = w * .38;
  return newWeight;
}

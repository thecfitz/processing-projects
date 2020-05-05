void setup() {
  size(480,260);
  line(0, 150, 480, 150);
  
  
  //hand1
  ellipse(60, 165, 10, 30);
  ellipse(72, 165, 10, 30);
  ellipse(84, 165, 10, 30);
  ellipse(96, 165, 10, 30);
  arc(80, 150, 50, 30, PI, 4*PI);

  
  //head
  arc(180, 150, 90, 150, PI, 2*PI);
  arc(180, 140, 30, 190, 0, PI);
  fill(0);
  ellipse(160, 100, 10, 10);
  ellipse(200, 100, 10, 10);
  
  //hand2
  fill(255);
  ellipse(260, 165, 10, 30);
  ellipse(272, 165, 10, 30);
  ellipse(284, 165, 10, 30);
  ellipse(296, 165, 10, 30);
  arc(280, 150, 50, 30, PI, 4*PI);
  
  //text
  textSize(32);
  fill(0);
  text("kilroy", 240, 30);
  text("was", 240, 60);
  text("here", 240, 90);
  
}

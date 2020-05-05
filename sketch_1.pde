class Robot {
  String name;
  String Color;
  int weight;
  
  Robot(String n, String c, int w) {    //constructor
    this.name = n;
    this.Color = c;
    this.weight = w;
  }
  
  void introduceSelf() {
    System.out.println("My name is " + this.name);
  }
  
  Robot r1 = 
  new Robot("Tom", "Red", 30);
  
}

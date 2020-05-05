

class Snake {
  
  //variables
  int len;
  int wid;
  int xpos;
  int ypos;
  Food f;
  
  //constructor
  Snake(int x,int y, int len, int wid) {
    this.len = len;
    this.wid = wid;
    this.xpos = x;
    this.ypos = y;
    rect(xpos, ypos, wid, len);
    f = new Food();
  
  }
  
  
  //clear screen
  
   void  update() {
    background(255);
    rectMode(CENTER);
    rect(mouseX, mouseY, wid, len);
  }
  
  //lengthen snake
  int num = 60;
  int[] x = new int[num];
  int[] y = new int[num];
  //Food f;
 
  void addSnake() {
    for (int i = x.length-1; i > 0; i--) {
      x[i] = x[i-1];
      y[i] = y[i-1];
    }
    x[0] = mouseX;
    y[0] = mouseY;
    if( (mouseX > f.xcord) && (mouseX < f.xcord + f.wid) &&
        (mouseY > f.ycord) && (mouseY < f.ycord + f.len)) {
        rect(x[x.length-1], y[y.length-1], wid, len);
     
} 
  }

}


public class Food {
  
  //variables
  int xcord;
  int ycord;
  int wid;
  int len;
  
  //constructor
  Food() {
    this.xcord = int(random(width - 5));
    this.ycord = int(random(height - 5));
    this.wid = 10;
    this.len = 10;
    rect(xcord, ycord, wid, len);
  }
    
    //update food position
    
    
    void update() {
    if( (mouseX > xcord) && (mouseX < xcord + wid) &&
        (mouseY > ycord) && (mouseY < ycord + len)) {
      xcord = int(random(width - 5));
      ycord = int(random(height - 5));
      
    }
    
    }
    
    //display food
    void displayFood() {
      rect(xcord, ycord, 10, 10);
    }
}
    
    

Snake s;
Food f;
void setup() {
    background(255);
     s = new Snake(mouseX, mouseY, 10, 10);
     f = new Food();
  }
  
  
void draw() {
  s.update();
  f.update();
  s.addSnake();
  f.displayFood();
  }

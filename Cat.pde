class Cat {
  float xPos;
  float yPos;
  PImage image;
  
  String name;
  String location;
  String pattern;
  String age;
  String personality;
  
  Cat(String a, String b, String c, String d, String e) { //, float f, float g) {
    name = a;
    location = b;
    pattern = c;
    age = d;
    personality = e;
    //xPos = f;
    //yPos = g;
  }
  
  //==========================================================
  void set_xPos(float x) {
    xPos = x;
  }
  
  float get_xPos() {
    return xPos;
  }
  //----------------------------------------------------------
  void set_yPos(float y) {
    yPos = y;
  }
  
  float get_yPos() {
    return yPos;
  }
  //----------------------------------------------------------
  void displayData() {
    //fill(255);
  //stroke(0,0,255);
  //translate(xPos, yPos)
  //rect(button.getX(), button.getY(), 100, 100);
  //fill(0);
  //text(this.name, this.xPos, this.yPos);
  }
  
} // end of Cat class

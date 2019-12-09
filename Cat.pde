class Cat {
  float xPos;
  float yPos;
  PImage image;
  
  String name;
  String location;
  String pattern;
  String age;
  String personality;
  
  Cat(String a, String b, String c, String d, String e) {
    name = a;
    location = b;
    pattern = c;
    age = d;
    personality = e;
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
    println(this.name + " is " + this.pattern + " and is " + this.age + " and is " + this.personality); 
  }
  
} // end of Cat class

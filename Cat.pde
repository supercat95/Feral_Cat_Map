class Cat {
  float xPos;
  float yPos;
  PImage image;
  
  String name;
  String location;
  String pattern;
  String age;
  String personality;
  
  Cat(String name, String location, String pattern, String age, String personality, float xPos, float yPos) {
    name = name;
  }
  
  void displayData() {
    //fill(255);
  //stroke(0,0,255);
  //rect(button.getX(), button.getY(), 100, 100);
  fill(0);
  text(name, xPos, xPos);
  }
  
} // end of Cat class

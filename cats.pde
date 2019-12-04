import g4p_controls.*;

String[] cats2;

PImage map;
PImage cat1;
PImage cat2;
String[] cats;

GImageButton button;
float xPos;
float yPos;

void setup() {
  size(457,722);
  map = loadImage("map.png");
  
  cats2 = loadStrings("cats2.xml");
  
  String pinkCat = "pinkButton1.png";
  cat1 = loadImage(pinkCat);
  String greenCat = "greenButton1.png";
  cat2 = loadImage(greenCat);
  cats = new String[]{pinkCat, greenCat};

}

void draw() {
  background(map);
  drawSymbol(width/2, height/2);
  
  fill(#1D94F2);
  textSize(15);
  text(pmouseX, 15, 10);
  text(pmouseY, 15, 30);
}

String findData(String string, String start, String end) {
  int startIndex = string.indexOf(start);
  int endIndex = string.indexOf(end, startIndex);
  return string.substring(startIndex + start.length(), endIndex);
}

void drawSymbol(float x, float y) {
  button = new GImageButton(this, x, y, cats);
}

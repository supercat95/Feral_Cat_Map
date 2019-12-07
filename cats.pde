import g4p_controls.*;

String catData[];
int numberOfCats = 28;
String word;

PImage map;
PImage cat1;
PImage cat2;
String[] cats;

int[] coords = {378,19, 199,271, 300,155, 173,311, 143,570, 340,541, 254,368, 291,366, 372,289, 189,71, 99,381, 97,95, 35,84, 215,194, 229,188};

GImageButton button;
float xPos;
float yPos;

void setup() {
  size(457,722);
  map = loadImage("map.png");
  
  catData = loadStrings("cats.xml");
  
  String pinkCat = "pinkButton1.png";
  cat1 = loadImage(pinkCat);
  String greenCat = "greenButton1.png";
  cat2 = loadImage(greenCat);
  cats = new String[]{pinkCat, greenCat};


  background(map);
  for (int i = 0; i < coords.length; i+=2) {
    drawSymbol(coords[i], coords[i+1]);  
  }
}

void draw() {
  //background(map);
  //for (int i = 0; i < coords.length/2; i++) {
  //  drawSymbol(coords[i], coords[i+1]);
  //}
  fill(0);
  rect(0,0,50,50);
  
  fill(#1D94F2);
  textSize(15);
  text(pmouseX, 15, 20);
  text(pmouseY, 15, 40);
  
  //println(numberOfEntries("Name:"));
}


//int numberOfEntries(String word) {
//  for (String s: catData) {
//    if(s.equals(word)) {
//      numberOfCats++;
//    }
//  }
//  return numberOfCats;
//}

String findData(String string, String start, String end) {
  int startIndex = string.indexOf(start);
  int endIndex = string.indexOf(end, startIndex);
  return string.substring(startIndex + start.length(), endIndex);
}

void drawSymbol(float x, float y) {
  button = new GImageButton(this, x - 15, y - 15, cats);
}

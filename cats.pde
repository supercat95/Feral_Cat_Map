import g4p_controls.*;

JSONArray catData;
JSONObject cat;
Cat[] cats;
int numberOfCats = 28;
String word;

PImage map;
PImage catButton1;
PImage catButton2;
String[] catButtons;

int[] coords = {378,19, 199,271, 300,155, 173,311, 143,570, 340,541, 254,368, 291,366, 372,289, 189,71, 99,381, 97,95, 35,84, 215,194, 229,188};

GImageButton button;
float xPos;
float yPos;

void setup() {
  size(457,722);
  map = loadImage("map.png");
  
  JSONstuff();
  
  String pinkCat = "pinkButton1.png";
  catButton1 = loadImage(pinkCat);
  String greenCat = "greenButton1.png";
  catButton2 = loadImage(greenCat);
  catButtons = new String[]{pinkCat, greenCat};

  background(map);
  for (int i = 0; i < coords.length; i+=2) {
    drawSymbol(coords[i], coords[i+1]);  
  }
  
  println(cats.length); // good
}

void draw() {
  fill(0);
  rect(0,0,50,50); 
  fill(#1D94F2);
  textSize(15);
  text(pmouseX, 15, 20);
  text(pmouseY, 15, 40);
  
}

//String findData(String start, String end) {
//  int startIndex = catData.indexOf(start);
//  int endIndex = catData.indexOf(end, startIndex);
//  return catData.substring(startIndex + start.length(), endIndex);
//}

void JSONstuff() {
  JSONObject data = loadJSONObject("cats.json");
  catData = data.getJSONArray("cats");
  
  cats = new Cat[catData.size()];
  
  for (int i = 0; i < catData.size(); i++) {
    for (int j = 0; j < coords.length; j+=2){
      JSONObject cat = catData.getJSONObject(i);
      String name = cat.getString("Name");
      String location = cat.getString("Location");
      String pattern = cat.getString("Pattern");
      String age = cat.getString("Age");
      String personality = cat.getString("Personality");
      
      cats[i] = new Cat(name, location, pattern, age, personality, coords[j], coords[j+1]);
    }  
  }
}

void drawSymbol(float x, float y) {
  button = new GImageButton(this, x - 15, y - 15, catButtons);
}

void handleButtonEvents(GImageButton button, GEvent event) {
  if (button == button && event == GEvent.CLICKED) {
    for (int i = 0; i < coords.length; i+=2) {
      if (pmouseX < coords[i] + 15 && pmouseX > coords[i] - 15 && pmouseY < coords[i + 1] + 15 && pmouseX > coords[i + 1] - 15) {
        
      }
    }
  }
}

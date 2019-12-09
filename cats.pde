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
  setCoordsForCats();  
  createButtons();
  
  background(map);
  for (int i = 0; i < coords.length; i+=2) {
    drawSymbol(coords[i], coords[i+1]);
    fill(0);
  // figure out how many cats are at each location, then text(num, coords[i], coords[i+1);
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
//==========================================================
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
      JSONObject cat = catData.getJSONObject(i);
      String name = cat.getString("Name");
      String location = cat.getString("Location");
      String pattern = cat.getString("Pattern");
      String age = cat.getString("Age");
      String personality = cat.getString("Personality");
      
      cats[i] = new Cat(name, location, pattern, age, personality);
  }
}

void setCoordsForCats() {
   for (int i = 0; i < catData.size(); i++) {
     switch (cats[i].location) {
       case("Gamma Phi House"):
         cats[i].set_xPos(coords[0]);
         cats[i].set_yPos(coords[1]);
         break;
       case("Hughes-Trigg"):
         cats[i].set_xPos(coords[2]);
         cats[i].set_yPos(coords[3]);
         break;
      case("Simmons"):
         cats[i].set_xPos(coords[4]);
         cats[i].set_yPos(coords[5]);
         break;
      case("Maguire"):
         cats[i].set_xPos(coords[6]);
         cats[i].set_yPos(coords[7]);
         break;
      case("Meadows Museum"):
         cats[i].set_xPos(coords[8]);
         cats[i].set_yPos(coords[9]);
         break;
      case("Dedman Fitness"):
         cats[i].set_xPos(coords[10]);
         cats[i].set_yPos(coords[11]);
         break;
      case("Blanton Side"):
         cats[i].set_xPos(coords[12]);
         cats[i].set_yPos(coords[13]);
         break;
      case("Blanton Front"):
         cats[i].set_xPos(coords[14]);
         cats[i].set_yPos(coords[15]);
         break;  
      case("Dawson-Dyer Court"):
         cats[i].set_xPos(coords[16]);
         cats[i].set_yPos(coords[17]);
         break;  
      case("Fondren Science"):
         cats[i].set_xPos(coords[18]);
         cats[i].set_yPos(coords[19]);
         break;    
      case("Mary Hay"):
         cats[i].set_xPos(coords[20]);
         cats[i].set_yPos(coords[21]);
         break; 
      case("Carr Collins"):
         cats[i].set_xPos(coords[22]);
         cats[i].set_yPos(coords[23]);
         break; 
      case("Law School"):
         cats[i].set_xPos(coords[24]);
         cats[i].set_yPos(coords[25]);
         break;  
      case("Fondren Library West"):
         cats[i].set_xPos(coords[26]);
         cats[i].set_yPos(coords[26]);
         break;
      case("Fondren Library East"):
         cats[i].set_xPos(coords[28]);
         cats[i].set_yPos(coords[29]);
         break;           
     }
   }
}

void createButtons() {
  String pinkCat = "pinkButton1.png";
  catButton1 = loadImage(pinkCat);
  String greenCat = "greenButton1.png";
  catButton2 = loadImage(greenCat);
  catButtons = new String[]{pinkCat, greenCat};
}

//----------------------------------------------------------
void drawSymbol(float x, float y) {
  button = new GImageButton(this, x - 15, y - 15, catButtons);
}

//----------------------------------------------------------
void handleButtonEvents(GImageButton button, GEvent event) {
  for (int i = 0; i < cats.length; i++) {
    if (pmouseX <= cats[i].xPos + 15 && pmouseX >= cats[i].xPos - 15 && pmouseY <= cats[i].yPos + 15 && pmouseY >= cats[i].yPos - 15) {
      println(cats[i].location);
    }
  }
}

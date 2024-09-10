JSONArray flashcards;
int currentCard = 0;
boolean showAnswer = false;
PFont font;

void setup() {
  size(700, 500);
  font = createFont("DIN-Regular.ttf", 20);//loader fonten
  textFont(font);
  loadFlashcards();
}

void draw() {
  background(255);
  displayFlashcard();
}

void loadFlashcards() {
// Load JSON array fra filen
  flashcards = loadJSONArray("questions.json");
}

void displayFlashcard() {
fill(0);
textAlign(CENTER, CENTER);
textSize(24);
  JSONObject card = flashcards.getJSONObject(currentCard);
  String question = card.getString("question"); //få alle sprøgsmål
  String answer = card.getString("answer"); //få alle svar
if (showAnswer) {
  fill(0,140,0);
  text( answer, width / 2, height / 2);
} else {text( question, width / 2, height / 2);
}
  textSize(16);
  fill(0);
  text("Press left arrow for previous | Click to flip | Press right arrow for next", width / 2, height - 30);
}

void mousePressed() {
  showAnswer = !showAnswer; // skift mellem vis svar og skjul svar
}

void keyPressed() {
  if (keyCode == RIGHT && currentCard < flashcards.size()-1) {
    currentCard = (currentCard + 1); //Næste kort
    showAnswer = false; //skjuler svaret når right er trykket
   }
  if (keyCode == LEFT && currentCard > 0 ) { //Definerer at når man trykker på left og når currentCard er over nul så programmet ikke lukker ned
    currentCard = (currentCard - 1); //Sidste kort
    showAnswer = false; //Det samme som før men nu skjuler svaret når går tilbage 
  }
}

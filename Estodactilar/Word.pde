class Word {

  int wordX;
  int wordY;

  ArrayList<Letter> Letters = new ArrayList<Letter>();

  String[] lettersArray;

  Word (String input) {
    //println(input);
    for (int i=0; i<input.length(); i++) {
      Letters.add(new Letter(input.charAt(i)));
    }
  }

  Word (int x, int y, String input) {
    wordX=x;
    wordY=y;

    //println(input);
    for (int i=0; i<input.length(); i++) {

      //Letters.add(new Letter(wordX+charSpace+i*charSize, wordY, input.charAt(i)));
      Letters.add(new Letter(wordX+i*charSpace, wordY, input.charAt(i)));
    }
  }
  void display() {
    //ellipse(wordX, wordY, charSize, charSize);
    for (int i=0; i<Letters.size(); i++) {
      Letters.get(i).display();
    }
  }
} 

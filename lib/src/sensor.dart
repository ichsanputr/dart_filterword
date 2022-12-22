class SensorWord{

  String res = "";
  List<String> listWords = [];

  void setWords(List<String> words){
    listWords = words;
  }

  String toAsterisk(String word){
    
    int i = 1;

    while(i <= word.length){

      res += "*";

      i++;
    }

    return res;
  }

  String toSymbol(String word, String symbol){
    
    int i = 1;

    if(symbol.length > 1){
      throw ("Only one character can accepted");
    }

    while(i <= word.length){

      res += symbol;

      i++;
    }

    return res;
  }

  String findToAsterisk(String sentences, String word){

    String asterisk = "";

    word.runes.forEach((c) {
      asterisk += "*";
    });

    res = sentences.replaceAll(word, asterisk);

    return res;
  }

  String findToSymbol(String sentences, String word, String symbol){
    
    String symbols = "";

    word.runes.forEach((c) {
      symbol += symbol;
    });

    res = sentences.replaceAll(word, symbol);

    return res;
  }

  bool isSensoredWord(String word){

    if(listWords.contains(word)){
      return true;
    }

    return false;
  }
}
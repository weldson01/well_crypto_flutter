class CryptoController {
  CryptoController();

  String AbcToCesar(String Abc) {
    String aux = "";
    Abc = Abc.trim();
    for (int i = 0; i < Abc.length; i++) {
      if(CryptoTables.AbcTable.contains(Abc[i].toUpperCase())){
        if (Abc[i].toUpperCase() != CryptoTables.AbcTable.last) {
         aux += CryptoTables.AbcTable[
            (CryptoTables.AbcTable.indexOf(Abc[i].toUpperCase()) + 1)];
        } else {
          aux += CryptoTables.AbcTable[0];
        }
      }else{
        aux += Abc[i];
      }
      
    }
    return aux;
  }

  String AbcToMorse(String Abc) {
    String aux = "";
    Abc = Abc.trim();
    for (int i = 0; i < Abc.length; i++) {
      if(CryptoTables.Morse.containsKey(Abc[i].toUpperCase())){
        aux += CryptoTables.Morse[Abc[i].toUpperCase()].toString();
      }else{
        aux += Abc[i];
      }
    }
    return aux;
  }

  String AbcToWell(String Abc) {
    String aux = "";
    Abc = Abc.trim();
    for (int i = 0; i < Abc.length; i++) {
      if(CryptoTables.WellCrypto.containsKey(Abc[i].toUpperCase())){
        aux += CryptoTables.WellCrypto[Abc[i].toUpperCase()].toString();
      }else{
        aux += Abc[i];
      }
    }
    return aux;
  }
}

class CryptoTables {
  static List<String> AbcTable = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  static Map<String, String> Morse = {
    "A": ".-/",
    "B": "-.../",
    "C": "-.-./",
    "D": "-../",
    "E": "./",
    "F": "..-./",
    "G": "--./",
    "H": "..../",
    "I": "..",
    "J": ".---/",
    "K": "-.-/",
    "L": ".-../",
    "M": "--/",
    "N": "-./",
    "O": "---/",
    "P": ".--./",
    "Q": "--.-/",
    "R": ".-./",
    "S": ".../",
    "T": "-/",
    "U": "..-/",
    "V": "...-/",
    "W": ".--/",
    "X": "-..-/",
    "Y": "-.--/",
    "Z": "--../",
    " ": " "
  };
  static Map<String, String> WellCrypto = {
    "A": "😍",
    "B": "🏀",
    "C": "🏠",
    "D": "🎲",
    "E": "🐘",
    "F": "🦭",
    "G": "😽",
    "H": "🚁",
    "I": "🏝️",
    "J": "🍙",
    "K": "🥝",
    "L": "🍋",
    "M": "🛵",
    "N": "🚢",
    "O": "🥚",
    "P": "🐣",
    "Q": "🧀",
    "R": "🦊",
    "S": "🧂",
    "T": "🐢",
    "U": "🍇",
    "V": "🎻",
    "W": "🚾",
    "X": "🍵",
    "Y": "☯️",
    "Z": "💤",
    " ": "☄️"
  };
}

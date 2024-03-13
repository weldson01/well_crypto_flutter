class CryptoController {
  CryptoController();

  String AbcToCesar(String Abc) {
    String aux = "";
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
    for (int i = 0; i < Abc.length; i++) {
      aux += CryptoTables.Morse[Abc[i].toUpperCase()].toString();
      print(aux);
    }
    return aux;
  }

  String AbcToWell(String Abc) {
    String aux = "";
    for (int i = 0; i < Abc.length; i++) {
      aux += CryptoTables.WellCrypto[Abc[i].toUpperCase()].toString();
      print(aux);
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

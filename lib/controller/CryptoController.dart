

class CryptoController {
  CryptoController();

  String AbcToCesar(String Abc){
      String aux = "";
      for(int i = 0; i < Abc.length; i++){
        
        if(Abc[i].toUpperCase() != CryptoTables.AbcTable.last){
          aux += CryptoTables.AbcTable[(CryptoTables.AbcTable.indexOf(Abc[i].toUpperCase())+1)];
        }else{
          aux += CryptoTables.AbcTable[0];
        }
      }
      return aux;
  }

}

class CryptoTables {
  static List<String> AbcTable = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X","Y", "Z"];
  
}
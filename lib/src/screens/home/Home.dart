// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:well_crypto/controller/CryptoController.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String stringToCrypto = "";
  String cryptoType = "Cesar";
  String cryptedValue = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Well Crypto"),
          backgroundColor: Colors.amber,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Text("Digite o texto que você deseja criptografar", style: TextStyle(fontSize: 24),),
            TextField(
              decoration: InputDecoration(
                label: Text("Seu texto"),
                counter: Text(stringToCrypto.length.toString())
              ),
              onChanged: (value) {
                setState(() {
                  stringToCrypto = value;
                });
              },
            ),
            SizedBox(height: 20,),
            DropdownButton(
              value:  cryptoType,
              focusColor: Colors.amber,
              items: [
                DropdownMenuItem(child: Text("Cesar"), enabled: true, value: "Cesar",),
                DropdownMenuItem(child: Text("Morse"), enabled: true, value: "Morse"),
                DropdownMenuItem(child: Text("Well"), enabled: true, value: "Well")
              ]
              , 
            onChanged: (value){
              setState(() {
                cryptoType = value.toString();
              });
            }),
            SizedBox(height: 20,),
            Container(
              color: Colors.black,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(cryptedValue, style: TextStyle(fontSize: 24, color: Colors.green),),
              ),
            ),
            FloatingActionButton(
              heroTag: "ActionBtnHome",
              onPressed: () {
                setState(() {
                  CryptoController crypto = CryptoController();
                  switch(cryptoType){
                    case "Cesar":
                      cryptedValue = crypto.AbcToCesar(stringToCrypto);
                      break;
                    case "Morse":
                      cryptedValue = crypto.AbcToMorse(stringToCrypto);
                      break;
                    case "Well":
                      cryptedValue = crypto.AbcToWell(stringToCrypto);
                  }
                });
              },
              child: Text("Converter"),
            )

          ],
        ),
      ),
    );
  }
}
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
              
              onChanged: (value) {
                setState(() {
                  stringToCrypto = value;
                });
              },
            ),
            DropdownButton(
              value:  cryptoType,
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
            Container(
              color: Colors.red,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(cryptedValue),
              ),
            ),
            FloatingActionButton(
              heroTag: "ActionBtnHome",
              onPressed: () {
                setState(() {
                  CryptoController crypto = CryptoController();

                  cryptedValue = crypto.AbcToCesar(stringToCrypto);
                });
              },
            )

          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: PaginaInicial(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class PaginaInicial extends StatefulWidget {
  PaginaInicialState createState() {
    return PaginaInicialState();
  }
}

class PaginaInicialState extends State<PaginaInicial> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  TextEditingController comprimentoController = TextEditingController();
  String resp = "";

  volume() {
    double altura = double.parse(this.alturaController.text);
    double largura = double.parse(this.larguraController.text);
    double comprimento = double.parse(this.comprimentoController.text);

    double volume = altura * largura * comprimento;
    String volumeString = volume.toStringAsFixed(2);

    this.resp = 'O volume é igual a $volumeString';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Qual a altura do paralelepípedo: ',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: TextField(
              controller: larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => larguraController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Qual a largura do paralelepípedo: ',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 50),
            child: TextField(
              controller: comprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => comprimentoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Qual o comprimento do paralelepípedo: ',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(volume());
              setState(volume);
            },
            child: Text(
              'Enviar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

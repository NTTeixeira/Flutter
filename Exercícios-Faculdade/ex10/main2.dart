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
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";
  String result = "";

  imc() {
    double peso = double.parse(this.pesoController.text);
    double altura = double.parse(this.alturaController.text);
    double imc = peso / pow(altura, 2);
    if(imc < 16){
      result = "Magreza grave";
    }
    if(16 < imc && imc < 17){
      result = "Magreza moderada";
    }
    if(17 < imc && imc < 18.5){
      result = "Magreza leve";
    }
    if(18.5 < imc && imc < 25){
      result = "Saudável";
    }
    if(25 < imc && imc < 30){
      result = "Sobrepeso";
    }
    if(30 < imc && imc < 35){
      result = "Obesidade Grau I";
    }
    if(35 < imc && imc < 40){
      result = "Obesidade Grau II(severa)";
    }
    if(40 < imc){
      result = "Obesidade Grau III(mórbida)";
    }
    String imcString = imc.toStringAsFixed(2);
    this.resp = 'IMc: $imcString, e a classificação é $result';
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
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Qual o seu peso: ',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 50),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Qual a sua altura: ',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(imc());
              setState(imc);
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

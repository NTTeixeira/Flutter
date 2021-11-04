import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PaginaInicial(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class PaginaInicial extends StatefulWidget{
  @override
  PaginaInicialState createState(){
    return PaginaInicialState();
  }
}

class PaginaInicialState extends State<PaginaInicial> {
  int numeroVezes = 0;
  String parI = 'par';

  parImpar(){
    if(numeroVezes % 2 == 0){
      parI = 'par';
    }
    else{
      parI = 'impar';
    }
    return parI;
  }

  void cliqueBotao() {
    numeroVezes = numeroVezes + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de vezes em que p botão foi pressionado: $numeroVezes.\nEsse número é $parI"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(cliqueBotao);
          setState(parImpar);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

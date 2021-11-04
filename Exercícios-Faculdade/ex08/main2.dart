import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PaginalInicial(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class PaginalInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Página Inicial"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Olá mundo!!!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: Colors.red,
          alignment: Alignment.center,
          width: 200,
          height: 100,
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Exemplo de botão",
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

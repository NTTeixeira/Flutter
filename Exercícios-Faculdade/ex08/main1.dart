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
      body:
      Center(
        child: Text(
          "Olá mundo!!!",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Exemplo de botão",
        child: Icon(Icons.add),
      ),
    );
  }
}

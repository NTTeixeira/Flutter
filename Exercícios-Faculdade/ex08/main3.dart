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
        child: Container(
          height: 400,
          width: 400,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow[700],
            border: Border.all(
              width: 1,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
            ),
            padding: EdgeInsets.all(20),
            margin: const EdgeInsets.all(55),
            child: Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                    'https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Exemplo de botão",
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

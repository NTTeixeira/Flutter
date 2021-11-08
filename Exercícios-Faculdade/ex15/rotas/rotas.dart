import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  String mensagem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$mensagem',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Segunda Rota'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                ).then((resposta) {
                  setState(() {
                    mensagem = resposta;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String mensagem = '';

  somar() {
    int? num1 = int.tryParse(this.num1Controller.text);
    int? num2 = int.tryParse(this.num2Controller.text);
    int soma = num1! + num2!;
    this.mensagem = '$num1 + $num2 = $soma';
    return this.mensagem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
            child: TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num1Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o primeiro número:',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: TextField(
              controller: num2Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num2Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o segundo número:',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context, somar()
              );
            },
            child: Text('Voltar para a Primeira Rota'),
          ),
        ],
      ),
    );
  }
}

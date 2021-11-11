import 'package:flutter/material.dart';
import 'preco.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: PrimeiraRota()),
  );
}

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  final TextEditingController etanolController = TextEditingController();
  final TextEditingController gasolinaController = TextEditingController();

  String mensagem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Primeira Rota",
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: etanolController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => etanolController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Qual o valor do Etanol',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: gasolinaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => gasolinaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Qual o valor da gasolina',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Preco preco = Preco(
                double.parse(etanolController.text),
                double.parse(gasolinaController.text),
              );
              razao() {
                if (preco.razao() >= 0.7) {
                  mensagem = 'Abasteça com gasolina';
                } else {
                  mensagem = 'Abasteça com etanol';
                }
                return this.mensagem;
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SegundaRota(preco, razao())),
              ).then((resposta) {
                setState(() {
                  mensagem = resposta;
                });
              });
            },
            child: Text('Ir para a Segunda Rota'),
          ),
          Text(
            '$mensagem',
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Preco preco;

  String mensagem = '';

  SegundaRota(this.preco, this.mensagem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${preco.etanol.toStringAsFixed(2)} / ${preco.gasolina.toStringAsFixed(2)} = ${preco.razao().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$mensagem',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
                child: Text('Ir para a Primeira Rota'),
                onPressed: () {
                  Navigator.pop(context, '$mensagem');
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        Resultado.caminhoDaRota: (context) => Resultado(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  TextEditingController realController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Real'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: TextField(
              controller: realController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => realController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o valor em Real',
              ),
            ),
          ),
          Container(
            child: ElevatedButton.icon(
              label: const Text("Próximo"),
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SegundaRota.caminhoDaRota,
                  arguments:
                      ArgumentosDaRota(double.parse(realController.text), 0),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  TextEditingController dollarController = TextEditingController();
  static const caminhoDaRota = '/rotaGenerica';

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: TextField(
              controller: dollarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => dollarController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a cotação do Dólar',
              ),
            ),
          ),
          Container(
            child: ElevatedButton.icon(
              label: const Text("Próximo"),
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Resultado.caminhoDaRota,
                  arguments: ArgumentosDaRota(
                      double.parse(argumentos.real.toString()),
                      double.parse(dollarController.text)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Resultado extends StatelessWidget {
  static const caminhoDaRota = '/rota';

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
            alignment: Alignment.center,
            child: Text(
              'R\$${argumentos.real.toStringAsFixed(2)} = US\$${(argumentos.real / argumentos.dollar).toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArgumentosDaRota {
  double real;
  double dollar;

  ArgumentosDaRota(this.real, this.dollar);
}

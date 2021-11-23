import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  TextEditingController temperaturaCelsiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graus Celsius'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: TextField(
              controller: temperaturaCelsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => temperaturaCelsiusController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Temperatura em graus Celsius',
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Converter"),
            onPressed: () {
              Navigator.pushNamed(
                context,
                RotaGenerica.caminhoDaRota,
                arguments: ArgumentosDaRota('Graus Fahrenheit',
                    double.parse(temperaturaCelsiusController.text)),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';

  converter(double celsius) => celsius * 1.8 + 32;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
            alignment: Alignment.center,
            child: Text(
              'Graus Celsius: ${argumentos.celsius.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 24,
                color: Colors.green,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
            alignment: Alignment.center,
            child: Text(
              'Graus Fahrenheit: ${converter(double.parse(argumentos.celsius.toStringAsFixed(2)))}',
              style: TextStyle(
                fontSize: 24,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  double celsius;

  ArgumentosDaRota(this.titulo, this.celsius);
}

import 'package:flutter/material.dart';

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
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";

  somar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int soma = num01 + num02;
    this.resp = '$num01 + $num02 = $soma';
    return this.resp;
  }

  subtrair() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int sub = num01 - num02;
    this.resp = '$num01 - $num02 = $sub';
    return this.resp;
  }

  multiplicar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int mult = num01 * num02;
    this.resp = '$num01 x $num02 = $mult';
    return this.resp;
  }

  dividir() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double div = num01 / num02;
    this.resp = '$num01 / $num02 = $div';
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
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o primeiro número:',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 50),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o segundo número:',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(somar());
                    setState(somar);
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(subtrair());
                    setState(subtrair);
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(multiplicar());
                    setState(multiplicar);
                  },
                  child: Text(
                    'x',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(dividir());
                    setState(dividir);
                  },
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
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

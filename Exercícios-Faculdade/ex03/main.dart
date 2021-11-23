import 'package:flutter/material.dart';

void main() {
  String nome = "Nathan";

  runApp(
    Center(
      child: RichText(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: [
            TextSpan(
              text: '$nome!',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
                backgroundColor: Colors.green,
              ),
            ),
            TextSpan(
              text: '\nHoje é quinta-feira!',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.amber,
              ),
            ),
            TextSpan(
              text: '\nBom dia!',
            ),
            TextSpan(
              text: '\n\nHoje, você terá que escrever um aplicativo em Flutter. O aplicatico deve imprimir um texto na tela. O texto possui trechos com estilos diferentes.',
              style: TextStyle(
                fontSize: 18,
                backgroundColor: Colors.black,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: '\n\nBoa prática!',
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 18,
                backgroundColor: Colors.black,
              ),
            ),
            TextSpan(
              text: '\n=',
              style: TextStyle(
                fontSize: 18,
                backgroundColor: Colors.black,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'D',
              style: TextStyle(
                fontSize: 18,
                backgroundColor: Colors.black,
                color: Colors.red,
              ),
            ),
            TextSpan(
              text: 'H',
              style: TextStyle(
                fontSize: 18,
                backgroundColor: Colors.black,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
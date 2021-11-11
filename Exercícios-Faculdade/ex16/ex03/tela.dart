import 'package:flutter/material.dart';
import 'descricao.dart';

class Tela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pagina = '';
    String titulo = '';
    String corpo = '';
    return Descricao(pagina, titulo, corpo);
  }
}
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao < 30) {
      return 'Voce nao conhece o joaozinho';
    } else {
      return 'Voce conhece o Joaozinho, Parabens!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}

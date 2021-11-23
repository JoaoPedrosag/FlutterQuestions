import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
      width: double.infinity,
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          child: Text(texto),
          onPressed: quandoSelecionado,
        ),
      ),
    );
  }
}

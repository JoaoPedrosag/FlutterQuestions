import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é o game preferido ?',
      'respostas': ['LOL', 'CS', 'GodOfWar', 'Valorant'],
    },
    {
      'texto': 'Qual é a pessoa que ele mais ama?',
      'respostas': ['Elen', 'Mae', 'Lixa', 'Computador Pessoal'],
    },
    {
      'texto': 'Qual é a epoca que ele mais gosta?',
      'respostas': ['Natal', 'Pascoa', 'Aniversario', 'Ferias'],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext) {
    ///for (String textoResp
    //    in respostas.cast()) {
    //  widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Você conhece o João?'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quantoResponder: _responder)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é o game preferido ?',
      'respostas': [
        {'texto': 'LOL', 'pontuacao': 10},
        {'texto': 'CS', 'pontuacao': 0},
        {'texto': 'GodOfWar', 'pontuacao': 0},
        {'texto': 'Valorant', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual é a pessoa que ele mais ama?',
      'respostas': [
        {'texto': 'Elen', 'pontuacao': 10},
        {'texto': 'Juliana', 'pontuacao': 0},
        {'texto': 'Lixa', 'pontuacao': 0},
        {'texto': 'Computador Pessoal', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual é a epoca que ele mais gosta?',
      'respostas': [
        {'texto': 'Natal', 'pontuacao': 0},
        {'texto': 'Pascoa', 'pontuacao': 0},
        {'texto': 'Aniversario', 'pontuacao': 0},
        {'texto': 'Ferias', 'pontuacao': 10},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext) {
    ///for (String textoResp
    //    in respostas.cast()) {
    //  widgets.add(Resposta(textoResp, _responder));
    // }
///// parei na aula 65.......
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
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
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

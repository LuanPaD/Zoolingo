import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zoolingo/models/animal_info.dart';

class QuizScreen extends StatefulWidget {
  final AnimalInfo animal;
  const QuizScreen({super.key, required this.animal});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _perguntaAtual = 0;
  int _vidasRestantes = 3;
  bool _mostrandoAnimacaoAcerto = false;
  bool _mostrandoAnimacaoErro = false;

  void _responder(String respostaSelecionada) {
    final respostaCorreta = widget.animal.respostasCorretas[_perguntaAtual];

    if (respostaSelecionada == respostaCorreta) {
      setState(() {
        _mostrandoAnimacaoAcerto = true;
      });

      if (_perguntaAtual < widget.animal.perguntas.length - 1) {
        Future.delayed(const Duration(milliseconds: 1500), () {
          setState(() {
            _mostrandoAnimacaoAcerto = false;
            _perguntaAtual++;
          });
        });
      } else {
        setState(() {
          _mostrandoAnimacaoAcerto = false;
          _perguntaAtual++;
        });
      }
    } else {
      setState(() {
        _vidasRestantes--;
        _mostrandoAnimacaoErro = true;
      });

      Future.delayed(const Duration(milliseconds: 2200), () {
        setState(() {
          _mostrandoAnimacaoErro = false;
        });

        if (_vidasRestantes <= 0) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Game Over'),
                content: const Text('Você perdeu todas as vidas!'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: const Text('Voltar'),
                  ),
                ],
              );
            },
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_mostrandoAnimacaoAcerto) {
      return Scaffold(
        body: Center(
          child: Lottie.asset(
              'lib/assets/animation/corretoAnimacao.json', width: 200),
        ),
      );
    }

    if (_mostrandoAnimacaoErro) {
      return Scaffold(
        body: Center(
          child: Lottie.asset(
              'lib/assets/animation/coracaoPartido.json', width: 200),
        ),
      );
    }

    final bool quizFinalizado = _perguntaAtual >=
        widget.animal.perguntas.length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(
          'Quiz - ${widget.animal.nome}',
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: quizFinalizado
            ? Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'lib/assets/animation/corretoAnimacao.json',
                width: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                'Parabéns! Você completou o quiz!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context, true),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  'Voltar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Vidas restantes:',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                    (index) =>
                    Icon(
                      index < _vidasRestantes
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.pink,
                    ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.animal.perguntas[_perguntaAtual],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...widget.animal.respostas[_perguntaAtual].map((resposta) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _responder(resposta),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        color: Colors.green[700],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 20,
                      ),
                      child: Center(
                        child: Text(
                          resposta,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

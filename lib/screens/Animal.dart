import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:zoolingo/models/animal_info.dart';
import 'package:zoolingo/screens/quiz.dart';

class AnimalScreen extends StatefulWidget {
  final AnimalInfo animal;

  const AnimalScreen({super.key, required this.animal});

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  List<bool> _clicados = [false, false, false, false];
  int _botaoAberto = -1;
  double _progresso = 0.0;
  bool _quizConcluido = false;
  bool get _quizDisponivel => _clicados.every((clicado) => clicado);

  @override
  void initState() {
    super.initState();
    _carregarProgresso();
  }

  void _abrirBotao(int index) {
    setState(() {
      if (!_clicados[index]) {
        _clicados[index] = true;
        _progresso += 0.2;
        if (_progresso > 1.0) _progresso = 1.0;
        _salvarProgresso();
      }
      _botaoAberto = index;
    });
  }

  void _fecharBotao() {
    setState(() {
      _botaoAberto = -1;
    });
  }

  void _salvarProgresso() {
    final box = Hive.box('progresso_animais');
    box.put(widget.animal.nome, {
      'clicados': _clicados,
      'quizConcluido': _quizConcluido,
    });
  }

  void _carregarProgresso() {
    final box = Hive.box('progresso_animais');
    final dados = box.get(widget.animal.nome);

    if (dados != null) {
      setState(() {
        _clicados = List<bool>.from(dados['clicados']);
        _quizConcluido = dados['quizConcluido'];
        _progresso = (_clicados.where((c) => c).length * 0.2);
        if (_quizConcluido) _progresso += 0.2;
        if (_progresso > 1.0) _progresso = 1.0;
      });
    }
  }

  Widget _buildConteudoBotao() {
    switch (_botaoAberto) {
      case 0:
        return _buildTexto('Alimentação', widget.animal.alimentacao);
      case 1:
        return Column(
          children: [
            const Text('Habitat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Image.asset(widget.animal.habitatImage, height: 300),
            const SizedBox(height: 10),
            Text(widget.animal.habitat, textAlign: TextAlign.center),
          ],
        );
      case 2:
        return _buildTexto('Comportamento', widget.animal.comportamento);
      case 3:
        return _buildTexto('Curiosidades', widget.animal.curiosidades);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildTexto(String titulo, String conteudo) {
    return Column(
      children: [
        Text(titulo, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(conteudo, textAlign: TextAlign.center),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      bool tudoConcluido = _clicados.every((e) => e) && _quizConcluido;
                      Navigator.pop(context, tudoConcluido);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LinearProgressIndicator(
                              value: _progresso,
                              minHeight: 10,
                              backgroundColor: Colors.grey[300],
                              color: Colors.green,
                            ),
                            const SizedBox(height: 4),
                            Text('Aprendizado atual (${(_progresso * 100).toStringAsFixed(0)}%)', style: const TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(child: Image.asset(widget.animal.imagem, fit: BoxFit.contain)),
                const SizedBox(height: 10),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _quizConcluido
                            ? Colors.grey
                            : _quizDisponivel
                            ? Colors.green[700]
                            : Colors.green[300],
                        fixedSize: const Size(200, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _quizDisponivel && !_quizConcluido
                          ? () async {
                        final resultado = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => QuizScreen(animal: widget.animal)),
                        );
                        if (resultado == true) {
                          setState(() {
                            _quizConcluido = true;
                            _progresso += 0.2;
                            if (_progresso > 1.0) _progresso = 1.0;
                            _salvarProgresso();
                          });
                        }
                      }
                          : null,
                      child: Text(
                        _quizConcluido ? 'Quiz concluído' : 'Quiz',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    if (!_quizDisponivel)
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.lock, color: Colors.white),
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: _buildCircleButton(index),
                    );
                  }),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          if (_botaoAberto != -1)
            Positioned.fill(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildConteudoBotao(),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: _fecharBotao,
                      child: const Text('Concluir'),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCircleButton(int index) {
    final bool clicado = _clicados[index];
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: clicado ? Colors.green[700] : Colors.green[200],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(2, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: IconButton(
        onPressed: () => _abrirBotao(index),
        icon: Icon(_getIcon(index), color: Colors.white),
        iconSize: 28,
      ),
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.restaurant_menu;
      case 1:
        return Icons.park;
      case 2:
        return Icons.pets;
      case 3:
        return Icons.lightbulb;
      default:
        return Icons.help_outline;
    }
  }
}

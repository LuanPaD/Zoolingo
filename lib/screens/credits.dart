import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  final List<String> integrantes = const [
    'Luan Padilha Miranda',
    'Kaua Limao Nunes',
    'Bryan Joab Messias de Souza',
    'Felipe Gabriel Tagliabues',
    'Eduardo Marques Correa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créditos'),
        backgroundColor: Colors.green.shade900,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 6,
        shadowColor: Colors.black54,
      ),
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _sectionTitle('Disciplina'),
                const Text(
                  'Desenvolvimento de Software',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.3,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 36),

                _sectionTitle('Professor Responsável'),
                const Text(
                  'Prof. Dr. Elvio Gilberto da Silva',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 36),

                _sectionTitle('Integrantes e Colaboradores do Grupo'),
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  shadowColor: Colors.black26,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: integrantes
                          .map(
                            (nome) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            nome,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 48),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _logoSection(
                        title: 'Desenvolvimento:',
                        imageAsset: 'lib/assets/images/Ciencia_da_Computacao.jpg',
                        width: 380,
                        height: 180,
                      ),
                      const SizedBox(height: 24),
                      _logoSection(
                        title: 'Apoio:',
                        imageAsset: 'lib/assets/images/coordenadoria-de-extensao.jpg',
                        width: 380,
                        height: 180,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade900,
          fontFamily: 'Roboto',
          letterSpacing: 1.3,
          shadows: const [
            Shadow(
              color: Colors.black26,
              offset: Offset(0, 1),
              blurRadius: 2,
            )
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _logoSection({
    required String title,
    required String imageAsset,
    double width = 250,
    double height = 130,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black87,
            fontFamily: 'Roboto',
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }


}

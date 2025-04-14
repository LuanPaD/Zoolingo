import 'package:flutter/material.dart';
import 'package:zoolingo/main.dart';
import 'package:zoolingo/screens/Animal.dart';
import 'package:zoolingo/models/animal_info.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimalPathScreen(username: "User Teste"),
    );
  }
}

class AnimalPathScreen extends StatelessWidget {
  final String username;

  AnimalPathScreen({required this.username});

  final List<Map<String, dynamic>> animals = [
    {'name': 'Lhama', 'category': 'Mamíferos'},
    {'name': 'Lobo Guará', 'category': 'Mamíferos'},
    {'name': 'Onça Pintada', 'category': 'Mamíferos'},
    {'name': 'Macaco', 'category': 'Mamíferos'},
    {'name': 'Píton', 'category': 'Répteis'},
    {'name': 'Tartaruga', 'category': 'Répteis'},
    {'name': 'Jacaré do Papo Amarelo', 'category': 'Répteis'},
    {'name': 'Arara Azul', 'category': 'Aves'},
    {'name': 'Papagaio do Peito Roxo', 'category': 'Aves'},
    {'name': 'Avestruz', 'category': 'Aves'},
  ];

  int getUnlockedCount() => 1; // Lógica futura para progresso real

  @override
  Widget build(BuildContext context) {
    final progress = getUnlockedCount() / animals.length;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Olá, $username 👋',
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.grey[300],
                      color: Colors.green[400],
                      minHeight: 10,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Progresso: ${(progress * 100).toStringAsFixed(0)}%',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                ],
              ),
            ),

            // Caminho de animais
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: List.generate(animals.length, (index) {
                      final animal = animals[index];
                      final isLeft = index % 2 == 0;
                      final unlocked = index == 0;

                      final animalEncontrado = animais.firstWhere((animalClass) => animalClass.nome == animal['name']);

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40.0),
                        child: SizedBox(
                          width: 250,
                          child: Align(
                            alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
                            child: GestureDetector(
                              onTap: unlocked
                                  ? () {
                                print('Animal desbloqueado: ${animal['name']}');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AnimalScreen(
                                    animal : animalEncontrado,
                                  )),
                                );
                              }
                                  : () {
                                print('Animal bloqueado: ${animal['name']}');
                              },
                              child: AnimalNode(
                                name: animal['name'],
                                unlocked: unlocked,
                                category: animal['category'],
                              ),
                            ),
                          ),
                        ),
                      );

                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[600],
        currentIndex: 1,
        onTap: (index) {
          if(index == 1){
            print("Pagina de Descoberta clicada");
            // Navegar para a tela de descoberta
          } else if(index == 2){
            print("Pagina de Perfil clicada");
            // Navegar para a tela de perfil
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
            // Navegar para a tela inicial
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Descubra'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}

class AnimalNode extends StatelessWidget {
  final String name;
  final bool unlocked;
  final String category;

  const AnimalNode({
    required this.name,
    required this.unlocked,
    required this.category,
  });

  Color getColorByCategory(String category) {
    switch (category) {
      case 'Mamíferos':
        return Colors.orange;
      case 'Répteis':
        return Colors.teal;
      case 'Aves':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final circleColor = unlocked ? getColorByCategory(category) : Colors.grey[300];
    final iconColor = unlocked ? Colors.white : Colors.grey[500];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor,
            boxShadow: unlocked
                ? [BoxShadow(color: Colors.grey.shade400, blurRadius: 8, offset: Offset(0, 4))]
                : [],
          ),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: circleColor,
            child: Icon(Icons.pets, size: 35, color: iconColor),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: unlocked ? Colors.black87 : Colors.grey[600],
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}


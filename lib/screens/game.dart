import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zoolingo/main.dart';
import 'package:zoolingo/screens/Animal.dart';
import 'package:zoolingo/models/animal_info.dart';
import 'package:zoolingo/screens/profile.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<int> unlockedAnimals = [0];
  String username = "";

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final savedList = prefs.getStringList('unlockedAnimals');
    final savedName = prefs.getString('username') ?? "";

    setState(() {
      unlockedAnimals = savedList?.map(int.parse).toList() ?? [0];
      username = savedName;
    });
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      'unlockedAnimals',
      unlockedAnimals.map((e) => e.toString()).toList(),
    );
  }

  void handleAnimalCompleted(int index) {
    if (!unlockedAnimals.contains(index + 1) && index + 1 < animals.length) {
      setState(() {
        unlockedAnimals.add(index + 1);
      });
      _saveProgress();
    }
  }

  final List<Map<String, dynamic>> animals = [
    {'name': 'Lhama', 'category': 'Mamíferos'},
    {'name': 'Lobo Guará', 'category': 'Mamíferos'},
    {'name': 'Onça Pintada', 'category': 'Mamíferos'},
    {'name': 'Macaco', 'category': 'Mamíferos'},
    {'name': 'Píton', 'category': 'Répteis'},
    {'name': 'Tartaruga', 'category': 'Répteis'},
    {'name': 'Jacaré de Papo Amarelo', 'category': 'Répteis'},
    {'name': 'Arara Azul', 'category': 'Aves'},
    {'name': 'Papagaio de Peito Roxo', 'category': 'Aves'},
    {'name': 'Avestruz', 'category': 'Aves'},
  ];

  @override
  Widget build(BuildContext context) {
    return AnimalPathScreen(
      username: username,
      unlockedAnimals: unlockedAnimals,
      animals: animals,
      onAnimalCompleted: handleAnimalCompleted,
    );
  }

}

class AnimalPathScreen extends StatelessWidget {
  final String username;
  final List<int> unlockedAnimals;
  final Function(int) onAnimalCompleted;
  final List<Map<String, dynamic>> animals;

  const AnimalPathScreen({
    required this.username,
    required this.unlockedAnimals,
    required this.onAnimalCompleted,
    required this.animals,
  });

  @override
  Widget build(BuildContext context) {
    final progress = unlockedAnimals.length / animals.length;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
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

            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: List.generate(animals.length, (index) {
                      final animal = animals[index];
                      final isLeft = index % 2 == 0;
                      final unlocked = unlockedAnimals.contains(index);
                      final completed = unlockedAnimals.contains(index + 1);

                      final animalEncontrado = animais.firstWhere((animalClass) => animalClass.nome == animal['name']);

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40.0),
                        child: SizedBox(
                          width: 250,
                          child: Align(
                            alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
                            child: GestureDetector(
                              onTap: unlocked
                                  ? () async {
                                print('Animal desbloqueado: ${animal['name']}');

                                final bool resultado = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AnimalScreen(
                                      animal: animalEncontrado,
                                    ),
                                  ),
                                );

                                if (resultado) {
                                  onAnimalCompleted(index);
                                  print('Você completou todas as atividades para o ${animal['name']}!');
                                } else {
                                  print('Ainda não completou todas as atividades para o ${animal['name']}');
                                }
                              }
                                  : () {
                                print('Animal bloqueado: ${animal['name']}');
                              },
                              child: AnimalNode(
                                name: animal['name'],
                                unlocked: unlocked,
                                completed: completed,
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[600],
        currentIndex: 1,
        onTap: (index) {
          if (index == 1) {
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
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
  final bool completed;
  final String category;

  const AnimalNode({
    required this.name,
    required this.unlocked,
    required this.completed,
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
    final circleColor = completed
        ? Colors.green[400]!
        : (unlocked ? getColorByCategory(category) : Colors.grey[300]!);
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

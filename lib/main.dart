import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // sem getApplicationDocumentsDirectory

  await Hive.openBox('progresso_animais');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  BuildContext? get context => null;

  void _onLocationTap() {
    print('Localização clicada');
  }

  void _onUserTap() {
    print('Perfil do usuário clicado');
  }

  void _onViewMap(BuildContext context) {
    print('Ver mapa clicado');
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
              //Todo: Trocar por img local, colocar mapa do figma
              'https://live.staticflickr.com/7192/6865549696_ab8b0f6e4b_h.jpg',
                width: 400,
                height: 300,
                fit: BoxFit.cover,
              ),
              /*Todo: Imagem local
              Image.asset(
                'assets/images/map_image.jpg', // Caminho da imagem local dentro da pasta assets
                width: 400,
                height: 300,
                fit: BoxFit.cover,
              )
              */
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Fechar'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }


  void _onDiscover(BuildContext context) {
    print('Descubra clicado');

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GameScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _onLocationTap,
                    child: Row(
                      children: [
                        const Icon(Icons.location_pin, color: Colors.red),
                        const SizedBox(width: 8),
                        const Text('Bauru, Brasil', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: _onUserTap,
                    child: const CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.pets, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft, // Alinha à esquerda
              child: const Text(
                'Zoolingo',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    //Todo: Trocar por img local, colocar imagem do figma
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeGiuqlyBPryppG-TtxwabwcH5sUlIkCakOw&s',
                    width: 350,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed:() => _onViewMap(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Ver mapa', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _onDiscover(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Descubra', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[600],
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            print('Início clicado');
          } else if (index == 1) {
            print('Descubra clicado');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameScreen()),
            );
          } else if (index == 2) {
            print('Perfil clicado');
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

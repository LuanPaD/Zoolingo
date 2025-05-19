import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/game.dart';
import 'screens/profile.dart';
import 'screens/credits.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

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

  void _onCreditsTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreditsScreen()),
    );
  }

  void _onViewMap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FullScreenMapScreen(),
      ),
    );
  }

  void _onDiscover(BuildContext context) {
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
                    onTap: () => _onCreditsTap(context),
                    child: const CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.info_outline, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
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
                  child:
                    Image.asset(
                      'lib/assets/images/logozoobauru.png',
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
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

class FullScreenMapScreen extends StatelessWidget {
  const FullScreenMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa do Zoológico'),
        backgroundColor: Colors.green,
      ),
      body: SizedBox.expand(
        child: InteractiveViewer(
          panEnabled: true,
          boundaryMargin: const EdgeInsets.all(20),
          minScale: 1,
          maxScale: 4,
          child: Image.asset(
            'lib/assets/images/mapa.jpg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}


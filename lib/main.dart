import 'package:flutter/material.dart';

void main() {
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

  void _onLocationTap() {
    print('Localização clicada');
  }

  void _onUserTap() {
    print('Perfil do usuário clicado');
  }

  void _onViewMap() {
    print('Ver mapa clicado');
  }

  void _onDiscover() {
    print('Descubra clicado');
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
            const Text('Zoolingo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Image.network(
                  //Todo: Trocar por img local
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeGiuqlyBPryppG-TtxwabwcH5sUlIkCakOw&s',
                  width: 300,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _onViewMap,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Ver mapa', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _onDiscover,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Descubra', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 40),
            BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.green), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.pets), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.info), label: ''),
              ],
            )
          ],
        ),
      ),
    );
  }
}

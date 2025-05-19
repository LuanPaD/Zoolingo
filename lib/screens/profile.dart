import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zoolingo/main.dart';
import 'package:zoolingo/screens/game.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String username = "";
  bool isEditing = false;
  final TextEditingController _controller = TextEditingController();
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('username') ?? "Insira seu nome";
    final unlocked = prefs.getStringList('unlockedAnimals')?.length ?? 1;
    setState(() {
      username = name;
      _controller.text = name;
      progress = unlocked / 10;
    });
  }

  Future<void> _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    final newName = _controller.text.trim();
    if (newName.isEmpty) return;

    await prefs.setString('username', newName);
    setState(() {
      username = newName;
      isEditing = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Nome atualizado!")),
    );
  }

  Future<void> _resetProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('unlockedAnimals', ['0']);
    setState(() {
      progress = 0.1;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Progresso reiniciado!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.green[400],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green[300],
                child: const Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 20),

              /// NOME
              isEditing
                  ? Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        labelText: 'Editar nome',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: _saveName,
                    icon: const Icon(Icons.check_circle, color: Colors.green),
                    tooltip: "Salvar",
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _controller.text = username;
                        isEditing = false;
                      });
                    },
                    icon: const Icon(Icons.cancel, color: Colors.red),
                    tooltip: "Cancelar",
                  ),
                ],
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    username,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => setState(() => isEditing = true),
                    icon: const Icon(Icons.edit, size: 20),
                    tooltip: "Editar nome",
                  ),
                ],
              ),

              const SizedBox(height: 30),

              /// PROGRESSO
              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                color: Colors.green[400],
                minHeight: 10,
                borderRadius: BorderRadius.circular(8),
              ),
              const SizedBox(height: 10),
              Text("Progresso: ${(progress * 100).toStringAsFixed(0)}%"),

              const Spacer(),

              /// RESET
              ElevatedButton.icon(
                onPressed: _resetProgress,
                icon: const Icon(Icons.restart_alt),
                label: const Text("Redefinir Progresso"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[600],
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameScreen()),
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

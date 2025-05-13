import 'package:flutter/material.dart';
import '1.dart';
import '2.dart';
import '3.dart';
import '4.dart';
import '5.dart';
import '6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botones Navegación',
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void _navigate(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      {'title': 'Ir a 1.dart', 'screen': const Screen1()},
      {'title': 'Ir a 2.dart', 'screen': const Screen2()},
      {'title': 'Ir a 3.dart', 'screen': const Screen3()},
      {'title': 'Ir a 4.dart', 'screen': const Screen4()},
      {'title': 'Ir a 5.dart', 'screen': const Screen5()},
      {'title': 'Ir a 6.dart', 'screen': const Screen6()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla Principal')),
      body: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: ElevatedButton(
              onPressed: () =>
                  _navigate(context, screens[index]['screen'] as Widget),
              child: Text(screens[index]['title'] as String),
            ),
          );
        },
      ),
    );
  }
}

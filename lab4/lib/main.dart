import 'package:flutter/material.dart';
import 'task1.dart';
import 'task3.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab 4')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Task 1: Checkbox & Switch'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Task1()),
            ),
          ),
          ListTile(
            title: const Text('Task 3: FAB & Buttons'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Task3()),
            ),
          ),
        ],
      ),
    );
  }
}
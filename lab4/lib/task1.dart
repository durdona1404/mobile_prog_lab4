import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  bool dark = false;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: dark
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true),
      child: Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        body: Column(
          children: [
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: dark,
              onChanged: (v) => setState(() => dark = v),
            ),
            CheckboxListTile(
              title: const Text('Agree to Terms'),
              value: agree,
              onChanged: (v) => setState(() => agree = v ?? false),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: agree
                  ? () => ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Continued!')),
                      )
                  : null,
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
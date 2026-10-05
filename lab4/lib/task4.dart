import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  bool loading = false;

  Future<void> _start() async {
    setState(() => loading = true);
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    setState(() => loading = false);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Operation completed'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Undone')),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Indicators & Feedback')),
      body: Center(
        child: loading
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: _start,
                child: const Text('Start'),
              ),
      ),
    );
  }
}
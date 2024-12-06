import 'package:flutter/material.dart';

class AddPromiseScreen extends StatelessWidget {
  const AddPromiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Promise')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Promise Description'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // For now, just go back when adding a promise (hardcoded)
                Navigator.pop(context);
              },
              child: const Text('Add Promise'),
            ),
          ],
        ),
      ),
    );
  }
}

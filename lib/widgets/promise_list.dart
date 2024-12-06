import 'package:flutter/material.dart';

class PromiseList extends StatelessWidget {
  const PromiseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ListTile(
            title: Text('Exercise'),
            subtitle: Text('Promise made on: 05/11/2024'),
          ),
          ListTile(
            title: Text('No Junk Food'),
            subtitle: Text('Promise made on: 10/11/2024'),
          ),
        ],
      ),
    );
  }
}

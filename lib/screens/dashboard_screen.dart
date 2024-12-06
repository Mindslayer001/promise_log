import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'add_promise_screen.dart';
import 'package:promise_log/widgets/promise_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Column(
        children: [
          // Calendar/Heatmap
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            eventLoader: (day) {
              // Return hardcoded promises for each day
              if (day.day == 5) {
                return ['Exercise'];
              } else if (day.day == 10) {
                return ['No Junk Food'];
              }
              return [];
            },
          ),
          const SizedBox(height: 20),
          // List of Promises (this will be its own widget)
          const PromiseList(),
          // Button to add new promise
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddPromiseScreen()),
              );
            },
            child: const Text('Add New Promise'),
          ),
        ],
      ),
    );
  }
}

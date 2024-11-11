import 'package:flutter/material.dart';
import '../models/module.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Module> modules = [
      Module(
        title: 'Introduction to Anti-Doping',
        description: 'Learn the basics of anti-doping regulations',
        progress: 1.0,
        isCompleted: true,
      ),
      Module(
        title: 'Prohibited Substances',
        description: 'Understanding banned substances in sports',
        progress: 0.45,
        isCompleted: false,
      ),
      Module(
        title: 'Testing Procedures',
        description: 'What to expect during doping tests',
        progress: 0.0,
        isCompleted: false,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Modules'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: modules.length,
        itemBuilder: (context, index) {
          final module = modules[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    module.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(module.description),
                  trailing: module.isCompleted
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : null,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: LinearProgressIndicator(
                    value: module.progress,
                    backgroundColor: Colors.grey[200],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      module.isCompleted ? 'Review' : 'Continue',
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
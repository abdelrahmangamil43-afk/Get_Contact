import 'package:flutter/material.dart';

class CardPerson extends StatelessWidget {
  const CardPerson({super.key, required this.subtitle, required this.title});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        trailing: const Icon(Icons.person, size: 30, color: Colors.blue),
      ),
    );
  }
}

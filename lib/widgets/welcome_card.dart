import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.lightBlueAccent,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          "🌎 Willkommen zu deinen Reiseinspirationen",
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
} 
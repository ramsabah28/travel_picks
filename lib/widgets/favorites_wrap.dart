import 'package:flutter/material.dart';

class FavoritesWrap extends StatelessWidget {
  final List<String> favorites;
  const FavoritesWrap({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: favorites.map((name) => Chip(label: Text(name))).toList(),
    );
  }
} 
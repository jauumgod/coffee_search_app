import 'package:flutter/material.dart';

import '../widgets/widgets_favorites.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final List<int> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(8),
      children: const [
        FavoriteWidget(nomeItem: 'Cappucino', qntItem: 2, isClick: true),
        FavoriteWidget(nomeItem: 'Café', qntItem: 3, isClick: false),
        FavoriteWidget(nomeItem: 'Sorvete', qntItem: 1, isClick: true),
        FavoriteWidget(nomeItem: 'Sorvete', qntItem: 2, isClick: false),
      ],
    ));
  }
}

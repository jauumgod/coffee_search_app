import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoffeType extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeType({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white,
            )),
      ),
    );
  }
}

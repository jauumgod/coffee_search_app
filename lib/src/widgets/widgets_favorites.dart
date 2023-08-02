import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  final String nomeItem;
  final double qntItem;
  final bool isClick;
  const FavoriteWidget({
    super.key,
    required this.nomeItem,
    required this.qntItem,
    required this.isClick,
  });

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.nomeItem,
              style: const TextStyle(color: Colors.orange),
            ),
            Text('R\$${widget.qntItem}',
                style: const TextStyle(color: Colors.black)),
            Icon(
              Icons.favorite,
              color: widget.isClick == true ? Colors.red : Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

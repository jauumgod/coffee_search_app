import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CofeeTile extends StatelessWidget {
  String image, nameItem, descricao;
  double valor;
  CofeeTile({
    super.key,
    required this.image,
    required this.nameItem,
    required this.descricao,
    required this.valor,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //coffe image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image),
            ),
            //coffe name
            Text(
              nameItem,
              style: const TextStyle(fontSize: 22),
            ),
            Text(descricao, style: TextStyle(color: Colors.grey[600])),
            //purchase
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('R\$ $valor'),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                      ),
                    child: const Icon(Icons.add)),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationWidget extends StatefulWidget {
  String name, itemAdd;
  NotificationWidget({
    super.key,
    required this.name,
    required this.itemAdd,
  });

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 102,
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(widget.itemAdd)
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

import 'package:app_coffe_purchase/src/texts/lib_texts.dart';
import 'package:app_coffe_purchase/src/widgets/widget_notification.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    String name = 'joao.marinho';
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Notificações')),
      ),
      body: ListView(
        children: [
          NotificationWidget(name: name, itemAdd: AddItemsValue.cappucinoADD),
          NotificationWidget(name: name, itemAdd: AddItemsValue.coffeeAdd),
          NotificationWidget(name: name, itemAdd: AddItemsValue.sorveteAdd),
          NotificationWidget(name: name, itemAdd: AddItemsValue.sorveteAdd),
          NotificationWidget(name: name, itemAdd: AddItemsValue.coffeeAdd),
          NotificationWidget(name: name, itemAdd: AddItemsValue.sorveteAdd),
          NotificationWidget(name: name, itemAdd: AddItemsValue.sorveteAdd),
        ],
      ),
    );
  }
}

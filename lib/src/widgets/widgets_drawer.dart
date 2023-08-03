import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    String usuario = 'joao.marinho';
    return Drawer(
      backgroundColor: Colors.deepPurple[500],
      child: Column(children: [
        //header
        const DrawerHeader(
            child: Text('Configurações',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold))),
        //items
        Text('Usuario: $usuario', style: const TextStyle(color: Colors.white)),
        const SizedBox(height: 10),

        //botom quit
      ]),
    );
  }
}

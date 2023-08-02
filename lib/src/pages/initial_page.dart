import 'package:app_coffe_purchase/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 120,
              child: Image.asset('lib/src/images/coffe_logo.png'),
            ),
            SizedBox(
              child: Column(
                children: [
                  const Text('Brew Day',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('How do you like your coffee?',
                      style: TextStyle(color: Colors.brown[300], fontSize: 12))
                ],
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Enter Shop',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

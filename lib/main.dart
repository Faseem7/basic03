import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 36, 8, 73),
      title: const Center(
        child: Text(
          'Ask me anything',
          style: TextStyle(color: Colors.amber),
        ),
      ),
    ),
    body: const Askmeanything(),
  )));
}

class Askmeanything extends StatefulWidget {
  const Askmeanything({super.key});

  @override
  State<Askmeanything> createState() => _AskmeanythingState();
}

class _AskmeanythingState extends State<Askmeanything> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Image.asset('images/ball1.png'),
          )
        ],
      ),
    );
  }
}

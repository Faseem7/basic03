import 'package:flutter/material.dart';
import 'dart:math';

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

int imageno = 1;

class _AskmeanythingState extends State<Askmeanything> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$imageno.png'),
              onPressed: () {
                setState(() {
                  imageno = Random().nextInt(5) + 1;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

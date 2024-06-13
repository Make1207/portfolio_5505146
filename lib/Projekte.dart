import 'package:flutter/material.dart';

class Projekte extends StatelessWidget {
  const Projekte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projekte'),
        backgroundColor: const Color.fromARGB(255, 128, 186, 36),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text('Work in Progress...'),
      ),
    );
  }
}

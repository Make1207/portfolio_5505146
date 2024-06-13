import 'package:flutter/material.dart';

class Kontakt extends StatelessWidget {
  const Kontakt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontakt"),
        backgroundColor: const Color.fromARGB(255, 128, 186, 36),
      ),
      body: const Center(
        child: Text(
          "Kontakt Information",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

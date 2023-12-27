import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
        backgroundColor: Colors.amber[200],
        centerTitle: true,
      ),
      drawer: const Drawer(),
    );
  }
}
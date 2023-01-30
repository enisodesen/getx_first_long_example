import 'package:flutter/material.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Graph'),
      ),
      body: const Center(
        child: Text('Graph Screen'),
      ),
    );
  }
}

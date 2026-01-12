import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Latihan Fundamental'),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: Center(child: Text('Belajar Fundamental Flutter')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

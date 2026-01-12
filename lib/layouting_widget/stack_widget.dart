import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Latihan Stack Widget'),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 60, width: 60, color: Colors.blue),
          Container(height: 40, width: 60, color: Colors.yellow),
        ],
      ),
    );
  }
}

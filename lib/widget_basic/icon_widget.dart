import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Belajar Flutter Icon"),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: Center(child: Icon(Icons.share, size: 100, color: Colors.blue)),
    );
  }
}
